/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;

import org.junit.Assert;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.BeforeClass;
import validation.Validation;

/**
 *
 * @author alumne
 */
public class validateNameTest {
    
    private static String[] validNames, invalidNames;
 
    /**
     * Load data to run the tests.
     */
    @BeforeClass
    public static void emailProviderText() {
        validNames = new String[] { "marvin",
                "marvin hernandez", "paco",
                "pepe", "pepita",
                "PEPITA", "Pepa" };
 
        invalidNames = new String[] { "example14", "example@.com.com",
                "exampel101@test.a", "exampel101@.com", ".example@test.com",
                "example**()@test.com", "example@%*.com"};
    }
 
    /**
     * Test which validate an array of valid names.
     */
    @Test
    public void validNameTest() {
 
        for (String temp : validNames) {
 
            // Check if the names is valid using our method.
            boolean valid = Validation.validateName(temp);
            System.out.println("Name is valid : " + temp + " , " + valid);
 
            // All of names of this test must be valid.
            Assert.assertEquals(valid, true);
        }
 
    }
 
    /**
     * Test which validate an array of invalid names.
     */
    @Test
    public void invalidNameTest() {
 
        for (String temp : invalidNames) {
 
            // Check if the names is valid using our method.
            boolean valid = Validation.validateName(temp);
            System.out.println("Name is valid : " + temp + " , " + valid);
 
            // All of names of this test must be invalid.
            Assert.assertEquals(valid, false);
        }
 
    }
    
}
