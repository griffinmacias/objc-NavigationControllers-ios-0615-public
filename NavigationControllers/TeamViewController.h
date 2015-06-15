//
//  TeamViewController.h
//  NavigationControllers
//
//  Created by Mason Macias on 6/12/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TeamMember.h"
@interface TeamViewController : UIViewController



- (TeamMember *)teamMember:(NSString *)teamMemberName;
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;
@end
