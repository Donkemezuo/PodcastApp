//
//  ViewController.m
//  PodCastApp
//
//  Created by Donkemezuo Raymond Tariladou on 8/8/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

#import "ViewController.h" // Thesame name as header file
#import "AppleSearchAPI.h"

// Properties within this @interface block are private
@interface ViewController () <UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *fellowsTV; // nonatomic means non thread issue
@property (nonatomic) NSArray *fellows;
@property (nonatomic) AppleSearchAPI *appleSearchAPI;
@end

@implementation ViewController

- (void)viewDidLoad { // Instance method because of the minus sign
    // With a plus is a class method 
    [super viewDidLoad]; // An instance calling a method
    // Do any additional setup after loading the view.
    _fellowsTV.dataSource = self;
    
    if (!_appleSearchAPI) {
        _appleSearchAPI = [[AppleSearchAPI alloc] init];
    }
    
    [_appleSearchAPI searchPodcast];
    
    
   // let message = "Hello Objective-C" This is invalid in Obj-C
    
    // "*" an object
    
    // Swift was introduced in 2014
    // Last version of Objective-C is Obj-C 2.0
//    NSString *message = [[NSString alloc] init];
//    NSInteger year = 2019;
//    message = @"Hello, Objective-C";
    
    // Literal string
    
    NSString *message = @"Hello, Objective-C";
    // To print
    
    NSLog(@"%@", message);
    
    _fellows = @[@"Ibraheem", @"Raymomd", @"Eli", @"Jamie"];
    
    for(NSString * fellow in _fellows) {
        NSLog(@"fellow: %@", fellow);
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"fellowCell" forIndexPath:indexPath];
    
    NSString *fellow = _fellows[indexPath.row];
    cell.textLabel.text = fellow;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _fellows.count;
}










@end
