//
//  ViewController.m
//  CHXNetworkingWrapper
//
//  Created by Moch Xiao on 2015-04-25.
//  Copyright (c) 2014 Moch Xiao (https://github.com/atcuan).
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "ViewController.h"
#import "CHXPromoteProductListRequest.h"
#import "CHXDownLoadRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testApi];
}

- (void)testApi {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CHXPromoteProductListRequest *request = [[CHXPromoteProductListRequest alloc] initWithNumber:3 type:@"index_best"];
        [request startRequestWithSuccess:^(id responseObject) {
            NSLog(@"%@", responseObject);
            dispatch_async(dispatch_get_main_queue(), ^{
                
            });
        } failue:^(id errorMessage) {
            NSLog(@"%@", errorMessage);
            dispatch_async(dispatch_get_main_queue(), ^{
                
            });
        }];
    });
}

- (void)testDownload {
    CHXDownLoadRequest *down = [[CHXDownLoadRequest new] initWithDownloadProgress:^(CGFloat progress) {
        NSLog(@"progress = %f", progress);
    }];
    [down startRequestWithSuccess:^(id responseObject) {
        NSLog(@"%@", responseObject);
        dispatch_async(dispatch_get_main_queue(), ^{
        });
        
    } failue:^(id errorMessage) {
        NSLog(@"%@", errorMessage);
        dispatch_async(dispatch_get_main_queue(), ^{
            
        });
    }];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self testDownload];
}
@end
