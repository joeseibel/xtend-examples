package example05.expressions

import org.eclipse.xtend.lib.annotations.Accessors

class ExpressionsExample {
	def void ifExpression(int number) {
		val evenOrOdd = if (number % 2 == 0) {
			"Even"
		} else {
			"Odd"
		}
		println(number + " is " + evenOrOdd)
	}
	
	enum Color { RED, GREEN, BLUE }
	
	@Accessors
	static class RGB {
		val int r
		val int g
		val int b
	}
	
	def RGB switchExpression(Color color) {
		switch color {
			case RED: new RGB(255, 0, 0)
			case GREEN: new RGB(0, 255, 0)
			case BLUE: new RGB(0, 0, 255)
		}
	}
	
	// Default expression value
	
	def emptyMethodBody() {
	}
	
	def noElse(boolean condition) {
		if (condition) {
			"true"
		}
	}
	
	def missingCases(int number) {
		switch number {
			case 1: "one"
			case 2: "two"
			case 3: "three"
		}
	}
}