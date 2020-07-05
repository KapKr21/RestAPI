//
//  ViewController.m
//  RestAPISample
//
//  Created by Kap's on 17/06/20.
//  Copyright © 2020 Kapil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    
    [[[NSURLSession sharedSession] dataTaskWithURL:[NSURL URLWithString:@"https://www.flaticon.com/free-icon/hamburger_270306?term=burger%20icon&page=1&position=3"] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {

        NSLog(@"The data is %@",data);
        NSLog(@"The response is %@",response);
        NSLog(@"The error is %@",error);

        NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]; //Next step unicode transformation format
        NSLog(@"The data in string is %@",string);

        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:nil];
        NSLog(@"The data in dictionary is %@",dict);
    }]resume];
}


@end
