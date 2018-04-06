
package CT;
import java.util.*;
import java.text.*;

public class DateDemo {

   public static String main() {
      Date dNow = new Date( );
      SimpleDateFormat ft = 
      new SimpleDateFormat ("yyyy.MM.dd 'at' hh:mm:ss ");
      System.out.println("Current Date: " + ft.format(dNow));

	   return ft.format(dNow);
   }
   
	public static void main(String[] args) 
	{
		System.out.println(main());
	}
}
