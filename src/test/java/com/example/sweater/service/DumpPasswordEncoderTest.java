package com.example.sweater.service;

import com.example.sweater.DumpPasswordEncoder;
import org.hamcrest.Matchers;
import org.junit.Assert;
import org.junit.Test;

public class DumpPasswordEncoderTest {

    @Test
    public void encode() {
        DumpPasswordEncoder encoder = new DumpPasswordEncoder();

        Assert.assertEquals("secret: 'mypwd'", encoder.encode("mypwd"));
        Assert.assertThat(encoder.encode("mypwd"), Matchers.containsString("mypwd"));
    }
}