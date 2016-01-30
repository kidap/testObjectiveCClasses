//
//  ViewController.m
//  ClassesObjectiveC
//
//  Created by Karlo Pagtakhan on 01/27/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "ViewController.h"
#import "Employee.h"
#import "EmployeeTableViewCell.h"
#import "UIKit/UIKit.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic,strong) NSMutableArray *allEmployees;
@end

@implementation ViewController
Employee *firstEE;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSInteger inputSalary = 120000;
    
    Employee *firstEE = [[Employee alloc] init:@"Michael" lastName:@"Jordan"];
    firstEE.picture = [UIImage imageNamed:@"mj"];
    self.allEmployees = [[NSMutableArray alloc] init];
    
    firstEE.annualSalary = (NSUInteger) inputSalary;
    [firstEE setAnnualSalary:(NSUInteger)inputSalary];
    
    //NSLog(@"%@", firstEE.fullName);
    //NSLog(@"%ld", firstEE.annualSalary);
    
    
    Manager *firstManager = [[Manager alloc] init:@"Captain" lastName:@"Ughmerica"];
    firstManager.picture = [UIImage imageNamed:@"cap"];
    
    
    Manager *subManager = [[Manager alloc] init:@"Tony" lastName:@"Stark"];
    subManager.picture = [UIImage imageNamed:@"tony"];
    
    [firstManager addEmployeeManaged:firstEE.employeeNo];
    
    [firstManager addEmployeeManaged:subManager.employeeNo];
    
    
    [self.allEmployees addObject:firstEE];
    [self.allEmployees addObject:firstManager];
    [self.allEmployees addObject:subManager];
    
    //[allEmployees addObjectsFromArray:[firstEE, firstManager, subManager]];
    
    [self.allEmployees enumerateObjectsUsingBlock:^(id object, NSUInteger idx, BOOL *stop) {
        if ([object isKindOfClass:[Employee class]]){
            Employee *employee = object;
            NSLog(@"Employee no: %lu \tFull Name: %@", employee.employeeNo, employee.fullName);
        }
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.allEmployees.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EmployeeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EmployeeCell" forIndexPath:indexPath];
    if (cell != nil){
        cell.employeeName.text = [self.allEmployees[indexPath.row] fullName];
        cell.imageView.image = [self.allEmployees[indexPath.row] picture];
    }
    return cell;
}

@end
