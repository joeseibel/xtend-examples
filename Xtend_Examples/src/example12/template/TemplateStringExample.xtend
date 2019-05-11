package example12.template

import java.util.Map

class TemplateStringExample {
	def void simpleExample() {
		println('''Template string with "double" and 'single' quotes.''')
	}
	
	def void stringInterpolation(int a, int b) {
		println('''«a» + «b» = «a + b»''')
	}
	
	def void templateWithIf(String value) {
		println('''Value is «IF value !== null»«value»«ELSE»missing«ENDIF»''')
	}
	
	def void templateWithLoop(Map<String, String> map) {
		println('''
			Map size: «map.size» {
				«FOR entry : map.entrySet»
				«entry.key» -> «entry.value»
				«ENDFOR»
			}
		''')
	}
}