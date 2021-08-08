# Data Input

* list of PDF papers, via [fatcat](https://fatcat.wiki), and [fatcat-cli](https://gitlab.com/bnewbold/fatcat-cli)

```
$ for ident in $(fatcat-cli search release --entity-json "urban gardening in_ia:true" | \
    jq -r .ident); do fatcat-cli download "release_$ident"; done
```

Download PDFs, inspect manually, whether we could use it. A complete automatic
dataset generation may be possible, too.

## Dataset Mini

* 102 examples per class

To create:

```
$ make -j 24
```

A few PNG files should be generated:

```
$ ll -1 | head
.gitignore
Makefile
README.md
release_2bqpbjba25fbldbgnururjjfve.1.png
release_2bqpbjba25fbldbgnururjjfve.2.png
release_2bqpbjba25fbldbgnururjjfve.pdf
release_2n2fdhgekfhoroa2ojzlrctxsm.1.png
release_2n2fdhgekfhoroa2ojzlrctxsm.2.png
release_2n2fdhgekfhoroa2ojzlrctxsm.pdf
release_3aumrk2zu5amdcoksqtdcg5bhu.1.png
```
