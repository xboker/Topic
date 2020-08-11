//
//  ViewController.m
//  Topic
//
//  Created by xiekunpeng on 2020/7/6.
//  Copyright © 2020 xboker. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "ViewController5.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)topic1:(id)sender {
    ViewController1 *c = [[ViewController1 alloc] init];
    [self.navigationController pushViewController:c animated:YES];
}
- (IBAction)topic2:(id)sender {
    ViewController2 *c = [[ViewController2 alloc] init];
    [self.navigationController pushViewController:c animated:YES];
}
- (IBAction)topic3:(id)sender {
    ViewController3 *c = [[ViewController3 alloc] init];
    [self.navigationController pushViewController:c animated:YES];
}


- (IBAction)topic4:(id)sender {
    ViewController4 *c = [[ViewController4 alloc] init];
    [self.navigationController pushViewController:c animated:YES];
}

- (IBAction)topic5:(id)sender {
    ViewController5 *c = [[ViewController5 alloc] init];
    [self.navigationController pushViewController:c animated:YES];
}

@end
