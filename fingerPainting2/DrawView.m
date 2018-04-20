//
//  DrawView.m
//  fingerPainting2
//
//  Created by Raman Singh on 2018-04-20.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "DrawView.h"

@interface DrawView()


@property (nonatomic) NSMutableArray <LineSegmentDataModel *> *linesArr;
@end



@implementation DrawView


- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        _linesArr = [NSMutableArray new];
    }//if
    return self;
}//initWithCoder

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint first = [touches.anyObject locationInView:self];
    LineSegmentDataModel *segment = [[LineSegmentDataModel alloc] initWithFirstPoint:first secondPoint:first];
    [self.linesArr addObject:segment];
    [self setNeedsDisplay];
}//touchesBegan

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint curPoint = [touch locationInView:self];
    CGPoint prevPoint = [touch previousLocationInView:self];
    LineSegmentDataModel *segment = [[LineSegmentDataModel alloc] initWithFirstPoint:prevPoint secondPoint:curPoint];
    [self.linesArr addObject:segment];
    [self setNeedsDisplay];
}//touchesMoved

- (void)drawRect:(CGRect)rect {
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound;
    [[UIColor grayColor] setStroke];
    for (LineSegmentDataModel *segment in self.linesArr) {
        if (CGPointEqualToPoint(segment.firstPoint, segment.secondPoint)) {
            [path moveToPoint:segment.firstPoint];
            continue;
        }//if
        [path addLineToPoint: segment.secondPoint];
    }//if
    [path stroke];
}//drawRect



@end
