# flyleaf

A model for finding papers in conference proceedings.

Problem: A conference proceeding PDF contains many articles. Given a PDF file, we want to know
the start and end page of each individual publication.

Example proceeding PDFs:

* [https://educationconference.co/wp-content/uploads/2018/10/ICEDU_2018_Conference-Proceedings_Issue-1.pdf](https://educationconference.co/wp-content/uploads/2018/10/ICEDU_2018_Conference-Proceedings_Issue-1.pdf)
* [https://icestconf.org/wp-content/uploads/2019/09/Proceeding_ICEST_2019.pdf](https://icestconf.org/wp-content/uploads/2019/09/Proceeding_ICEST_2019.pdf)
* [https://www.utupub.fi/bitstream/handle/10024/144335/Proceedings%20Final.pdf](https://www.utupub.fi/bitstream/handle/10024/144335/Proceedings%20Final.pdf)
* ...

## Idea

* binary classifier
* image based
* use a CNN

Training set generation:

* take a set of paper, for which we mostly know the start at page one; extract page 1 and page 2
* convert pdf to pngs
