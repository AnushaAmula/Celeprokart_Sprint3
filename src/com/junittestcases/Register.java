package com.junittestcases;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

@RunWith(Suite.class)
@SuiteClasses({ SignUpTestFalse.class, SignUpTestTrue.class })
public class Register {

}
