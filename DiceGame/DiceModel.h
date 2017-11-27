//
//  DiceModel.h
//  DiceGame
//
//  Created by Dmitry on 23.11.17.
//  Copyright © 2017 Dmitry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DiceModel : NSObject

@property (strong, nonatomic) NSString *current;

- (instancetype)init;
- (void)roll;

@end
