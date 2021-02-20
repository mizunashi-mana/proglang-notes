# build settings

RM ?= rm -rf

LATEXMK ?= latexmk
LATEXPAND ?= latexpand
LATEXDIFF ?= latexdiff
EXTRACTBB ?= extractbb

PIPENV ?= pipenv

LATEXMAKE := $(PIPENV) run $(LATEXMK)

# source files

TARGET ?= main.pdf

MAIN_SOURCE := $(TARGET:.pdf=.tex)

MAIN_SOURCE_BACKUP := $(MAIN_SOURCE:.tex=.backup.tex)
DIFF_TARGET := $(TARGET:.pdf=.diff.pdf)
MAIN_DIFF_SOURCE := $(DIFF_TARGET:.pdf=.tex)

# main tasks

.SUFFIXES: .tex .dvi .pdf

.PHONY: all
all: .installed-stamp build

.PHONY: build extractbb backup diff
build: extractbb
	$(LATEXMAKE) -pdfdvi $(MAIN_SOURCE)

.installed-stamp: Pipfile Pipfile.lock tlmgr_requirement.bash
	$(PIPENV) install
	./tlmgr_requirement.bash || echo "run ./tlmgr_requirement.bash manually"
	@touch $@

extractbb:
	$(EXTRACTBB) asset/*.pdf

backup:
	$(LATEXPAND) --makeatletter $(MAIN_SOURCE) > $(MAIN_SOURCE_BACKUP)

diff:
	$(LATEXPAND) --makeatletter $(MAIN_SOURCE) > $(MAIN_SOURCE:.tex=.expand.tex)
	$(LATEXDIFF) -e utf8 -t CFONT $(MAIN_SOURCE_BACKUP) $(MAIN_SOURCE:.tex=.expand.tex) > $(MAIN_DIFF_SOURCE)
	$(RM) $(MAIN_SOURCE:.tex=.expand.tex)
	$(LATEXMAKE) -pdfdvi $(DIFF_TARGET)

# tasks
.tex.pdf:
	$(LATEXMAKE) -pdfdvi $<

.PHONY: watch watch-without-prev
watch:
	$(LATEXMAKE) -pdfdvi -pvc $(MAIN_SOURCE)

watch-without-prev:
	$(LATEXMAKE) -pdfdvi -pvc -view=none $(MAIN_SOURCE)

.PHONY: clean lessclean remove

clean: lessclean
	find . -name '*.snm' -delete
	find . -name '*.fls' -delete
	find . -name '*.*pk' -delete
	find . -name '*.tfm' -delete
	find . -name '*.tmp' -delete

lessclean:
	latexmk -c -bibtex
	find . -name '*.aux' -delete
	find . -name '*.synctex.gz*' -delete
	find . -name '*.dvi' -delete
	find . -name '*.nav' -delete
	find . -name '*.vrb' -delete

remove: clean
	$(RM) $(TARGET)
