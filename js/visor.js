window.onload = function () { //tras cargar la página ...
    visor1 = document.getElementById("visor"); 
    mititulo = document.getElementById("titulo"); 
    carpeta = document.getElementById("menu").getAttribute("name")
} 


function mifoto(num) { //cambiar la imagen
    f = "img/" + carpeta + "/" + num + ".jpg"; //ruta de la nueva imagen
    document.images["fotoVisor"].src = f; //cambiar imagen
    t = document.images["fotos" + num].alt; //texto de pie de foto
    mititulo.innerHTML = t; //cambiar pie de foto
}