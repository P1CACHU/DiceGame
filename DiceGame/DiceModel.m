//
//  DiceModel.m
//  DiceGame
//
//  Created by Dmitry on 23.11.17.
//  Copyright © 2017 Dmitry. All rights reserved.
//

#import "DiceModel.h"

@interface DiceModel ()

@property (strong, nonatomic) NSArray *values;

@end

@implementation DiceModel

- (instancetype)init {
    self = [super init];
    if (self) {
        self.values = [DiceModel allowedValues];
        self.current = @"?";
    }
    return self;
}

- (void)roll {
    int randomValue = arc4random() % [self.values count];
    self.current = self.values[randomValue];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"DiceModelChanged" object:self];
}

+ (NSArray *)allowedValues {
    return @[@"1", @"2", @"3", @"4", @"5", @"6"];
}

@end
