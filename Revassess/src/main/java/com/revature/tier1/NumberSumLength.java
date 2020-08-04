package com.revature.tier1;

public class NumberSumLength {

	public static boolean checkNumberPowerLength(long num) {
		
		//Get length of number.
		//turn to a string
		String strnum = Long.toString(num);
		//get length
		int length = strnum.length();
		double dobLen = length;
		
		//iterate over the length
		char digit;
		String strDigit;
		double numDigit;
		double digitPower;
		double total = 0;
		for(int i=0; i<length; i++) {
			
			//Get a digit
			digit=strnum.charAt(i);
			strDigit = Character.toString(digit);
			numDigit = Double.parseDouble(strDigit);
			
			//Raise the digit to the power of the length of the number
			digitPower = Math.pow(numDigit,dobLen);
			
			//add to the total
			total += digitPower;
			
		}
		
		
		
		
		System.out.println("Hello world");
		
			
		return (num == total);
	}
}
