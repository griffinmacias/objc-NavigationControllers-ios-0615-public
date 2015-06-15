//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Mason Macias on 6/12/15.
//  Copyright (c) 2015 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"
#import "TeamMember.h"
@interface TeamDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *teamMemberImage;
@property (weak, nonatomic) IBOutlet UILabel *teamMemberName;
@property (weak, nonatomic) IBOutlet UILabel *teamPhoneNumber;
@property (weak, nonatomic) IBOutlet UILabel *teamHomeTown;
@property (weak, nonatomic) IBOutlet UILabel *teamFavBand;


@end

@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.teamMemberImage.image = self.teamMember.image;
    self.teamMemberName.text = self.teamMember.name;
    self.teamFavBand.text = self.teamMember.favoriteBand;
    self.teamHomeTown.text = self.teamMember.birthCity;
    self.teamPhoneNumber.text = self.teamMember.phoneNumber;
    
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
