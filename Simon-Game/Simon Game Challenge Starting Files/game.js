var buttonColours = ["red", "blue", "green", "yellow"];
var gamepattern = [];
var userClickedPattern = [];
var started = false;
var level = 0;

$(document).keydown(function() {
  if (!started) {
    $("#level-title").text("Level " + level);
    nextsequence();
    started = true;
  }
});

function nextsequence() {
  userClickedPattern = [];
  level++;
  $("#level-title").text("Level " + level);

  var randomNumber = Math.floor(Math.random() * 4);
  var randomColor = buttonColours[randomNumber];
  gamepattern.push(randomColor);

  $("#" + randomColor).fadeOut(100).fadeIn(100).fadeOut(100).fadeIn(100);
  playsound(randomColor);

}

$(".btn").click(function() {

  var userChosenColor = this.id;
  userClickedPattern.push(userChosenColor);

  playsound(userChosenColor);
  animatePress(userChosenColor);

  checkAnswer(userClickedPattern.length - 1);
});

function checkAnswer(currentlevel) {
  if (gamepattern[currentlevel] === userClickedPattern[currentlevel]) {
    console.log("yes");
    if (userClickedPattern.length === gamepattern.length) {
      setTimeout(function() {
        nextsequence();
      }, 1000);
    }
  } else {
    console.log("wrong");
    playsound("wrong");
    $("body").addClass("game-over");
    setTimeout(function() {
      $("body").removeClass("game-over");
    }, 200);
    $("#level-title").text("Game Over, Press Any Key to Restart");
    startOver();
  }
}

function startOver() {
  level = 0;
  gamepattern = [];
  started = false;
}

function animatePress(currentColor) {
  $("#" + currentColor).addClass("pressed");
  setTimeout(function() {
    $("#" + currentColor).removeClass("pressed");
  }, 100);
}

function playsound(pColor) {
  var audioFile = "sounds/" + pColor + ".mp3";
  var audio = new Audio(audioFile);
  audio.play();
}
