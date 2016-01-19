//
//  LEORegisterController.m
//  LEOLearningCircle
//
//  Created by 李 on 16/1/19.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEORegisterController.h"
#import "LEOFindPasswordController.h"
#import "LEONewUserController.h"

@interface LEORegisterController ()

@property (nonatomic, weak)UITextField *nameField;
@property (nonatomic, weak)UITextField *pwdField;

@end

@implementation LEORegisterController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:247.0/255.0 green:247.0/255.0 blue:247.0/255.0 alpha:1];
    self.navigationItem.title = @"登录";

    [self loadLoginView];
}

- (void)loadLoginView {
    UIImageView *iconView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"regeister_icon"]];
    iconView.frame = CGRectMake(0, 74, self.view.bounds.size.width, 200);
    [self.view addSubview:iconView];
    //创建ID及输入
    UILabel *nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 300, 100, 20)];
    nameLabel.text = @"手机号/账号";
    [self.view addSubview:nameLabel];
    UITextField *nameField = [[UITextField alloc]initWithFrame:CGRectMake(150, 300, 150, 20)];
    nameField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.view addSubview:nameField];
    self.nameField = nameField;
    //创建密码框及输入
    UILabel *pwdLabel = [[UILabel alloc]initWithFrame:CGRectMake(50, 340, 200, 20)];
    pwdLabel.text = @"密码";
    [self.view addSubview:pwdLabel];
    UITextField *pwdField = [[UITextField alloc]initWithFrame:CGRectMake(100, 340, 200, 20)];
    pwdField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [pwdField setClearsOnBeginEditing:YES];
    [pwdField setSecureTextEntry:YES];
    [self.view addSubview:pwdField];
    self.pwdField = pwdField;
    //登陆按钮
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [loginBtn setImage:[UIImage imageNamed:@"login"] forState:UIControlStateNormal];
    //登录的点击事件
    [loginBtn addTarget:self action:@selector(didLogin) forControlEvents:UIControlEventTouchUpInside];
    loginBtn.frame = CGRectMake(60, 360, 195, 25);
    loginBtn.center = CGPointMake(self.view.center.x, self.view.center.y + 50);
    [self.view addSubview:loginBtn];
    //找回密码
    UIButton *registerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    registerBtn.frame = CGRectMake(83, 420, 100, 20);
    [registerBtn setImage:[UIImage imageNamed:@"findPwd"] forState:UIControlStateNormal];
    [registerBtn addTarget:self action:@selector(didFindPassword) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerBtn];
    //注册用户
    UIButton *newUser = [UIButton buttonWithType:UIButtonTypeCustom];
    newUser.frame = CGRectMake(200, 420, 100, 20);
    [newUser setImage:[UIImage imageNamed:@"newUser"] forState:UIControlStateNormal];
    [newUser addTarget:self action:@selector(didRegisterNewUser) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:newUser];
}

- (void)didLogin {
    if (!self.nameField.text.length || !self.pwdField.text.length) {
        NSLog(@"账号或密码为空");
        return;
    }
    if ([self.nameField.text isEqualToString:@"xxx"] && [self.pwdField.text isEqualToString:@"ooo"]) {
        NSLog(@"登录成功");
    }else{
        NSLog(@"账号或密码错误");
    }
}

- (void)didFindPassword {
    LEOFindPasswordController *findPwdVc = [[LEOFindPasswordController alloc]init];
    [self.navigationController pushViewController:findPwdVc animated:YES];
}

- (void)didRegisterNewUser {
    LEONewUserController *newUserVc = [[LEONewUserController alloc]init];
    [self.navigationController pushViewController:newUserVc animated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = NO;
}


@end
