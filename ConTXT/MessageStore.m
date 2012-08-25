//
//  MessageStore.m
//  ConTXT
//
//  Created by Dallas Vaughan on 8/25/12.
//  Copyright (c) 2012 Dallas Vaughan. All rights reserved.
//

#import "MessageStore.h"

@implementation MessageStore
+ (MessageStore *)defaultStore
{
    static MessageStore *defaultStore = nil;
    if(!defaultStore)
        defaultStore = [[super allocWithZone:nil] init];
    
    return defaultStore;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self defaultStore];
}

- (id)init
{
    self = [super init];
    if(self) {
        messages = [[NSMutableArray alloc] init];
    }
    return self;
}
-(void) addItem:(Message *)message
{
    [messages addObject:message];
}

- (void)removeItem:(Message *)message
{
    [messages removeObjectIdenticalTo:message];
}

- (NSArray *)messages
{
    return messages;
}

@end
