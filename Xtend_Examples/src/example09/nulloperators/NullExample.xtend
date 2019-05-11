package example09.nulloperators

class NullExample {
	def String nestedNullChecks(A a) {
		if (a !== null) {
			val b = a.b
			if (b !== null) {
				val c = b.c
				if (c !== null) {
					val value = c.value
					if (value !== null) {
						return value
					}
				}
			}
		}
		"No value"
	}
	
	def String nullOperators(A a) {
		a?.b?.c?.value ?: "No value"
	}
	
	interface A {
		def B getB()
	}
	
	interface B {
		def C getC()
	}
	
	interface C {
		def String getValue()
	}
}