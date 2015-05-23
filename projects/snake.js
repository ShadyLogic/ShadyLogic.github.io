// var snake levelPlan = [
// "XXXXXXXXXXXX"
// "X          X"
// "X o        X"
// "X          X"
// "X          X"
// "X          X"
// "X          X"
// "X          X"
// "X          X"
// "X        @ X"
// "X          X"
// "XXXXXXXXXXXX"
// ];

// var actors = {
// 	"@": snake,
// 	"o": food,
// }

// function Vector(x, y){
// 	this.x = x;
// 	this.y = y;
// }

// Vector.prototype.plus = function(other){
// 	return new Vector(this.x + other.x, this.y + other.y);
// };

// function snake(pos){
// 	this.pos = pos.plus(new Vector(0,0));
// 	this.size = new Vector(1,1);
// 	this.speed = new Vector(0,0);
// }

// snake.prototype.type = "snake";

// function food(pos){
// 	this.pos = new Vector(0,0);
// 	this.size = new Vector(1,1);
// }

// food.prototype.type = "coin";

var xSpeed = 0, ySpeed = 1, snakeX = 360, snakeY = 370;
var foodX = 200, foodY = 200;
var snake = document.querySelector("div.snake");
var food = document.querySelector("div.food");
var run = false;

addEventListener("keydown", function(event){
		if (event.keyCode == 37){
			xSpeed = -1;
			ySpeed = 0;}
		if (event.keyCode == 38){
			xSpeed = 0;
			ySpeed = -1;}
		if (event.keyCode == 39){
			xSpeed = 1;
			ySpeed = 0;}
		if (event.keyCode == 40){
			xSpeed = 0;
			ySpeed = 1;}
		if (event.keyCode == 32){
			run = !run
			requestAnimationFrame(animate);}
})

function animate(time){
		snakeX += xSpeed*10;
		snakeY += ySpeed*10;
		snake.style.top = Math.floor(snakeY) + "px";
		snake.style.left = Math.floor(snakeX) + "px";
		food.style.top = foodY + "px";
		food.style.left = foodX + "px";
		if (run == true)
			requestAnimationFrame(animate);
		if (snakeX < 110 || snakeY < 110 || snakeX > 600 || snakeY > 600){
			alert("YOU LOSE!");
			snakeX = 360;
			snakeY = 360;
			run = false;}
		if (snakeX == foodX && snakeY == foodY){
			foodX = 110 + (Math.floor((Math,random()*50)+1)*10);
			foodY = 110 + (Math.floor((Math,random()*50)+1)*10);}
}

// requestAnimationFrame(animate)


// L 37
// U 38
// R 39
// D 40