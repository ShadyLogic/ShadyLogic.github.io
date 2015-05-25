var xSpeed = 0, ySpeed = 0.1, snakeX = 36, snakeY = 37, speedMod = 1;
var totalScore = 0, foodScore = 1000;
var foodX = 110 + (Math.floor((Math.random()*50))*10);
var foodY = 110 + (Math.floor((Math.random()*50))*10);
var foodText = document.getElementById("foodText");
var scoreText = document.getElementById("scoreText");
var snake = document.querySelector("div.snake");
var food = document.querySelector("div.food");
var run = false;

food.style.top = foodY + "px";
food.style.left = foodX + "px";
snake.style.top = (Math.floor(snakeY)*10) + "px";
snake.style.left = (Math.floor(snakeX)*10) + "px";

addEventListener("keydown", function(event){
		if (event.keyCode == 37){
			xSpeed = -0.1*speedMod;
			ySpeed = 0;}
		if (event.keyCode == 38){
			xSpeed = 0;
			ySpeed = -0.1*speedMod;}
		if (event.keyCode == 39){
			xSpeed = 0.1*speedMod;
			ySpeed = 0;}
		if (event.keyCode == 40){
			xSpeed = 0;
			ySpeed = 0.1*speedMod;}
		if (event.keyCode == 32){
			run = !run
			requestAnimationFrame(animate);}
})

function animate(){
		foodText.textContent = "Food: "+foodScore;
		scoreText.textContent = "Score: "+totalScore;
		snakeX += xSpeed;
		snakeY += ySpeed;
		snake.style.top = (Math.floor(snakeY)*10) + "px";
		snake.style.left = (Math.floor(snakeX)*10) + "px";
		food.style.top = foodY + "px";
		food.style.left = foodX + "px";
		if (snakeX < 11 || snakeY < 11 || snakeX > 61 || snakeY > 61 || foodScore <= 0){
			alert("FINAL SCORE: " + totalScore);
			newGame();}
		if ((Math.floor(snakeX)*10) == foodX && (Math.floor(snakeY)*10) == foodY){
			foodX = 110 + (Math.floor((Math.random()*50))*10);
			foodY = 110 + (Math.floor((Math.random()*50))*10);
			speedMod += 0.1;
			totalScore += foodScore;
			foodScore = 1000;}
		if (run == true)
			requestAnimationFrame(animate);
		foodScore --;

}

function newGame(){
	snakeX = 36;
	snakeY = 36;
	foodX = 110 + (Math.floor((Math.random()*50))*10);
	foodY = 110 + (Math.floor((Math.random()*50))*10);
	foodScore = 1000;
	totalScore = 0;
	speedMod = 1;
	xSpeed = 0;
	ySpeed = 0.1;
	run = false;
}