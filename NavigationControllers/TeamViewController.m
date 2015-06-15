//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Mason Macias on 6/12/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamDetailViewController.h"
#import "TeamMember.h"
@interface TeamViewController ()




@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (TeamMember *)teamMember:(NSString *)teamMemberName
{
    TeamMember *joe = [[TeamMember alloc] initWithName:@"joe" phoneNumber:@"joes number" birthCity:@"joes birthcity" birthState:@"joes state" favoriteBand:@"joes favorite band" image:[UIImage imageNamed:@"joe.jpg"]];
    TeamMember *avi = [[TeamMember alloc] initWithName:@"avi" phoneNumber:@"avis number" birthCity:@"avis birthcity" birthState:@"avis state" favoriteBand:@"avis favorite band" image:[UIImage imageNamed:@"avi.jpg"]];
    TeamMember *chris = [[TeamMember alloc] initWithName:@"chris" phoneNumber:@"chris number" birthCity:@"chris birthcity" birthState:@"chris state" favoriteBand:@"chris favorite band" image:[UIImage imageNamed:@"chris.jpg"]];
    TeamMember *al = [[TeamMember alloc] initWithName:@"Al" phoneNumber:@"5551212" birthCity:@"Detroit" birthState:@"Michigan" favoriteBand:@"The Beatles" image:[UIImage imageNamed:@"al.jpg"]];
    
    NSDictionary *teamMembers = @{@"joe":joe, @"avi":avi, @"chris":chris, @"al":al};
    
    return [teamMembers valueForKey:teamMemberName];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    UIButton *senderInfo = sender;
   TeamDetailViewController *destination = segue.destinationViewController;
    destination.teamMember = [self teamMember:segue.identifier];
}



@end
