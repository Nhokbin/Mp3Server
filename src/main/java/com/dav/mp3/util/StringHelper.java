package com.dav.mp3.util;

import java.text.Normalizer;
import java.util.regex.Pattern;

import org.springframework.util.StringUtils;

public class StringHelper {

	public static String ToUnsignString(String input) {
		input = input.trim();
		for (int i = 0x20; i < 0x30; i++) {
			input = input.replace(((char) i), ' ');
		}
		input = input.replace(".", "-");
		input = input.replace(" ", "-");
		input = input.replace(",", "-");
		input = input.replace(";", "-");
		input = input.replace(":", "-");
		input = input.replace("  ", "-");
		input = input.replace("<", "-");
		input = input.replace(">", "-");
		input = input.replace("@", "-");
		input = input.replace("!", "-");
		input = input.replace("#", "-");
		input = input.replace("*", "-");
		input = input.replace("?", "-");

		String temp = Normalizer.normalize(input, Normalizer.Form.NFD);
		Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
		String str2 = pattern.matcher(temp).replaceAll("").toLowerCase().replaceAll(" ", "-").replaceAll("đ", "d")
				.replaceAll("Đ", "D");

		try{
			while (str2.indexOf("?") >= 0) {
				str2 = str2.substring(str2.indexOf("?"), 1);
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		while (str2.contains("--")) {
			str2 = str2.replace("--", "-").toLowerCase();
		}

		return str2;
	}
}
