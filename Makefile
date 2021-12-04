# build settings

RM ?= rm -rf
FIND ?= find

LATEXMK ?= latexmk
LATEXPAND ?= latexpand
LATEXDIFF ?= latexdiff
EXTRACTBB ?= extractbb

POETRY ?= poetry

LATEXMAKE := $(POETRY) run $(LATEXMK)

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

.installed-stamp: pyproject.toml poetry.lock tlmgr_requirement.bash
	$(POETRY) install
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
	$(FIND) . -name '*.snm' -delete
	$(FIND) . -name '*.fls' -delete
	$(FIND) . -name '*.*pk' -delete
	$(FIND) . -name '*.tfm' -delete
	$(FIND) . -name '*.tmp' -delete

lessclean:
	$(LATEXMAKE) -c -bibtex
	$(FIND) . -name '*.aux' -delete
	$(FIND) . -name '*.synctex.gz*' -delete
	$(FIND) . -name '*.dvi' -delete
	$(FIND) . -name '*.nav' -delete
	$(FIND) . -name '*.vrb' -delete

remove: clean
	$(RM) $(TARGET)
