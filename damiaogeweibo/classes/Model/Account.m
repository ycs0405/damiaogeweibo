//
//  Account.m
//  damiaogeweibo
//
//  Created by Singer on 14-8-30.
//  Copyright (c) 2014年 Singer. All rights reserved.
//

#import "Account.h"

@implementation Account
-(id)initWithCoder:(NSCoder *)decoder{
    if (self == [super init]) {
        self.accessToken = [decoder decodeObjectForKey:kAccessToken];
        self.uid = [decoder decodeObjectForKey:kUid];
    }

    return nil;
}

-(void)encodeWithCoder:(NSCoder *)encoder{
    [encoder encodeObject:self.accessToken forKey:kAccessToken];
    [encoder encodeObject:self.uid forKey:kUid];
}
@end
