package com.revature.tier1;

public class SumOverArray {

	public static int IterateAndSum(int[] arr) {
		
		int total = 0;
		if (arr != null) {
			for (int iter=0; iter<arr.length; iter++) {
			total = total + arr[iter];
			}
		}
		System.out.println(total);                        //This code isn't displaying!!
		System.out.println("Hello world!");
	
		return total;
	}
}
