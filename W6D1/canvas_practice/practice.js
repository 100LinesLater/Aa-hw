document.addEventListener("DOMContentLoaded", function(){
    const c = document.getElementById('mycanvas');
    c.width = 500;
    c.height = 500;

    const ctx = c.getContext('2d');
    // ctx.fillStyle = 'teal';
    // ctx.fillRect(0, 0, 500, 500);

    // ctx.beginPath();
    // ctx.arc(250, 250, 100, 0, 360, false);
    // ctx.strokeStyle = 'maroon';
    // ctx.lineWidth = 3;
    // ctx.stroke();

    ctx.beginPath();
    ctx.moveTo(200, 325);
    ctx.lineTo(250, 175);
    ctx.lineTo(300, 325);
    ctx.lineTo(175, 225);
    ctx.lineTo(325, 225);
    ctx.lineTo(199, 326);
    ctx.strokeStyle = "black";
    ctx.lineWidth = 5;
    ctx.fillStyle = "gold";
    ctx.stroke();
    ctx.fill();
    ctx.closePath();

});
