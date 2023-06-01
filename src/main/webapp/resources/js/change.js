var bigPic = document.querySelector("#big");
var smallPics = document.querySelectorAll(".small");

for(var i = 0 ; i < smallPics.length ; i++){
    smallPics[i].addEventListener("click",changepic);

    smallPics[i].onclick = changepic
}

function changepic(){
    var smallPicAttrebute = this.getAttribute("src");
    bigPic.setAttribute("src",smallPicAttrebute);
}
