//
//  Message.m
//  ConTXT
//
//  Created by Dallas Vaughan on 8/25/12.
//  Copyright (c) 2012 Dallas Vaughan. All rights reserved.
//

#import "Message.h"

@implementation Message
@synthesize dateContext,locationContext,messageId,notificationDates,recipient,sender,text;

- (NSString *)description
{
    if (text)
        return text;
    else
        return @"";
}

@end
