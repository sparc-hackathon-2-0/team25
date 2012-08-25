//
//  Message.h
//  ConTXT
//
//  Created by Dallas Vaughan on 8/25/12.
//  Copyright (c) 2012 Dallas Vaughan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import "DateContext.h"

@interface Message : NSObject
{
}

@property (nonatomic, strong) NSString *messageId;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *sender;
@property (nonatomic, strong) NSString *recipient; 
@property (nonatomic, strong) CLRegion *locationContext;
@property (nonatomic, strong) DateContext *dateContext;
@property (nonatomic, strong) NSMutableArray *notificationDates;

@end
