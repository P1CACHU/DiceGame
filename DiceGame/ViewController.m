//
//  ViewController.m
//  DiceGame
//
//  Created by Dmitry on 23.11.17.
//  Copyright © 2017 Dmitry. All rights reserved.
//

#import "ViewController.h"
#import "DiceModel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *diceButton;
@property (strong, nonatomic) DiceModel *model;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [[DiceModel alloc] init];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(diceUpdated:) name:@"DiceModelChanged" object:nil];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)diceUpdated:(NSNotification *)notification {
    [self.diceButton setTitle:self.model.current forState:UIControlStateNormal];
}

- (IBAction)onDiceClicked {
    [self.model roll];
}


@end
