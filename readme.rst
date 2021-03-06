Some scripts for working with the image data from the redacted Mueller report

Prerequisite: You should have Tesseract, Imagemagick, and the Poppler tools installed. Put the report into the directory as ``report.pdf``.

1_print.sh
----------

Creates a directory named ``pages`` and extracts images of each page in the PDF into an individually numbered file.

2_measure.sh
------------

Measures the number of colored pixels in each page, and dumps the results into a folder named ``histograms``. Isn't actually useful, since only the text in each redaction bar is colored, not the bar itself.

3_parse.js
----------

Takes the output of ``2_measure.sh`` and generates a CSV with the count of colored pixels on each page.

4_ocr.sh
--------

*Requires extracted pages from step 1.* Runs the report pages through Tesseract and generates an OCR text file with the report contents.

5_montage.sh
------------

*Requires extracted pages from step 1.* Generates tiled images in a ``montages`` folder consisting of the pages for each major section of the report.