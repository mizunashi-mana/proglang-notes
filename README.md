# Notes of Programming Languages

## Artifacts

https://mizunashi-mana.github.io/proglang-notes/main.pdf

## Installation

```bash
make
```

or using `docker-compose`

### Dependencies

* Pipenv
* Tlmgr
* pLaTeX
* LatexMk
* findutils (for clean task)
* git supports (optional: See https://git-scm.com/)
* editorconfig supports (optional: See http://editorconfig.org)

## Interests

### Modules and Phase Distinction

* Shan, C. (1998). Higher-order modules in System Fω and Haskell. Unpublished Manuscript, Available from the Author’s Website. Retrieved from http://homes.sice.indiana.edu/ccshan/xlate/xlate.pdf
* Leroy, X. (2000). A modular module system. Journal of Functional Programming, 10(3), 269–303. https://doi.org/10.1017/S0956796800003683
* Shields, M., & Jones, S. P. (2001). First-Class Modules for Haskell. Ninth International Conference on Foundations of Object-Oriented Languages, 1–20. https://doi.org/10.1.1.72.7479
* Dreyer, D., Crary, K., & Harper, R. (2003). A type system for higher-order modules. ACM SIGPLAN Notices, 38(1), 236–249. https://doi.org/10.1145/640128.604151
* Dreyer, D. (2005). Understanding and Evolving the ML Module System (Carnegie Mellon University). Retrieved from https://people.mpi-sws.org/~dreyer/thesis/main.pdf
* Dreyer, D. (2007). A type system for recursive modules. Proceedings of the 2007 ACM SIGPLAN International Conference on Functional Programming - ICFP ’07, 289. https://doi.org/10.1145/1291151.1291196
* Rossberg, A., Russo, C., & Dreyer, D. (2014). F-ing modules. Journal of Functional Programming, 24(5), 529–607. https://doi.org/10.1017/S0956796814000264
* Crary, K. (2017). Modules, abstraction, and parametric polymorphism. Proceedings of the 44th ACM SIGPLAN Symposium on Principles of Programming Languages, 100–113. https://doi.org/10.1145/3009837.3009892

### Control Operators

* Felleisen, M., & Friedman, D. P. (1986). Control Operators, the SECD-Machine, and the λ-Calculus. Retrieved from https://help.sice.indiana.edu/techreports/TRNNN.cgi?trnum=TR197
* Curien, P.-L., & Herbelin, H. (2000). The duality of computation. ACM SIGPLAN Notices, 35(9), 233–243. https://doi.org/10.1145/357766.351262
* Selinger, P. (2001). Control categories and duality: on the categorical semantics of the lambda-mu calculus. Mathematical Structures in Computer Science, 11(2), 207--260. https://doi.org/10.1017/S096012950000311X
* Levy, P. B. (2001). Call-By-Push-Value (Queen Mary and Westfield College, University of London). Retrieved from https://www.cs.bham.ac.uk/~pbl/papers/thesisqmwphd.pdf
* Benton, N., Hughes, J., & Moggi, E. (2002). Monads and Effects. Applied Semantics, 2395, 923–952. https://doi.org/10.1007/3-540-45699-6_2
* Wadler, P. (2003). Call-by-value is dual to call-by-name. ACM SIGPLAN Notices, 38(9), 189–201. https://doi.org/10.1145/944746.944723
* Rocheteau, J. (2005). λμ-Calculus and Duality: Call-by-Name and Call-by-Value. In Lecture Notes in Computer Science (Vol. 3467, pp. 204–218). https://doi.org/10.1007/978-3-540-32033-3_16
* Downen, P. (2017). Sequent Calculus: A Logic and a Language for Computation and Duality (University of Oregon). Retrieved from https://ix.cs.uoregon.edu/~pdownen/publications/downen_phd.pdf
* Maurer, L., Downen, P., Ariola, Z. M., & Peyton Jones, S. (2017). Compiling without continuations. ACM SIGPLAN Notices, 52(6), 482–494. https://doi.org/10.1145/3140587.3062380
* Downen, P., & Ariola, Z. M. (2020). Compiling With Classical Connectives. Logical Methods in Computer Science, 16(3), 1–13. https://doi.org/10.23638/LMCS-16(3:13)2020

### Coherent Implicit Parameter

* Peyton Jones, S., Jones, M., & Meijer, E. (1997). Type classes: an exploration of the design space. Haskell Workshop. Retrieved from https://www.microsoft.com/en-us/research/publication/type-classes-an-exploration-of-the-design-space/
* Bottu, G., Karachalias, G., Schrijvers, T., Oliveira, B. C. d. S., & Wadler, P. (2017). Quantified class constraints. Proceedings of the 10th ACM SIGPLAN International Symposium on Haskell - Haskell 2017, 148–161. https://doi.org/10.1145/3122955.3122967
* Winant, T., & Devriese, D. (2018). Coherent explicit dictionary application for Haskell. Haskell 2018 - Proceedings of the 11th ACM SIGPLAN International Symposium on Haskell, Co-Located with ICFP 2018, 81–93. https://doi.org/10.1145/3242744.3242752
* Schrijvers, T., Oliveira, B. C. d. S., Wadler, P., & Marntirosian, K. (2019). COCHIS: Stable and coherent implicits. Journal of Functional Programming, 29, e3. https://doi.org/10.1017/S0956796818000242

### Polymorphic Record Type

### Type Checking and Inference

* Heeren, B., Hage, J., & Swierstra, D. (2002). Generalizing Hindley-Milner Type Inference Algorithms. Retrieved from http://www.cs.uu.nl/research/techreps/repo/CS-2002/2002-031.pdf
* Eekelen, V., & Leer, V. (2004). The Essence of ML Type Inference. In Advanced Topics in Types and Programming Languages. https://doi.org/10.7551/mitpress/1104.003.0016
* Vytiniotis, D., Peyton Jones, S., Schrijvers, T., & Sulzmann, M. (2011). OutsideIn(X): Modular type inference with local assumptions. Journal of Functional Programming, 21(4–5), 333–412. https://doi.org/10.1017/S0956796811000098
* Weirich, S., Hsu, J., & Eisenberg, R. A. (2013). System FC with explicit kind equality. Proceedings of the 18th ACM SIGPLAN International Conference on Functional Programming, 275–286. https://doi.org/10.1145/2500365.2500599
* Eisenberg, R. A., & Peyton Jones, S. (2017). Levity polymorphism. Proceedings of the 38th ACM SIGPLAN Conference on Programming Language Design and Implementation - PLDI 2017, 525–539. https://doi.org/10.1145/3062341.3062357

### Static Memory Management and Regions

* Matthew, F., & Morrisett, G. (2006). Monadic regions. Journal of Functional Programming, 16(4&5), 485. https://doi.org/10.1017/S095679680600596X

### Dynamic Memory Management and Gabage Collection

### I/O Management and Concurrency

* Voellmy, A. R., Wang, J., Hudak, P., & Yamamoto, K. (2013). Mio: a high-performance multicore io manager for GHC. Proceedings of the 2013 ACM SIGPLAN Symposium on Haskell - Haskell ’13, 48(12), 129. https://doi.org/10.1145/2503778.2503790

### Code Generation and Virtual Machines

* Burn, G. L., Peyton Jones, S. L., & Robson, J. D. (1988). The spineless G-machine. Proceedings of the 1988 ACM Conference on LISP and Functional Programming - LFP ’88, 244–258. https://doi.org/10.1145/62678.62717
* Leroy, X. (1990). The ZINC experiment : an economical implementationof the ML language. Retrieved from https://hal.inria.fr/inria-00070049
* Marlow, S., & Jones, S. P. (2004). Making a fast curry: push/enter vs. eval/apply for higher-order languages. ACM SIGPLAN Notices, 39(9), 4. https://doi.org/10.1145/1016848.1016856
* Marlow, S., Yakushev, A. R., & Jones, S. P. (2007). Faster laziness using dynamic pointer tagging. ACM SIGPLAN Notices, 42(9), 277. https://doi.org/10.1145/1291220.1291194

### Program Separation and Linking

### Program Stability and Compatibility

### Syntax and Parsing

* Ford, B. (2002). Packrat parsing: Simple, Powerful, Lazy, Linear Time. ACM SIGPLAN Notices, 37(9), 36–47. https://doi.org/10.1145/583852.581483

### Analysis and Optimizations

* Peyton Jones, S., Partain, W., & Santos, A. (1996). Let-floating: moving bindings to give faster programs. ACM SIGPLAN Notices. Retrieved from http://dl.acm.org/citation.cfm?id=232630
* Peyton Jones, S., & Marlow, S. (2002). Secrets of the Glasgow Haskell Compiler inliner. Journal of Functional Programming, 12(4–5), 393–434. https://doi.org/10.1017/S0956796802004331
* Xu, D. N., & Jones, S. P. (2006). Arity Analysis.
* Gill, A., & Hutton, G. (2009). The worker/wrapper transformation. Journal of Functional Programming, 19(02), 227. https://doi.org/10.1017/S0956796809007175
* Hinze, R. (2012). Kan Extensions for Program Optimisation Or: Art and Dan Explain an Old Trick. In Mathematics of Program Construction (pp. 324–362). https://doi.org/10.1007/978-3-642-31113-0_16
* Peyton Jones, S. (2015). Theory and Practice of Demand Analysis in Haskell. Retrieved from https://www.microsoft.com/en-us/research/publication/theory-practice-demand-analysis-haskell/
* Breitner, J. (2018). Call Arity. Computer Languages, Systems & Structures, 52, 65–91. https://doi.org/10.1016/j.cl.2017.03.001
* Graf, S., & Jones, S. P. (2019). Selective Lambda Lifting. 1(January). Retrieved from http://arxiv.org/abs/1910.11717

### Meta-Programming and Multi-Stage Programming

### Generic Programming

### Advanced Calculus

* Amin, N., Grütter, S., Odersky, M., Rompf, T., & Stucki, S. (2016). The Essence of Dependent Object Types. In Lecture Notes in Computer Science (including subseries Lecture Notes in Artificial Intelligence and Lecture Notes in Bioinformatics) (Vol. 9600, pp. 249–272). https://doi.org/10.1007/978-3-319-30936-1_14

### Books

* Girard, J.-Y., Taylor, P., & Lafont, Y. (1989). Proofs and Types. In Cambridge University Press. https://doi.org/10.5555/64805
* Pierce, B. C. (2002). Types and programming languages. Retrieved from https://www.cis.upenn.edu/~bcpierce/tapl/
