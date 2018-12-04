//
//  ViewController.m
//  DI Test
//
//  Created by Rahardyan Bisma Setya Putra on 04/12/18.
//  Copyright © 2018 Rahardyan Bisma Setya Putra. All rights reserved.
//

#import "ViewController.h"
#import "SnackKit.h"

@interface ViewController ()
@property (nonatomic, strong)UIButton *btnRequest;
@property (nonatomic, strong)UILabel *lblResponse;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    [self setupConstraint];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)setupUI {
    _btnRequest = [[UIButton alloc] init];
    [_btnRequest setBackgroundColor:UIColor.blueColor];
    [_btnRequest setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_btnRequest addTarget:self action:@selector(onTouchButton) forControlEvents:UIControlEventTouchUpInside];
    
    _lblResponse = [[UILabel alloc] init];
    [_lblResponse setTextColor:UIColor.blackColor];
    [_lblResponse setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_lblResponse setTextAlignment:NSTextAlignmentCenter];
    
    [self.view addSubview:_btnRequest];
    [self.view addSubview:_lblResponse];
}

- (void)onTouchButton {
    __weak typeof(self) weakSelf = self;
    [SnackKit requestKacang2WithCompletion:^(NSString * _Nullable response) {
        __strong typeof(self) strongSelf = weakSelf;
        [strongSelf.lblResponse setText:response];
    }];
}

- (void)setupConstraint {
    [NSLayoutConstraint activateConstraints:[@[
                                               #pragma mark btnRequest constraint
                                               [_btnRequest.heightAnchor constraintEqualToConstant:30],
                                               [_btnRequest.widthAnchor constraintEqualToConstant:100],
                                               [_btnRequest.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
                                               [_btnRequest.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
                                               
                                               #pragma mark lblResponse constraint
                                               [_lblResponse.heightAnchor constraintEqualToConstant:15],
                                               [_lblResponse.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:10],
                                               [_lblResponse.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-10],
                                               [_lblResponse.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
                                               [_lblResponse.bottomAnchor constraintEqualToAnchor:_btnRequest.topAnchor constant:-10]
                                               ] mutableCopy]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
