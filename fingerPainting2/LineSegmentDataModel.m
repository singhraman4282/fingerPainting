//
//  LineSegmentDataModel.m
//  fingerPainting2
//
//  Created by Raman Singh on 2018-04-20.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "LineSegmentDataModel.h"

@implementation LineSegmentDataModel
- (id)initWithFirstPoint:(CGPoint)first secondPoint:(CGPoint)second {
    if (self = [super init]) {
        _firstPoint = first;
        _secondPoint = second;
    }//if
    return self;
}//init
@end
