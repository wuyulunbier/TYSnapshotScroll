//
//  TYWebViewVc.m
//  TYSnapshotScroll
//
//  Created by apple on 16/12/26.
//  Copyright © 2016年 TonyReet. All rights reserved.
//

#import "TYWebViewVc.h"


@interface TYWebViewVc ()

@property (nonatomic,strong) UIWebView *webView;

@end

@implementation TYWebViewVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self webViewInit];
    
    [self buttonInit:@"保存网页为图片"];
}

- (void)webViewInit{
    self.webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    
    self.webView.scalesPageToFit = YES;
    self.webView.scrollView.bounces = NO;
    self.webView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.webView];
    
    NSString *urlStr = @"https://m.baidu.com";
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:urlStr] cachePolicy:NSURLRequestReloadIgnoringLocalCacheData timeoutInterval:5];//超时时间5秒
    
    //加载地址数据
    [self.webView loadRequest:request];
    
    self.snapView = self.webView;
}

@end
