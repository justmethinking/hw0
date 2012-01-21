package test.edu.upenn.cis.cis555.hw0;

import edu.upenn.cis.cis555.hw0.HelloWorld;
import junit.framework.TestCase;

public class HelloWorldTest extends TestCase {
  public void testA() {
	  assertTrue(HelloWorld.writeName() == "Jonathan Leung (jonleung)");
  }
}
