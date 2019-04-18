Some scripts for working with the image data from the redacted Mueller report

Prerequisite: put the report into the directory as ``report.pdf``.

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

*Requires ``1_print.sh``.* Runs the report pages through Tesseract and generates an OCR text file with the report contents.

5_montage.sh
------------

*Requires ``1_print.sh``.* Generates tiled images in a ``montages`` folder consisting of the pages for each major section of the report.