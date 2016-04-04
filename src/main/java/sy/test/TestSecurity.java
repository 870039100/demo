package sy.test;

import org.junit.Test;

import sy.util.MD5Utils;

public class TestSecurity {
	
	@Test
	public void test01(){
		System.out.println(MD5Utils.MD5Encode("user"));
		
	}

}
