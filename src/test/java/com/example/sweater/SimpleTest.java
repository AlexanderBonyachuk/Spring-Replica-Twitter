package com.example.sweater;

import org.junit.Assert;
import org.junit.Test;

public class  SimpleTest {
    @Test
    public void test() {
        int x = 2;
        int y = 23;

        Assert.assertEquals(25, x + y);
        Assert.assertEquals(46, x * y);
    }

    @Test(expected = ArithmeticException.class)
    public void error() {
        int i = 0;
        int i1 = 1 / i;
    }
}
