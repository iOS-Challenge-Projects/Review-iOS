//
//  ViewController.m
//  Obj-C Start
//
//  Created by FGT MAC on 6/1/21.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIButton *testButton;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"Courses";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    
}


- (IBAction)TestButton:(id)sender {
    
}



@end
