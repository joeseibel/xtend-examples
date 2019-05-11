package example07.collections

class CollectionsExample {
	val public listLiteral = #["one", "two", "three"]
	
	val public setLiteral = #{"four", "fix", "six"}
	
	val public mapLiteral = #{"seven" -> 7, "eight" -> 8, "nine" -> 9}
	
	val public String[] implicitConversion = listLiteral
	
	val public concatExample = listLiteral + setLiteral
}