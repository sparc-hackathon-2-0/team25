//
//  MessageTableViewCell.h
//  ConTXT
//
//  Created by Dallas Vaughan on 8/25/12.
//  Copyright (c) 2012 Dallas Vaughan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageTableViewCell : UITableViewCell
{

}
@property(nonatomic,strong) IBOutlet UILabel *senderLabel;
@property(nonatomic,strong) IBOutlet UILabel *textMessageLabel;
@property(nonatomic,strong) IBOutlet UILabel *dateLabel;
@end
