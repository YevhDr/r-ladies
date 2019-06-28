# r-ladies

## Приклад за лнком: https://yevhdr.github.io/r-ladies/


Для початку роботи, завантажте папку Rmd на Робочий стіл.

## Linux
Відкрийте файл markdown.Rmd, натисність кнопку "Knit" (звʼязати).

## Windows
Відкрийте файл markdown.Rmd, натисність кнопку "Knit" (звʼязати).

**У разі виникнення помилок:**
    1) у файлі markdown.Rmd вкажіть відповідний шлях до Робочого стола: рядки 50 та 59;
    2) у файлі TemplateToPandoc.R вкажіть відповідний шлях до папки "AppData/Roaming": рядок 49.



## Параметри R Markdown html_document:

    toc:

    number_sections:

    theme:

    highlight:

    сss:

    lib:

    df_print: #paged

    fig_width:

    fig_height:

    code_folding:

    self_contained:

    template:

    knit: (function(inputFile, encoding) { rmarkdown::render(inputFile, encoding = encoding, output_file = file.path(dirname(inputFile), 'index.html')) }) # this is a hack to create index.html from Rmd file with different name


## Параметри блоків коду:

    echo

    eval

    include

    warning

    error




## Корисні ресурси:
Приклад сторінки, що зверстана з RMarkdown: https://bit.ly/2X78oPT

Теми RMarkdown: https://bootswatch.com/3/

Chunk options and package options: https://yihui.name/knitr/options/

The Evolution of a ggplot: https://bit.ly/2XcsBsg


