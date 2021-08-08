#!/usr/bin/env python

"""
For a list of file, output the average aspect ratio.

$ find . -name "*png" | head -10 | python imratio.py
"""

import imageio
import sys
import fileinput

def average_ratio(shapes):
    return sum([(x / y) for x, y, _ in shapes]) / len(shapes)

if __name__ == '__main__':
    shapes = []

    for line in fileinput.input():
        line = line.strip()
        try:
            im = imageio.imread(line)
            shapes.append(im.shape)
        except Exception as exc:
            print(exc, file=sys.stderr)
            continue

    print(average_ratio(shapes))
