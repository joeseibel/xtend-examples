package example10.arrow

import example06.autocast.Autocast.AdditionExpression
import example06.autocast.Autocast.Expression
import example06.autocast.Autocast.MultiplicationExpression
import example06.autocast.Autocast.NegationExpression
import example06.autocast.Autocast.RealLiteral

class ArrowExample {
	// Tests the expression -1 * (2 + 3)
	def void testExpression(Expression expression) {
		expression as MultiplicationExpression => [
			left as NegationExpression => [
				1.assertEquals((operand as RealLiteral).value)
			]
			right as AdditionExpression => [
				2.assertEquals((left as RealLiteral).value)
				3.assertEquals((right as RealLiteral).value)
			]
		]
	}
	
	def void assertEquals(double expected, double actual) {
		throw new UnsupportedOperationException()
	}
}