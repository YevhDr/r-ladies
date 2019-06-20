
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

 
