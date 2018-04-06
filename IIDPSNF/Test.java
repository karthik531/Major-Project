import java.util.*;
class Test 
{
	public static void main(String[] args) 
	{

			List<Integer> l1 = new ArrayList<Integer>();

						l1.add(1);
						l1.add(2);
						l1.add(3);

						List<Integer> l2= new ArrayList<Integer>();
						l2.add(1);
						l2.add(1);
						l2.add(1);

						System.out.println("l1 == "+l1);
						System.out.println("l2 == "+l2);

						List<Integer> l3 = new ArrayList<Integer>(l2);
						l3.retainAll(l1);

			System.out.println("l3 == "+l3);
	}
}
