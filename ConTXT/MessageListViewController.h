//
//  MessageListViewController.h
//  ConTXT
//
//  Created by Dallas Vaughan on 8/25/12.
//  Copyright (c) 2012 Dallas Vaughan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MessageStore.h"

@interface MessageListViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    MessageStore *messageStore;
}
@end
