//
//  LineSegmentDataModel.h
//  fingerPainting2
//
//  Created by Raman Singh on 2018-04-20.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

@import UIKit;

@interface LineSegmentDataModel : NSObject
@property (nonatomic, readonly) CGPoint firstPoint;
@property (nonatomic, readonly) CGPoint secondPoint;

- (instancetype)initWithFirstPoint:(CGPoint)first secondPoint:(CGPoint)second;
@end
