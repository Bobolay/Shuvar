document.onreadystatechange = function () {
  var state = document.readyState
  if (state == 'complete') {
      setTimeout(function(){
         document.getElementById('preloader').style.visibility="hidden";
      },1000);
  }
}