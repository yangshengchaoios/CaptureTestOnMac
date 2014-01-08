//
//  AVCaptureVideoPreviewView.m
//  CaptureTest
//
//  Created by Gavin Williams on 12/09/2012.
//  Copyright (c) 2012 Gavin Williams. All rights reserved.
//

#import "AVCaptureVideoPreviewView.h"

@implementation AVCaptureVideoPreviewView
@synthesize originalFrame = _originalFrame;

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _originalFrame = frame;
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
	// Iterate through all of the sublayers
    for(CALayer *layer in self.layer.sublayers){
		// Resize them
		layer.frame = NSMakeRect(layer.frame.origin.x, layer.frame.origin.y, dirtyRect.size.width, dirtyRect.size.height);
	}
}

@end
