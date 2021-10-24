# RPS = Rock Paper Scissors

POSSIBLE_HANDSIGNS = ["rock", "paper", "scissors"];

index = Math.floor(Math.random() * POSSIBLE_HANDSIGNS.length);
playersHandsign = process.argv[2];

if playersHandsign == undefined
	console.log "You need to provide a handsign by adding it as one of the parameters\nExample: coffee RPS.coffee rock";
	process.exit 1;

playersHandsign = playersHandsign.toLowerCase();

if playersHandsign not in POSSIBLE_HANDSIGNS
	console.log "Your handsign must be either rock, paper, or scissors";
	process.exit 1;

console.log "Rock\nPaper\nScissors\nShoot!\n";

if playersHandsign != POSSIBLE_HANDSIGNS[index]
	if POSSIBLE_HANDSIGNS[(index + 1) % POSSIBLE_HANDSIGNS.length] == playersHandsign
		console.log "#{playersHandsign} beats #{POSSIBLE_HANDSIGNS[index]}!\nYou won!";
	else
		console.log "#{POSSIBLE_HANDSIGNS[index]} beats #{playersHandsign}!\nYou lost";
else
	console.log "You both used #{playersHandsign}\nIt's a tie!";
