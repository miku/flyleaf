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

Notes on [data](data).

## Exploration

Off-the-shelf:

* [https://keras.io/examples/vision/image_classification_from_scratch/](https://keras.io/examples/vision/image_classification_from_scratch/)

```
Found 204 files belonging to 2 classes.
Using 164 files for training.
Found 204 files belonging to 2 classes.
Using 40 files for validation.
```

Validation accuracy as low as 0.5, max 0.875. With augmentation, which we do not really need. Try once again without.

## TODO

* [ ] full automated collection of e.g. 10000 examples per class
* [ ] explore more architectures; CNN + full connected;
