package CT;

import java.util.*;

public class NGrams {

    public static List<String> ngrams(String str) {

		int n=5;


        List<String> ngrams = new ArrayList<String>();
        String[] words = str.split("\\s+");
        for (int i = 0; i < words.length - n + 1; i=i+n){
			
            ngrams.add(concat(words, i, i+n));
        }
		return ngrams;

    }

    public static String concat(String[] words, int start, int end) {
        StringBuilder sb = new StringBuilder();
        for (int i = start; i < end; i++)
            sb.append((i > start ? " " : "") + words[i]);
        return sb.toString();
    }

    public static void main(String[] args) {
                System.out.println(ngrams("hi sajid,"));
        //    System.out.println();
         }
}