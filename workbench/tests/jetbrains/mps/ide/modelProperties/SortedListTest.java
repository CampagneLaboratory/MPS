package jetbrains.mps.ide.modelProperties;

import junit.framework.TestCase;

import java.util.Comparator;
import java.util.LinkedList;
import java.util.Collections;

public class SortedListTest extends TestCase {

  public void testAddToSingletonList() {
    SortedList<Integer> sortedList = new SortedList<Integer>(new IntegerComparator());
    sortedList.add(10);
    sortedList.add(1);
    assertEquals(Integer.valueOf(1), sortedList.get(0));
    assertEquals(Integer.valueOf(10), sortedList.get(1));
  }

  public void testAddToSingletonListBuggy() {
    SortedList<Integer> sortedList = new SortedList<Integer>(new IntegerComparator());
    sortedList.add(1);
    sortedList.add(10);
    assertEquals(Integer.valueOf(1), sortedList.get(0));
    assertEquals(Integer.valueOf(10), sortedList.get(1));
  }

  public void testAddThreeNumbers1() {
    SortedList<Integer> sortedList = new SortedList<Integer>(new IntegerComparator());
    sortedList.add(1);
    sortedList.add(2);
    sortedList.add(3);
    assertEquals(Integer.valueOf(1), sortedList.get(0));
    assertEquals(Integer.valueOf(2), sortedList.get(1));
    assertEquals(Integer.valueOf(3), sortedList.get(2));
  }

  public void testAddThreeNumbers2() {
    SortedList<Integer> sortedList = new SortedList<Integer>(new IntegerComparator());
    sortedList.add(1);
    sortedList.add(3);
    sortedList.add(2);
    assertEquals(Integer.valueOf(1), sortedList.get(0));
    assertEquals(Integer.valueOf(2), sortedList.get(1));
    assertEquals(Integer.valueOf(3), sortedList.get(2));
  }

  public void testAddThreeNumbers3() {
    SortedList<Integer> sortedList = new SortedList<Integer>(new IntegerComparator());
    sortedList.add(2);
    sortedList.add(1);
    sortedList.add(3);
    assertEquals(Integer.valueOf(1), sortedList.get(0));
    assertEquals(Integer.valueOf(2), sortedList.get(1));
    assertEquals(Integer.valueOf(3), sortedList.get(2));
  }

  public void testAddThreeNumbers4() {
    SortedList<Integer> sortedList = new SortedList<Integer>(new IntegerComparator());
    sortedList.add(2);
    sortedList.add(3);
    sortedList.add(1);
    assertEquals(Integer.valueOf(1), sortedList.get(0));
    assertEquals(Integer.valueOf(2), sortedList.get(1));
    assertEquals(Integer.valueOf(3), sortedList.get(2));
  }

  public void testAddThreeNumbers5() {
    SortedList<Integer> sortedList = new SortedList<Integer>(new IntegerComparator());
    sortedList.add(3);
    sortedList.add(2);
    sortedList.add(1);
    assertEquals(Integer.valueOf(1), sortedList.get(0));
    assertEquals(Integer.valueOf(2), sortedList.get(1));
    assertEquals(Integer.valueOf(3), sortedList.get(2));
  }

  public void testAddThreeNumbers6() {
    SortedList<Integer> sortedList = new SortedList<Integer>(new IntegerComparator());
    sortedList.add(3);
    sortedList.add(1);
    sortedList.add(2);
    assertEquals(Integer.valueOf(1), sortedList.get(0));
    assertEquals(Integer.valueOf(2), sortedList.get(1));
    assertEquals(Integer.valueOf(3), sortedList.get(2));
  }

  public void testAddNumbersRandomOrder() {
    // this is probably not the best thing to do...
    int n = 10;
    LinkedList<Integer> numbers = new LinkedList<Integer>();
    for (int i = 0; i < n; i++){
      numbers.add(i);
    }
    Collections.shuffle(numbers);

    SortedList<Integer> sortedList = new SortedList<Integer>(new IntegerComparator());

    for (Integer i : numbers) {
      sortedList.add(i);
    }

    for (int i = 0; i < n; i++) {
      assertEquals("Adding order was " + numbers, Integer.valueOf(i), sortedList.get(i));
    }
  }

  private static class IntegerComparator implements Comparator<Integer> {
    public int compare(Integer o1, Integer o2) {
      return o1.compareTo(o2);
    }
  }
}
