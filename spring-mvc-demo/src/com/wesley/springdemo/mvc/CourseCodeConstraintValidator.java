package com.wesley.springdemo.mvc;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import com.wesley.springdemo.mvc.validation.CourseCode;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String>{

	private String coursePrefix;
	
	@Override
	public void initialize(CourseCode theCourseCode) {
		coursePrefix = theCourseCode.value();
	}
	
	// you can add your own custom business logic
	// theCode is data from the form
	// theConstraintValidatorContext give additional error messages if we need it
	@Override
	public boolean isValid(String theCode, ConstraintValidatorContext theConstraintValidatorContext) {
		
		// test if the form data starts with our course prefix
		
		boolean result;
		
		if(theCode != null)
			result = theCode.startsWith(coursePrefix);
		
		else 
			result = true;
		
		return result;
	}	
}
