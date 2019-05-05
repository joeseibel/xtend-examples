package example01.lessnoise;

import java.util.List;
import java.util.stream.Collectors;

/*
 * Imperative and functional examples of a simple method
 * that takes a List, finds all Strings with a length of 2,
 * and converts those Strings to upper case.
 */
public class XtendExample {
	/*
	 * Changes made to convert to Xtend:
	 * 
	 * - 'def' keyword
	 * - Lambda syntax
	 * - Cast syntax
	 */
	def public List<String> initialExample(List<?> list) {
		return list.stream()
				.filter([o | o instanceof String])
				.map([o | o as String])
				.filter([s | s.length() == 2])
				.map([s | s.toUpperCase()])
				.collect(Collectors.toList());
	}
	
	/*
	 * Noise removed:
	 * 
	 * - Visibility modifier
	 * - Semicolon
	 * - Empty parentheses
	 * - 'return' keyword
	 * - Xtend filter and map instead of stream
	 * - Filter type
	 * - Final lambda after parenthesis
	 * - 'it' parameter
	 * - Remove 'it'
	 * - Inferred return type
	 */
	def finalExample(List<?> list) {
		list.filter(String)
				.filter[length == 2]
				.map[toUpperCase]
				.toList
	}
}