TemplateToPandoc <- function(path, projectName){
  library(RCurl)
  mainDir <- file.path(path, projectName)
  #if Linux
  if(.Platform$OS.type == "unix") {
    user <- Sys.info()[["user"]]
    pandocDirPath = paste('/home/',user)
    pandocDirPath = gsub(' ', '', pandocDirPath)
    pandocDir = '.pandoc'
    templatesDir = 'templates'
    pathForTemplate = file.path(pandocDirPath, pandocDir, templatesDir)
    setwd(pandocDirPath)
    if (!file.exists(pandocDir)){
      setwd(pandocDirPath)
      dir.create('.pandoc')
    }
    else {
      print('It is already exists')
    }
    
    setwd(file.path(pandocDirPath, pandocDir))
    if (!file.exists('templates')){
      dir.create(templatesDir)
      setwd(file.path(pandocDirPath, pandocDir, templatesDir))
      templates = list.files(mainDir, pattern = "\\.html$")
      templates = templates[templates != "index.html"]
      setwd(mainDir)
      file.copy(templates, pathForTemplate)
    }
    else if(file.exists('templates')) {
      if(!file.exists('template.html')) {
        templates = list.files(mainDir, pattern = "\\.html$") 
        templates = templates[templates != "index.html"]
        setwd(mainDir)
        file.copy(templates, pathForTemplate)
      }
      else {
        print('It is already exists')
      }
    }
    setwd(mainDir)
    #file.remove(templates)
    
  }
  
  #if Windows
  if(.Platform$OS.type == "windows"){
    user <- Sys.info()[["user"]]
    pandocDirPath = paste("C:/Users/", user, "/AppData/Roaming")
    pandocDirPath = gsub(' ', '', pandocDirPath)
    pandocDir = 'pandoc'
    templatesDir = 'templates'
    pathForTemplate = file.path(pandocDirPath, pandocDir, templatesDir)
    setwd(pandocDirPath)
    if (!file.exists(pandocDir)){
      setwd(pandocDirPath)
      dir.create('pandoc')
    }
    else {
      print('It is already exists')
    }
    
    setwd(file.path(pandocDirPath, pandocDir))
    if (!file.exists('templates')){
      dir.create(templatesDir)
      setwd(file.path(pandocDirPath, pandocDir, templatesDir))
      templates = list.files(mainDir, pattern = "\\.html$")
      templates = templates[templates != "index.html"]
      setwd(mainDir)
      file.copy(templates, pathForTemplate)
    }
    else if(file.exists('templates')) {
      if(!file.exists('template.html')) {
        templates = list.files(mainDir, pattern = "\\.html$") 
        templates = templates[templates != "index.html"]
        setwd(mainDir)
        file.copy(templates, pathForTemplate)
      }
      else {
        print('It is already exists')
      }
    }
    setwd(mainDir)
    #file.remove(templates)
  }
}