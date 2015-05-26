var totalScore = 0;
var foodText = document.getElementById("foodText");
var scoreText = document.getElementById("scoreText");
var run = false;

var snake = {
	domElement : document.querySelector("div.snake"),
	posx : 36,
	posy : 37,
	xSpeed : 0,
	ySpeed : 0.1,
	speedMod : 1
}

var food = {
	domElement : document.querySelector("div.food"),
	posx : 235,
	posy : 77,
	pointValue : 1000,
	newPosition : function(){
		food.posx = 110 + (Math.floor((Math.random()*50))*10);
		food.posy = 110 + (Math.floor((Math.random()*50))*10);
	}
}

renderGraphics();
food.newPosition();

addEventListener("keydown", function(event){
	if (event.keyCode == 37){
		snake.xSpeed = -0.1*snake.speedMod;
		snake.ySpeed = 0;}
	if (event.keyCode == 38){
		snake.xSpeed = 0;
		snake.ySpeed = -0.1*snake.speedMod;}
	if (event.keyCode == 39){
		snake.xSpeed = 0.1*snake.speedMod;
		snake.ySpeed = 0;}
	if (event.keyCode == 40){
		snake.xSpeed = 0;
		snake.ySpeed = 0.1*snake.speedMod;}
	if (event.keyCode == 32){
		run = !run
		requestAnimationFrame(gameClock);}
})

function gameClock(){
	foodDecay();
	updateSnakePosition();
	renderGraphics();
	gameLogic();
	if (run == true)
		requestAnimationFrame(gameClock);

}

function foodDecay(){
	food.pointValue --;
}

function updateSnakePosition(){
	snake.posx += snake.xSpeed;
	snake.posy += snake.ySpeed;
}

function renderGraphics(){
	snake.domElement.style.top = (Math.floor(snake.posy)*10) + "px";
	snake.domElement.style.left = (Math.floor(snake.posx)*10) + "px";
	food.domElement.style.top = food.posy + "px";
	food.domElement.style.left = food.posx + "px";
	foodText.textContent = "Food: "+food.pointValue;
	scoreText.textContent = "Score: "+totalScore;
}

function gameLogic(){
	if (snake.posx < 11 || snake.posy < 11 || snake.posx > 61 || snake.posy > 61 || food.pointValue <= 0)
		die();
	if ((Math.floor(snake.posx)*10) == food.posx && (Math.floor(snake.posy)*10) == food.posy){
		eatFood();
}
	

function die(){
	alert("FINAL SCORE: " + totalScore);
	newGame();
}

function newGame(){
	snake.posx = 36;
	snake.posy = 36;
	food.newPosition();
	food.pointValue = 1000;
	totalScore = 0;
	snake.speedMod = 1;
	snake.xSpeed = 0;
	snake.ySpeed = 0.1;
	run = false;
}

function eatFood(){
	food.newPosition();
	snake.speedMod += 0.1;
	totalScore += food.pointValue;
	food.pointValue = 1000;}
}