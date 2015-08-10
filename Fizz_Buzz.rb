x = 0
while (x < 101) {
	if (x % 3 == 0 && x % 5 == 0){
		console.log("FizzBuzz");
	}
	else if (x % 3 == 0) {
		console.log("Fizz");
	}
	else if (x % 5 == 0) {
		console.log("Buzz");
	}
	x += 1
}
