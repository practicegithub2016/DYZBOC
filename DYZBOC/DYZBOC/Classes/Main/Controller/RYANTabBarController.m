//
//  RYANTabBarController.m
//  DYZBOC
//
//  Created by Ryan on 2016/9/23.
//  Copyright © 2016年 RYAN. All rights reserved.
//

#import "RYANTabBarController.h"
#import "RYANHomeViewController.h"
#import "RYANLiveViewController.h"
#import "RYANFollowViewController.h"
#import "RYANProfileViewController.h"

@interface RYANTabBarController ()

@end

@implementation RYANTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    self.view.frame = [UIScreen mainScreen].bounds;
    self.view.backgroundColor = [UIColor blueColor];
    
    [self setupItemTitleTextAttributes];
    
    RYANHomeViewController *HomeViewController = [[RYANHomeViewController alloc] init];
    RYANLiveViewController *LiveViewController = [[RYANLiveViewController alloc] init];
    RYANFollowViewController *FollowViewControlle = [[RYANFollowViewController alloc] init];
    RYANProfileViewController *ProfileViewController = [[RYANProfileViewController alloc] init];
    
    [self setupOneChildViewController:HomeViewController title:@"首頁" image:@"btn_home_normal" selectedImage:@"btn_home_selected"];
    [self setupOneChildViewController:LiveViewController title:@"直播" image:@"btn_column_normal" selectedImage:@"btn_column_selected"];
    [self setupOneChildViewController:FollowViewControlle title:@"關注" image:@"btn_live_normal" selectedImage:@"btn_live_selected"];
    [self setupOneChildViewController:ProfileViewController title:@"我的" image:@"btn_user_normal" selectedImage:@"btn_user_selected"];


}

- (void)setupOneChildViewController:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    vc.tabBarItem.title = title;
    if (image.length) {
        vc.tabBarItem.image = [UIImage imageNamed:image];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    }
    
    [self addChildViewController:vc];
}


// setting UITabBarItem Text Attributes
- (void)setupItemTitleTextAttributes
{
    UITabBarItem *item = [UITabBarItem appearance];
    // noarmal
    NSMutableDictionary *normalAttr = [NSMutableDictionary dictionary];
    normalAttr[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    normalAttr[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [item setTitleTextAttributes:normalAttr forState:UIControlStateNormal];
    // selected
    NSMutableDictionary *selectedAttr = [NSMutableDictionary dictionary];
    selectedAttr[NSForegroundColorAttributeName] = [UIColor redColor];
    [item setTitleTextAttributes:selectedAttr forState:UIControlStateSelected];
    
}


@end
