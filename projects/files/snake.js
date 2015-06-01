//VERSION 1.0 STABLE -------------------------------------------------------------------

// var totalScore = 0;
// var foodText = document.getElementById("foodText");
// var scoreText = document.getElementById("scoreText");
// var run = false;

// var snake = {
// 	domElement : document.querySelector("div.snake"),
// 	posx : 36,
// 	posy : 37,
// 	xSpeed : 0,
// 	ySpeed : 0.1,
// 	speedMod : 1
// }

// var food = {
// 	domElement : document.querySelector("div.food"),
// 	posx : 235,
// 	posy : 77,
// 	pointValue : 1000,
// 	newPosition : function(){
// 		food.posx = 110 + (Math.floor((Math.random()*50))*10);
// 		food.posy = 110 + (Math.floor((Math.random()*50))*10);
// 	}
// }

// renderGraphics();
// food.newPosition();

// addEventListener("keydown", function(event){
// 	if (event.keyCode == 37){
// 		snake.xSpeed = -0.1*snake.speedMod;
// 		snake.ySpeed = 0;}
// 	if (event.keyCode == 38){
// 		snake.xSpeed = 0;
// 		snake.ySpeed = -0.1*snake.speedMod;}
// 	if (event.keyCode == 39){
// 		snake.xSpeed = 0.1*snake.speedMod;
// 		snake.ySpeed = 0;}
// 	if (event.keyCode == 40){
// 		snake.xSpeed = 0;
// 		snake.ySpeed = 0.1*snake.speedMod;}
// 	if (event.keyCode == 32){
// 		run = !run
// 		requestAnimationFrame(gameClock);}
// })

// function gameClock(){
// 	foodDecay();
// 	updateSnakePosition();
// 	renderGraphics();
// 	gameLogic();
// 	if (run == true)
// 		requestAnimationFrame(gameClock);

// }

// function foodDecay(){
// 	food.pointValue --;
// }

// function updateSnakePosition(){
// 	snake.posx += snake.xSpeed;
// 	snake.posy += snake.ySpeed;
// }

// function renderGraphics(){
// 	snake.domElement.style.top = (Math.floor(snake.posy)*10) + "px";
// 	snake.domElement.style.left = (Math.floor(snake.posx)*10) + "px";
// 	food.domElement.style.top = food.posy + "px";
// 	food.domElement.style.left = food.posx + "px";
// 	foodText.textContent = "Food: "+food.pointValue;
// 	scoreText.textContent = "Score: "+totalScore;
// }

// function gameLogic(){
// 	if (snake.posx < 11 || snake.posy < 11 || snake.posx > 61 || snake.posy > 61 || food.pointValue <= 0)
// 		die();
// 	if ((Math.floor(snake.posx)*10) == food.posx && (Math.floor(snake.posy)*10) == food.posy){
// 		eatFood();
// }
	

// function die(){
// 	alert("FINAL SCORE: " + totalScore);
// 	newGame();
// }

// function newGame(){
// 	snake.posx = 36;
// 	snake.posy = 36;
// 	food.newPosition();
// 	food.pointValue = 1000;
// 	totalScore = 0;
// 	snake.speedMod = 1;
// 	snake.xSpeed = 0;
// 	snake.ySpeed = 0.1;
// 	run = false;
// }

// function eatFood(){
// 	food.newPosition();
// 	snake.speedMod += 0.1;
// 	totalScore += food.pointValue;
// 	food.pointValue = 1000;}
// }




//VERSION 1.1 BETA --------------------------------------------------------------

var totalScore = 0;

var foodText = document.createElement('div');
foodText.id = 'foodText';
document.getElementsByTagName('body')[0].appendChild(foodText);

var scoreText = document.createElement('div');
scoreText.id = 'scoreText';
document.getElementsByTagName('body')[0].appendChild(scoreText);

var wall = document.createElement('div');
wall.className = 'wall';
document.getElementsByTagName('body')[0].appendChild(wall);

var run = false;

var snake = {
	domElement : document.createElement('div'),
	posx : 36,
	posy : 37,
	xSpeed : 0,
	ySpeed : 0.1,
	speedMod : 1,
	tail : 1,
	tailXYs : [[36,36]]
}
snake.domElement.className = 'snake';
document.getElementsByTagName('body')[0].appendChild(snake.domElement);

var food = {
	domElement : document.createElement('div'),
	posx : 235,
	posy : 77,
	pointValue : 1000,
	newPosition : function(){
		food.posx = 110 + (Math.floor((Math.random()*50))*10);
		food.posy = 110 + (Math.floor((Math.random()*50))*10);
	}
}
food.domElement.className = 'food';
document.getElementsByTagName('body')[0].appendChild(food.domElement);

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
	renderTail();
	cleanupTails();
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
	if (snake.tailXYs[0][0] != Math.floor(snake.posx) || snake.tailXYs[0][1] != Math.floor(snake.posy)){
		tailShift();
		renderTail();
		cleanupTails();
	}
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

	snake.tailXYs = [[36,36]];
	snake.tail = 1;
}

function eatFood(){
	food.newPosition();
	snake.speedMod += 0.1;
	totalScore += food.pointValue;
	food.pointValue = 1000;
	snake.tail ++;
}

function tailShift(){
	var currentPos = [Math.floor(snake.posx), Math.floor(snake.posy)];
	snake.tailXYs.unshift(currentPos);
	if (snake.tailXYs.length > snake.tail)
		snake.tailXYs.pop();
}

function renderTail(){
	var tailPiece = snake.tailXYs;
	for (i = 1; i < snake.tail; i++){
		var tailDiv = document.createElement('div');
		tailDiv.id = 'tail';
		document.getElementsByTagName('body')[0].appendChild(tailDiv);
		tailDiv.style.top = (Math.floor(snake.tailXYs[i-1][1])*10) + "px";
		tailDiv.style.left = (Math.floor(snake.tailXYs[i-1][0])*10) + "px";
	}
	console.log("TAIL!");
}

function cleanupTails(){
	for (i = 1; i < (snake.tail); i+=1){
		document.getElementsByTagName('body')[0].removeChild(document.getElementById("tail"));
	}
}