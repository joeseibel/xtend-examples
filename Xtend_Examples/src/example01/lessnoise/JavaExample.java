package example01.lessnoise;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Imperative and functional examples of a simple method
 * that takes a List, finds all Strings with a length of 2,
 * and converts those Strings to upper case.
 */
public class JavaExample {
	public List<String> imperative(List<?> list) {
		List<String> result = new ArrayList<>();
		for (Object o : list) {
			if (o instanceof String) {
				String s = (String) o;
				if (s.length() == 2) {
					result.add(s.toUpperCase());
				}
			}
		}
		return result;
	}
	
	public List<String> functional(List<?> list) {
		return list.stream()
				.filter(o -> o instanceof String)
				.map(o -> (String) o)
				.filter(s -> s.length() == 2)
				.map(s -> s.toUpperCase())
				.collect(Collectors.toList());
	}
}