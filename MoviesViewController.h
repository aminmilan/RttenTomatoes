//
//  MoviesViewController.h
//  RottenTomatoes
//
//  Created by Milan Amin on 6/9/14.
//  Copyright (c) 2014 Milan Amin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoviesViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, assign) BOOL boxOfficeSource;
@end
