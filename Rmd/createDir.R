#функція створює папки для сайту і файли

createDirs <- function(path, projectName){
  library(RCurl)
  #створюємо головну папку зі змінних у функції
  mainDir <- file.path(path, projectName)
 
   #створюємо вкладені папки
  subDirCss <- 'css'
  subDirImg <- 'img'
  subDirLib <- 'lib'
  subDirJs <- 'js'
  subDirData <- 'data'
  setwd(mainDir)
  if (!file.exists(subDirCss)){
      dir.create(subDirCss)
      dir.create(subDirImg)
      dir.create(subDirLib)
      dir.create(subDirJs)
      dir.create(subDirData)
    
    #переходимо в папку сss
    setwd(file.path(mainDir, subDirCss))
    
    #пишемо сss файл
    styles <-file("style.css")
    writeLines(c("

  html {
  font-size: 12px;
  }
                 
  body {
  font-family: 'OpenSans', sans-serif;
  margin: 0;
  padding: 0;
  }
                 
   /* ----- Grid ----- */
   main {
   max-width:100vw;
   display: grid;
   grid-template-columns: 5vw 2fr auto 2fr 5vw;
   }
                 
   /* --- HEADER ---*/
                 
   #logo-soc {
   width:auto;
   position:absolute;
   top:20px;
   left:20px;
   display:flex;
   justify-content: space-between;
  }
                 
    .logo {
    z-index:1000;
    height:50px;
    width:80px;
    grid-column: 1/2;
    }
                 
    .logo a {
    height: 100%;
    display:flex;
    }
                 
    .logo a img {
     margin:auto;
    }
                 
    #soc {
    position:fixed;
    right:0;
    top:20px;
    display:flex;
    z-index:10000;
    justify-content: flex-end;
    margin-right:20px;
  }
  
  #soc a {
  margin:auto;
  text-decoration: none;
  }
  
  .fab.fa-facebook-square {
  font-size:40px;
  color: #88398A;
  margin-right:10px;
  }
  
  .fab.fa-twitter-square {
  font-size:40px;
  color: #88398A;
  }
  
  /*---- CONTENT---- */
  .header-image {
  grid-column: 1/-1;
  width: 100%;
  height:40vh;
  z-index: 1;
  background-image: url(../img/project_cover.jpg);
  background-position: 50% 70%;
  }
  
  .title {
  grid-column: 3 / -3;
  padding-top:50px;
  z-index: 100;
  align-self: center;
  text-align: center;
  }
  
  /* ------ text --------*/
  
  .content {
  margin:50px auto;
  grid-column: 2 / -2;
  }
  
  /* ------ photos or graphics --------*/
  
  .cover {
  width: 100%;
  height: 100%;
  }
  
  .chart {
  width: 100%;
  margin:50px auto;
  }
  
  .fullImg {
  grid-column: 1 / -1;
  width: 100%;
  }
  
  .bigImg {
  grid-column: 2 / -2;
  width: 100%;
  }
  
  .smallImg {
  grid-column: 4 / -4;
  width: 100%;
  }
  
  /* ------ qoutes --------*/
  .qoute {
  font-size: calc(0.6rem + 0.8vw);
  line-height: calc(1.5rem + 0.8vw);
  }
  
  /* ------ footer --------*/
  .footer {
  max-width:100%;
  height: 200px;
  grid-column: 1 / -1;
  grid-row: 6 / 7;
  text-align: center;
  background-color: #88398A;
  color: white;
  }
  
  /* ----- Text styles ----- */
  
  h1 {
  color: white;
  font-size: 70px;
  line-height: 76px;
  font-weight: 800;
  }
  
  h2 {
  margin-top: 50px;
  font-size: calc(1.6rem + 0.8vw);
  line-height: calc(2rem + 0.8vw);
  }
  
  h3 {
  font-size: 23px;
  line-height: 37px;
  font-weight: 300;
  width: 50%;
  margin: 50px 25% ;
  }
  
  h5 {
  font-size: 14px;
  line-height: 23px;
  font-weight: 300;
  width: 50%;
  margin-left: 25%;
  margin-bottom: 100px;
  }
  
  p {
  font-size: 18px;
  line-height: 29px;
  font-weight: 300;
  width: 50%;
  margin-left: 25%;
  }
  
  .footer {
  max-width: 100vw;
  display: grid;
  grid-template-columns: auto 1fr 1fr 1fr 1fr auto;
  grid-template-rows: auto auto;
  grid-gap: 1rem;
  }
  
  ul {
  list-style-type: none;
  }
  
  ul li#big {
  text-align: left;
  font-size: 1.4rem;
  }
  
  ul.links0 {
  -webkit-padding-start: 0;
  grid-column: 2 / 3;
  grid-row: 1 / 2;
  }
  
  
  /* -----------------------------------
  --------- Grid for small devices -----
  ----------------------------------- */
  
  @media (max-width: 700px) {
  .container {
  max-width: 100vw!important;
  display: grid;
  grid-template-columns: 5vw auto auto 5vw;
  grid-template-rows: 10vh auto 10vh auto auto 200px;
  grid-gap: 0.2rem;
  }
  
  .links1, .links2, .links3 {
  display: none;
  font-size: 0 !important;
  
  }
  
  .logo{
  position:absolute;
  left:5%;
  width:150px;
  z-index: 100;
  
  }
  
  .social-icons {
  margin-top: 5px;
  grid-column: 3 / 4;
  grid-row: 1 / 2;
  display:grid;
  grid-template-columns: auto 40px 30px;
  z-index: 100;
  }
  
  .facebook {
  grid-column: 2 / 3;
  width: 28px;
  align-self: flex-start;
  }
  
  .twitter {
  grid-column: 3 / 4;
  width: 28px;
  align-self: flex-start;
  }
  
  /*шапка матеріалу*/
  .header-image {
  grid-column: 1 / -1;
  grid-row: 1 / 4;
  min-height: 100%;
  min-width: 100%;
  z-index: 1;
  }
  
  #overlay {
  grid-column: 1 / -1;
  grid-row: 1 / 4;
  background-color: black;
  opacity: 0.6;
  z-index: 50;
  }
  
  .cover {
  width: 100%;
  height: 100%;
  }
  
  .title {
  grid-column: 2 / -2;
  grid-row: 2 / 3;
  z-index: 100;
  align-self: start;
  text-align: left;
  /*transform: rotate(-3deg);*/
  }
  
  /* ------ text --------*/
  
  .content {
  grid-column: 2 / -2;
  grid-row: 4 / 5;
  }
  
  
  p {
  width:100%;
  margin-left: 0;
  }
  
  
  /* ------ qoutes --------*/
  .qoute {
  font-size: calc(0.6rem + 0.8vw);
  line-height: calc(1.5rem + 0.8vw);
  }
  
  
  .footer {
  grid-column:  1 / -1;
  grid-row: 6 / 7;
  }
  
  .footer {
  display: grid;
  grid-template-columns: 5% auto 5%;
  grid-template-rows: 100px 100px;
  grid-gap: 1rem;
  }
  
  ul.links0 {
  -webkit-padding-start: 0;
  grid-column: 2 / 3;
  grid-row: 1 / 2;
  }
  
  .copying-info {
  text-align: left;
  grid-column: 2 / 3;
  grid-row: 2 / 3;
  max-width: 100%;
  }
  }

                
           
 "), styles)
    close(styles)
    
    #завантажуємо потрібні біліотеки
    setwd(file.path(mainDir, subDirLib))
    download.file("https://d3js.org/d3.v3.min.js",destfile="d3.v3.min.js",method="libcurl")
    download.file("https://code.jquery.com/jquery-3.3.1.min.js",destfile="jquery-3.3.1.min.js",method="libcurl")
    #setwd(file.path(mainDir, subDirLib))
    shareBehavior <- file("share-behavior.js")
    writeLines(c("
                 (function () {
                 if (window.__textySocialButtonsHandler) return;
                 var windowOptions = 'scrollbars=yes,resizable=yes,toolbar=no,location=yes',
                 width = 550,
                 height = 420,
                 winHeight = screen.height,
                 winWidth = screen.width;
                 
                 function handleIntent(e) {
                 e = e || window.event;
                 var target = e.target || e.srcElement,
                 left, top;
                 
                 while (target && target.nodeName.toLowerCase() !== 'a') {
                 target = target.parentNode;
                 }
                 
                 if (target && target.nodeName.toLowerCase() === 'a' && target.href) {
                 if (hasClass(target, 'share-btn')) {
                 left = Math.round((winWidth / 2) - (width / 2));
                 top = 0;
                 
                 if (winHeight > height) {
                 top = Math.round((winHeight / 2) - (height / 2));
                 }
                 
                 window.open(target.href, 'intent', windowOptions + ',width=' + width +
                 ',height=' + height + ',left=' + left + ',top=' + top);
                 e.returnValue = false;
                 e.preventDefault && e.preventDefault();
                 }
                 }
                 }
                 
                 function hasClass(element, cls) {
                 return (' ' + element.className + ' ').indexOf(' ' + cls + ' ') > -1;
                 }
                 
                 if (document.addEventListener) {
                 document.addEventListener('click', handleIntent, false);
                 } else if (document.attachEvent) {
                 document.attachEvent('onclick', handleIntent);
                 }
                 window.__textySocialButtonsHandler = true;
                 }());
                 "), shareBehavior)
   close(shareBehavior)
   setwd(file.path(mainDir, subDirJs))
   lazzyLoader <- file("lazzy-loader.js")
   writeLines(c("
$( document ).ready(function() {
$('.lazy').each(function() {    
    $(this).attr('rsrc', this.getAttribute('src'));
    $(this).attr('src', '')
});

    $(window).on('scroll', function() {
    d3.selectAll('.lazy')
    .each(function() {      
        var currentImg = this;
        var bounding = currentImg.getBoundingClientRect();

        if (
            bounding.top >= 0 &&
            bounding.bottom <= (window.innerHeight || document.documentElement.clientHeight)
        ) {
            var src= this.getAttribute('rsrc');
            $(this).attr('src', src);
            console.log(src)
        } else {
        }
    }); 
});
});

 "), lazzyLoader)
   close(lazzyLoader)
   
   #сортуємо наявні файли по папкам (картинки, дані, скрипти)
   setwd(mainDir)
   images <- list.files(mainDir, pattern = "\\.png$|\\.jpg$|\\.jpeg$|\\.svg$") 
   file.copy(images, subDirImg)
   setwd(mainDir)
   file.remove(images)
   
   setwd(mainDir)
   datasets <- list.files(mainDir, pattern = "\\.csv$|\\.json$|\\.tsv$|\\.txt$") 
   file.copy(datasets, subDirData)
   setwd(mainDir)
   file.remove(datasets)
   
   setwd(mainDir)
   scripts <- list.files(mainDir, pattern = "\\.js$") 
   file.copy(scripts, subDirJs)
   setwd(mainDir)
   file.remove(scripts)
  }

}




