function imgLoaded(img){
    var imgWrapper = img.parentNode;
    var imgWrapper2 = imgWrapper.parentNode;
 
    imgWrapper.className += imgWrapper.className ? ' loaded' : 'loaded';
    imgWrapper2.className += imgWrapper2.className ? ' loaded' : 'loaded';
}

