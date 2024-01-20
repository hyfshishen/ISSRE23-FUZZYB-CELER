# FUZZYB and CELER

## Contents
1. [Introduction](#introduction)
2. [Environment Configuration](#environment-configuration)
3. [Benchmark Info](#benchmark-info)
4. [FUZZYB](#fuzzyb)
5. [CELER](#celer)
6. [Contributor](#contributor)
7. [Citation](#citation)

## Introduction
Soft error rate has been increasing due to the shrinking size of transistors, leading to an elevated risk of catastrophic failures in modern computer systems. 
Error detection by duplicating instructions (EDDI) is a software-based technique to mitigate soft errors with a low runtime performance overhead and has been widely adopted in many safety- and mission-critical real-time systems such as space applications.
However, these systems are commonly sensitive to runtime performance overheads the protection techniques incur. 
Few studies have investigated the performance of EDDI across various system designs and operational parameters, hence lacking a complete understanding in the literature. 
In this paper, we conduct comprehensive experiments to study the variation of EDDI runtime performance overhead and characterize the root causes.
We find that there exist significant variations in performance overheads of EDDI, due to a few architectural and program-level factors.
Based on the findings, we propose two practical techniques FUZZYB and CELER: FUZZYB uses an input searching technique to bound EDDI runtime performance overhead across different inputs for a given program; while CELER reduces EDDI runtime performance overheads using compiler transformation.
To know more about how **FUZZYB** and **CELER** works, you may refer to our [ISSRE'23 paper](https://hyfshishen.github.io/publications/ISSRE23-paper.pdf).


## Environment Configuration

he dependencies that needed for FUZZYB and CElER are listed as below:
- Ubuntu 16.04
- Python 2.7 and 3.5 (with PyYaml 4.2b4 installed)
- Cmake (minimum v2.8)
- LLVM 3.4

Among those dependencies, LLVM 3.4 is the key dependency for FUZZYB and CELER.

## Benchmark Info
> In the following benchmark table:
>- *Name in Paper*: means the benchmark name shown in our ISSRE'23 paper.
>- *Name in Code*: means the benchmark name used in code.

In this repository, you should use *Name in Code* while running the code.

| **Benchmark (Name in Paper)**  | **Benchmark (Name in Code)** | **Suite** | **Program Input** | **No. of Static Instrunctions** | **Benchmark Workload** |
|--|--|--|--|--|--|
| [kNN](https://github.com/JuliaParallel/rodinia/tree/master/openmp/nn)                         | nn                | Rodinia   | list6553600.txt 6 220 789	       | 349  | small    |
| [Backprop](https://github.com/JuliaParallel/rodinia/tree/master/openmp/backprop)              | backprop          | Rodinia   | 3744752                          | 1680 | medium   |
| [BFS](https://github.com/JuliaParallel/rodinia/tree/master/openmp/bfs)                        | bfs               | Rodinia   | graph9586688.t                   | 383  | small    |
| [Kmeans](https://github.com/JuliaParallel/rodinia/tree/master/openmp/kmeans)                  | kmeans            | Rodinia   | 57141 43 3                       | 1018 | medium   |
| [Needle](https://github.com/JuliaParallel/rodinia/tree/master/openmp/nw)                      | needle            | Rodinia   | 2752 134 1                       | 1069 |  small   |
| [B+tree](https://github.com/JuliaParallel/rodinia/tree/master/openmp/b+tree)                  | b+tree            | Rodinia   | 5714026 1287 11562 13507	       | 6622 | large    |
| [Pathfinder](https://github.com/JuliaParallel/rodinia/tree/master/openmp/pathfinder)          | pathfinder        | Rodinia   | 571831 435                       | 372  | small    |
| [LUD](https://github.com/JuliaParallel/rodinia/tree/master/openmp/lud)                        | lud               | Rodinia   | -v -s 1573                       | 1161 | medium   |
| [MYOCYTE](https://github.com/JuliaParallel/rodinia/tree/master/openmp/myocyte)                | myocyte           | Rodinia   | 229 172 1 1                      | 7541 | large    |
| [FFT](https://github.com/staceyson/splash2/tree/master/codes/kernels/fft)                     | fft               | SPLASH-2  | -m24 -p8 -n281076736 -l96        | 2138 | small    |
| [COMD](http://downloads.mantevo.org/CoMD_ref-1.1b.html)                                       | comd              | Mantevo   | -x 14 -y 11 -z 14 -N 14	       | 11457| large    |
| [HPCCG](https://github.com/Mantevo/HPCCG)                                                     | hpccg             | Mantevo   | 74 55 74                         | 1975 | large    |
| [Xsbench](https://github.com/ANL-CESAR/XSBench/tree/master/openmp-threading)                  | xsbench           | CESAR     | -t 1 -s small -g 11429 -l 8578   | 2366 | large    |
| [Blackscholes](https://github.com/bamos/parsec-benchmark)                                     | blackscholes      | PARSEC    | 1 98282.txt output.txt	       | 740  | medium   |
| [BT](https://www.nas.nasa.gov/software/npb.html)                                              | BT                | NPB       | default input                    | 26013 | large   |
| [LU](https://www.nas.nasa.gov/software/npb.html)                                              | LU                | NPB       | default input                    | 24017 | large   |
| [SP](https://www.nas.nasa.gov/software/npb.html)                                              | SP                | NPB       | default input                    | 21630 | large   |
| [EP](https://www.nas.nasa.gov/software/npb.html)                                              | EP                | NPB       | default input                    | 912  | medium   |
| [FFT2](https://github.com/embecosm/mibench/tree/master/telecomm/FFT)                          | fft2              | MiBench   | 58 131072	                       | 744  | medium   |
| [STENCIL](http://impact.crhc.illinois.edu/parboil/parboil_download_page.aspx)                 | stencil           | Parboil   | -i 128x128x32.bin 128 128 32 100 -o output.dat| 1747  | medium |
| [MCF](https://www.spec.org/cpu2006/Docs/429.mcf.html)                                         | mcf               | SPEC      | inp.in		                   | 3917  | large   |
| [LBM](https://www.spec.org/cpu2006/Docs/470.lbm.html)                                         | lbm               | SPEC      | 86 100_100_130_ldc.of 0 0        | 7899  | large   |


## FUZZYB
> This section is to execute FUZZYB on above benchmarks.

After changing directory to FUZZYB-launcher by executing ```cd FUZZYB-launcher/Genetic-engine-And-Fitness-evaluation```, there are three steps to generate FUZZYB selection on selected benchmarks. We here use Pathfinder from Rodinia as example:

1. Change directory to the folder in target benchmark.
    ```bash
    cd pathfinder
    ```
2. Fuzzing for finding the inputs that bounding the upper performance overhead of EDDI. This step contains feature collection experiments and may take you some time.
    ```bash
    python3 GeneticAlgorithm.py BENCHMARK-NAME-IN-CODE GENERATION-TO-TRAIN
    # e.g.:
    #   python3 GeneticAlgorithm.py pathfinder 100
    #   python3 GeneticAlgorithm.py bfs 100
    #   python3 GeneticAlgorithm.py kmeans 100
    #   python3 GeneticAlgorithm.py lbm 100
    #   ......
    ```
Then, the result will be stored in ga-output.log.

## CELER
> This section is to execute CELER on above benchmarks.
After changing directory to CELER-launcher by executing ```cd CELER-launcher```, only need one step to generate CELER selection on selected benchmarks. We here use Pathfinder from Rodinia as example:

1. Protecting selected programs with original EDDI and CELER seperatly. This step will generate two kinds of protection programs and the runtime overhead result reflects the paper's figure 15.
    ```bash
    python 01-celer-generate.py pathfinder
    ```

## Contributor
- Main contributor: [Zhengyang He]() from the University of Iowa.
- Other contributor: [Yafan Huang](https://hyfshishen.github.io/), who helps organize this repository, from the University of Iowa.

## Citation
```bibtex
@inproceedings{huang2023characterizing,
    title={Characterizing Runtime Performance Variation in Error Detection by Duplicating Instructions},
    author={Huang, Yafan and He, Zhengyang and Li, Lingda and Li, Guanpeng},
    booktitle={2023 IEEE 34th International Symposium on Software Reliability Engineering (ISSRE)},
    pages={730--741},
    year={2023},
    organization={IEEE}
}
```

