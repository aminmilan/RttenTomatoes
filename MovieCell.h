//
//  MovieCell.h
//  RottenTomatoes
//
//  Created by Milan Amin on 6/9/14.
//  Copyright (c) 2014 Milan Amin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *criticsScore;
@property (weak, nonatomic) IBOutlet UILabel *movieTitle;
@property (weak, nonatomic) IBOutlet UILabel *abridgedCast;
@property (weak, nonatomic) IBOutlet UILabel *rating;
@end
