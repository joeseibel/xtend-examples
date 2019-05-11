package example11.^dispatch

import example06.autocast.Autocast.AdditionExpression
import example06.autocast.Autocast.MultiplicationExpression
import example06.autocast.Autocast.NegationExpression
import example06.autocast.Autocast.RealLiteral

class DispatchExample {
	def dispatch double evaluate(RealLiteral literal) {
		literal.value
	}
	
	def dispatch double evaluate(NegationExpression expression) {
		-evaluate(expression.operand)
	}
	
	def dispatch double evaluate(AdditionExpression expression) {
		evaluate(expression.left) + evaluate(expression.right)
	}
	
	def dispatch double evaluate(MultiplicationExpression expression) {
		evaluate(expression.left) * evaluate(expression.right)
	}
}