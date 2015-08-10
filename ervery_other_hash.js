var triangle = ""
for(i = 0; i < 7; i++){
console.log("# # # # #");
	if (i % 2 === 0) {
		console.log(" # # # # #")
	}
}
var size = 10
var board = ""
for(i = 0; i < size; i++){
	for (j = 0; j < size; j++)
		if (j % 2 === 0) {
			board += "#"
		}
		else {
			board += " "
		}
	board += "\n";
}

console.log(board)