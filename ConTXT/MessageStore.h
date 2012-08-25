//
//  MessageStore.h
//  ConTXT
//
//  Created by Dallas Vaughan on 8/25/12.
//  Copyright (c) 2012 Dallas Vaughan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Message.h"

@interface MessageStore : NSObject
{
    NSMutableArray *messages;
}

+ (MessageStore *)defaultStore;

- (void)addItem:(Message *)message;

- (void)removeItem:(Message *)message;

- (NSArray *)messages;

@end
