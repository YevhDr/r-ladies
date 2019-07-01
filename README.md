# r-ladies



## Параметри R Markdown html_document:

    toc:

    number_sections:

    theme:

    highlight:

    df_print: paged

    fig_width:

    fig_height:

    self_contained:

    template:

    сss:

    lib:

    knit: (function(inputFile, encoding) { rmarkdown::render(inputFile, encoding = encoding, output_file = file.path(dirname(inputFile), 'index.html')) })


## Параметри блоків коду:

    echo

    eval

    include

    warning

    error


## CSS код в Markdown:

    ```{r mycss, results = "asis", eval = TRUE, echo=FALSE  }
    cat("<style>

    h1, h2, h3, p {
    line-height:1.6;
    }

    p {
    font-size:18px;
    }

    img {
    margin: 50px auto;
    }

    </style>
    ")

    ```

## JS код в Markdown:

    ```{js, echo=FALSE}

    $('img').on('click', function(){
      alert("hi")
    })

    ```

## Верстка з шаблоном:
## Приклад за лінком: https://yevhdr.github.io/r-ladies/

Для початку роботи, завантажте папку Rmd на Робочий стіл.

## Linux
Відкрийте файл markdown.Rmd, натисність кнопку "Knit" (звʼязати).

## Windows
Відкрийте файл markdown.Rmd, натисність кнопку "Knit" (звʼязати).

**У разі виникнення помилок:**
    1) у файлі markdown.Rmd вкажіть відповідний шлях до Робочого стола: рядки 50 та 59;
    2) у файлі TemplateToPandoc.R вкажіть відповідний шлях до папки "AppData/Roaming": рядок 49.



## Корисні ресурси:
Приклад сторінки, що зверстана з RMarkdown: https://bit.ly/2X78oPT

Теми RMarkdown: https://bootswatch.com/3/

Chunk options and package options: https://yihui.name/knitr/options/

The Evolution of a ggplot: https://bit.ly/2XcsBsg


## Приклад нашого проекту R:

Тому що дешевше, дурнику: http://texty.org.ua/d/auto_euro/


