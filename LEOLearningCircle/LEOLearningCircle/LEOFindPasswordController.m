//
//  LEOFindPasswordController.m
//  LEOLearningCircle
//
//  Created by 李 on 16/1/19.
//  Copyright © 2016年 zz. All rights reserved.
//

#import "LEOFindPasswordController.h"

@interface LEOFindPasswordController ()

@property (nonatomic, weak)UITextField *pwdRepeat;
@property (nonatomic, weak)UITextField *pwdFiled;

@end

@implementation LEOFindPasswordController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"重置密码";
    self.view.backgroundColor = [UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1];
    
    [self loadInput];
    
    [self loadLogin];

}

- (void)loadInput {
    CGFloat padding = 20;
    
    CGRect pwdFrame = CGRectMake(padding, 60, LEOScreenW - padding * 2, 30);
    UITextField *pwdField = [self setTextFieldWithFrame:pwdFrame Placeholder:@"请输入6-16位数字或者字母"];
    [self.view addSubview:pwdField];
    self.pwdFiled = pwdField;
    [pwdField becomeFirstResponder];
    
    CGRect pwdLabelFrame = CGRectMake(padding, 60, 80, 30);
    UILabel *pwdLabel = [self setLabelWithFrame:pwdLabelFrame title:@"密码"];
    [self.view addSubview:pwdLabel];
    
    CGRect pwdRepeatFrame = CGRectMake(padding, 120, LEOScreenW - padding * 2, 30);
    UITextField *pwdRepeat = [self setTextFieldWithFrame:pwdRepeatFrame Placeholder:@"  请输入6-16位数字或者字母"];
    [self.view addSubview:pwdRepeat];
    self.pwdRepeat = pwdRepeat;
    
    CGRect pwdRepeatLabelFrame = CGRectMake(padding, 120, 80, 30);
    UILabel *pwdRepeadLabel = [self setLabelWithFrame:pwdRepeatLabelFrame title:@"确认密码"];
    [self.view addSubview:pwdRepeadLabel];
}

- (void)loadLogin {
    UIButton *login = [UIButton buttonWithType:UIButtonTypeCustom];
    login.frame = CGRectMake(0, 0, 195, 25);
    login.center = CGPointMake(self.view.center.x, self.view.center.y - 100);
    [login setImage:[UIImage imageNamed:@"login"] forState:UIControlStateNormal];
    [login addTarget:self action:@selector(didLogin) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:login];
}

- (void)didLogin {
    
    if (!(self.pwdFiled.text.length || self.pwdRepeat.text.length)) {
        NSLog(@"请输入密码");
        return;
    }
    if ([self.pwdRepeat.text isEqualToString:self.pwdFiled.text]) {
        [self.navigationController popToRootViewControllerAnimated:YES];
    }else{
        NSLog(@"输入有误，请重新输入");
    }
}

- (UILabel *)setLabelWithFrame:(CGRect)frame title:(NSString *)title {
    UILabel *txtLabel = [[UILabel alloc]initWithFrame:frame];
    txtLabel.layer.cornerRadius = 5;
    txtLabel.layer.masksToBounds = YES;
    txtLabel.textColor = [UIColor whiteColor];
    txtLabel.font = [UIFont systemFontOfSize:14];
    txtLabel.textAlignment = NSTextAlignmentCenter;
    txtLabel.text = title;
    [txtLabel setBackgroundColor:[UIColor colorWithRed:148.0/255.0 green:105/255.0 blue:246/255.0 alpha:1]];
    return txtLabel;
}
- (UITextField *)setTextFieldWithFrame:(CGRect)frame Placeholder:(NSString *)placeholder {
    UITextField *textField= [[UITextField alloc]initWithFrame:frame];
    UIView *leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 80, 10)];
    leftView.backgroundColor = [UIColor redColor];
    textField.leftView = leftView;
    textField.leftViewMode = UITextFieldViewModeAlways;
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = placeholder;
    textField.font = [UIFont systemFontOfSize:14];
   
    [textField setSecureTextEntry:YES];
    return textField;
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
