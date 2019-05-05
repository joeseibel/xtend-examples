package example03.gettersetter

class GetterSetterExample {
	def void testPOJO() {
		val pojo = new POJO
		
		// Java-like method syntax
		pojo.setValue("Using method syntax")
		println(pojo.getValue)
		
		// Field syntax
		pojo.value = "Using field syntax"
		println(pojo.value)
	}
}