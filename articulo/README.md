### Article

The dasesu_article.cls file is a variation of the dasesu_book.cls, adapted to article documents.


To generate the pdf file:
```sh
pdflatex articulo.tex         # this will generate a document with question marks in place
                              # of unknown references
bibtex articulo.aux           # this will parse all the .bib files that were included in the
                              # document and generate meta information regarding references
pdflatex articulo.tex         # this will generate the document with all the references in
                              # the correct place 
pdflatex articulo.tex         # just in case if adding references broke page numbering
                              # somewhere
```

In the root directory is the file `articulo.tex`, this file is the one that
contains the call to a `parte1.tex` file located in the `partes` directory.

