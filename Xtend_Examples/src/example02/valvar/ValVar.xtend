package example02.valvar

class ValVar {
	// Explicit types
	val public int meaningOfLife = 42
	
	// Implicit types
	val public pi = 3.14
	
	def String changeName() {
		var name = "Joe"
		name = "Tyler"
		name
	}
}