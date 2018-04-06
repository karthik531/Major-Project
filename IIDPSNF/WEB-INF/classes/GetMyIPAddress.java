
package CT;
import java.net.*;
import java.io.*;

public class GetMyIPAddress
{
   public static String main() throws Exception
   {
		URL whatismyip = new URL("http://checkip.amazonaws.com");
		BufferedReader in = new BufferedReader(new InputStreamReader(
        whatismyip.openStream()));

		String ip = in.readLine(); //you get the IP as a String
		System.out.println(ip);

		return 	ip;

  }

   public static void main(String args[]) throws Exception
   {
		System.out.println(main());
   }
}