//
//  MagicalCreature.m
//  MCMS
//
//  Created by Michael Sevy on 3/17/15.
//  Copyright (c) 2015 Michael Sevy. All rights reserved.
//

#import "MagicalCreature.h"

@implementation MagicalCreature

-(instancetype)initWithFullName:(NSString *)name;{
    self = [super init];

    if (self) {
        self.name = name;
    }

    return self;

}
@end
