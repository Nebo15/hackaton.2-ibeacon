//
//  EBMemberCell.m
//  EBNebo15
//
//  Created by Evgen Bakumenko on 11/27/13.
//  Copyright (c) 2013 Evgen Bakumenko. All rights reserved.
//

#import "EBMemberCell.h"
#import "EBMember.h"
#import "NSDate+Converter.h"
#import <FacebookSDK/FBProfilePictureView.h>
@import CoreLocation;

@interface EBMemberCell()

@property (weak, nonatomic) IBOutlet FBProfilePictureView *memberAvatarView;
@property (weak, nonatomic) IBOutlet UILabel *memberNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *updateDateLabel;

@end

@implementation EBMemberCell

+ (UINib*)nib
{
    return [UINib nibWithNibName:@"EBMemberCell" bundle:nil];
}

- (void)configureCellWithMember:(EBMember*)member
{
    _memberAvatarView.profileID = member.userpic;
    _memberAvatarView.layer.cornerRadius = 20.0;
    _memberNameLabel.text = member.name;
    _updateDateLabel.text = [NSDate dayAndTimeWithTimeInterval:member.dateTimeInteval];
    
    UIView *circleView = [[UIView alloc] initWithFrame:CGRectMake(290,15,10,10)];
    circleView.layer.cornerRadius = 5;
    circleView.backgroundColor = [UIColor greenColor];
    [self addSubview:circleView];
}

@end
