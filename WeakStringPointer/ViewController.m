//
//  ViewController.m
//  WeakStringPointer
//
//  Created by Xuan on 11/4/15.
//  Copyright © 2015 Wingzero. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)clicked:(id)sender;

@property (nonatomic, copy) NSString *testString;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)clickBlock:(void (^)(NSString * string))block {
    if (block) {
        block(@"haha");
    }
}

- (IBAction)clicked:(id)sender {
    __weak typeof(self) weakSelf = self;
    __weak NSString *text = self.textField.text;
    
//    [self clickBlock:^(NSString *string) {
//        NSLog(text);
//        NSLog(string);
//    }];
    
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        weakSelf.testString = text;
//    });
    
    
}
@end
