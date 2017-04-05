document.onreadystatechange = function () {
  var state = document.readyState
  if (state == 'complete') {
      setTimeout(function(){
         document.getElementByClassName('preloader').style.visibility="hidden";
      },1000);
  }
}