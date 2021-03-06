//
//  Movie.m
//  RottenTomatoes
//
//  Created by Milan Amin on 6/9/14.
//  Copyright (c) 2014 Milan Amin. All rights reserved.
//

#import "Movie.h"

@implementation Movie

- (Movie *)initWithDictionary:(NSDictionary *)mDictionary{
    self.abridgedCast  = [[NSMutableArray alloc] init];
    self.title         = [mDictionary objectForKey:@"title"];
    self.synopsis      = [mDictionary objectForKey:@"synopsis"];
    self.mpaaRating    = [mDictionary objectForKey:@"mpaa_rating"];
    self.runtime       = [mDictionary objectForKey:@"runtime"];
    self.audienceScore = [mDictionary[@"ratings"][@"audience_score"] integerValue];
    self.criticsScore  = [mDictionary[@"ratings"][@"critics_score"] integerValue];
    
    self.thumbnailURL  = [NSURL URLWithString:mDictionary[@"posters"][@"profile"]];
    self.posterURL     = [NSURL URLWithString:mDictionary[@"posters"][@"original"]];
    self.posterLowResURL = [NSURL URLWithString:mDictionary[@"posters"][@"detailed"]];
    
    NSArray *castArray = [mDictionary objectForKey:@"abridged_cast"];
    for(NSDictionary *castDictionary in castArray){
        [self.abridgedCast addObject:[castDictionary objectForKey:@"name"]];
    }
    return self;
}

- (NSString *)cast{
    return [self.abridgedCast componentsJoinedByString:@", "];
}

@end
