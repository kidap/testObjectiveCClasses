//
//  Employee.m
//  ClassesObjectiveC
//
//  Created by Karlo Pagtakhan on 01/27/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "Employee.h"



//Employee Class
@implementation Employee

//Static property
static NSUInteger employeeNumberCounter = 0;

-(id) init:(NSString *) firstName lastName:(NSString *) lastName{
    //using self you get access to the property using setter and getter methods
    self.employeeNo = Employee.employeeNumberCounter;
    self.firstName = firstName;
    self.lastName  = lastName;
    
    // _ is directly accessing the property
    _fullName  = [NSString stringWithFormat:@"%@ %@", firstName,lastName];
    return self;
}

//Static methods
// Get new employee number
+(NSUInteger) employeeNumberCounter{
    employeeNumberCounter += 1;

    return employeeNumberCounter;
}
+(void) setEmployeeNumberCounter{

}

+(NSUInteger) getNextEmployeeNumberCounter{
    return employeeNumberCounter + 1;
};

// Instance methods
-(void) setAnnualSalary:(NSUInteger)annualSalary{
    _annualSalary = annualSalary;
}

@end


//Manager Class
@implementation Manager

-(void) addEmployeeManaged: (NSUInteger) employeeNo{

}
-(void) removeEmployeeManaged: (NSUInteger) employeeNo{
}

@end
