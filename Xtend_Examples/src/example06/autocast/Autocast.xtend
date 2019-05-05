package example06.autocast

class Autocast {
	interface Expression {
	}
	
	interface RealLiteral extends Expression {
		def double getValue()
	}
	
	interface NegationExpression extends Expression {
		def Expression getOperand()
	}
	
	interface AdditionExpression extends Expression {
		def Expression getLeft()
		def Expression getRight()
	}
	
	interface MultiplicationExpression extends Expression {
		def Expression getLeft()
		def Expression getRight()
	}
	
	// Does not use auto-cast
	def double evaluate(Expression expression) {
		if (expression instanceof RealLiteral) {
			(expression as RealLiteral).value
		} else if (expression instanceof NegationExpression) {
			-evaluate((expression as NegationExpression).operand)
		} else if (expression instanceof AdditionExpression) {
			val addition = expression as AdditionExpression
			evaluate(addition.left) + evaluate(addition.right)
		} else if (expression instanceof MultiplicationExpression) {
			// Note the warning on the 'if'
			val multiplication = expression as MultiplicationExpression
			evaluate(multiplication.left) * evaluate(multiplication.right)
		}
	}
	
	def double evalAuto(Expression expression) throws Exception {
		if (expression instanceof RealLiteral) {
			expression.value
		} else if (expression instanceof NegationExpression) {
			-evalAuto(expression.operand)
		} else if (expression instanceof AdditionExpression) {
			evalAuto(expression.left) + evalAuto(expression.right)
		} else if (expression instanceof MultiplicationExpression) {
			evalAuto(expression.left) * evalAuto(expression.right)
		} else {
			throw new Exception("Unhandled Expression: " + expression)
		}
	}
	
	// Note that there is no 'throws'
	def double evalSwitch(Expression expression) {
		switch expression {
			RealLiteral: expression.value
			NegationExpression: -evalSwitch(expression.operand)
			AdditionExpression: evalSwitch(expression.left) + evalSwitch(expression.right)
			MultiplicationExpression: evalSwitch(expression.left) * evalSwitch(expression.right)
			default: throw new Exception("Unhandled Expression: " + expression)
		}
	}
}