//
//  Employee.h
//  ClassesObjectiveC
//
//  Created by Karlo Pagtakhan on 01/27/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//Employee Class
@interface Employee : NSObject
//Atomicity has to do with how properties behave in a threaded environment. When you have more than one thread, it’s possible for the setter and the getter to be called at the same time. This means that the getter/setter can be interrupted by another operation, possibly resulting in corrupted data.

@property (nonatomic) NSUInteger employeeNo;
@property (nonatomic) NSString *firstName;
@property (nonatomic) NSString *lastName;
@property (readonly) NSString *fullName;
@property (nonatomic, readonly) NSUInteger annualSalary;
@property (nonatomic) NSUInteger manager;
@property (nonatomic) NSString *department;
@property (nonatomic) UIImage *picture;

+(NSUInteger) employeeNumberCounter;
+(void) setEmployeeNumberCounter;
+(NSUInteger) getNextEmployeeNumberCounter;
    
-(id) init:(NSString *) firstName lastName:(NSString *) lastName;
-(void) setAnnualSalary:(NSUInteger)annualSalary;
@end


//Manager Class
@interface Manager : Employee
@property (nonatomic) NSMutableArray *managedEmployees;

-(void) addEmployeeManaged: (NSUInteger) employeeNo;
-(void) removeEmployeeManaged: (NSUInteger) employeeNo;
@end
