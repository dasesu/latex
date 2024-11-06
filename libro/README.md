### Book

The dasesu_book.cls file contains the definitions and settings that will shape
the document

To generate the pdf file:
```sh
pdflatex libro.tex # this will generate a document with question marks in place
                   # of unknown references
bibtex libro.aux   # this will parse all the .bib files that were included in the
                   # document and generate meta information regarding references
pdflatex libro.tex # this will generate the document with all the references in
                   # the correct place 
pdflatex libro.tex # just in case if adding references broke page numbering
                   # somewhere
```

In the root directory is the file `libro.tex`, this file is the one that
contains the calls to each part of the document

In the `parts` directory you have some documents corresponding to each of these
parts.

* portada.tex: This file is the cover of the document 
* cabecera-logos.tex: Contain the Instutuion name and logos used in the cover.
* capitulo1.tex: This is an example of chapter, here you can find also references, footnotes, figures, tables and list.
* bibliografia.bib: The bibliography, you can change the content for adapt it to  your document

Once generated, the document looks as shown bellow  

![Cover](img/example/001.png "Cover")

![Header logos in the cover](img/example/002.png "Header logos in the cover")

![The table of content aspect](img/example/003.png "The table of content aspect")

![Fugures in the index](img/example/004.png "Fugures in the index")

![Preview of the reference](img/example/005.png "Preview of the reference")

![Chapter and general aspect](img/example/007.png "Chapter and general aspect")

![Bibliography aspect](img/example/011.png "Bibliography aspect")
