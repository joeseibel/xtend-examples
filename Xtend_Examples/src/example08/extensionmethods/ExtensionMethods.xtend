package example08.extensionmethods

import java.io.Writer
import java.util.Objects

import static extension java.util.Objects.requireNonNull

class ExtensionMethods {
	def void staticImport(Object o) {
		//Without extension
		Objects.requireNonNull(o)
		
		//With extension
		o.requireNonNull
	}
	
	def private String toHebrew(String english) {
		switch english.toLowerCase {
			case "hello": "שלום"
			case "good morning": "בוקר טוב"
			default: "Unable to translate"
		}
	}
	
	def void locallyVisibleMethod() {
		println("Hello".toHebrew)
	}
	
	def void extensionParameter(extension Writer writer) {
		writer.write("Without extension")
		
		"With extension".write
	}
}