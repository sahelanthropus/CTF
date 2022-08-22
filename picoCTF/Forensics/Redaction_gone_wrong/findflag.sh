#!/bin/bash

pdftotext Financial_Report_for_ABC_Labs.pdf contents.txt; grep -oE 'picoCTF{.*}' contents.txt