/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validation;

import static java.lang.Integer.parseInt;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Marvin Hernandez
 */
public class Validation {
    
    /**
     * @name isInteger
     * @param value String :
     * @return boolean : 
     * @description: return when the param is number or false when the param is not number
     */
    public static boolean isInteger(String value)
    {
        int result;
        boolean flag=true;
        
        try{
        result=parseInt(value);
        }
        catch (NumberFormatException e)
        {
            flag=false;
        }
        return flag;
    }
    
    public static boolean isBetween(int num,int max,int min)
    {
        boolean flag=false;
        if(num >= min && num <= max)
        {
            flag=true;
        }
        else
        {
            flag=false;
        }
        return flag;
    }
    
    private static final String PATTERN_EMAIL = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
 
    /**
     * Validate given email with regular expression.
     * 
     * @param email
     *            email for validation
     * @return true valid email, otherwise false
     */
    public static boolean validateEmail(String email) {
 
        // Compiles the given regular expression into a pattern.
        Pattern pattern = Pattern.compile(PATTERN_EMAIL);
 
        // Match the given input against this pattern
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }
    
    
    
    private static final String PATTERN_NAME = "^[\\p{L} .'-]+$"; //unicode ¿? (copy paste of internet)
 
    /**
     * Validate given name with regular expression.
     * 
     * @param name
     *            name for validation
     * @return true valid name, otherwise false
     */
    public static boolean validateName(String name) {
 
        // Compiles the given regular expression into a pattern.
        Pattern pattern = Pattern.compile(PATTERN_NAME);
 
        // Match the given input against this pattern
        Matcher matcher = pattern.matcher(name);
        return matcher.matches();
    }
    
    
    
    
}
