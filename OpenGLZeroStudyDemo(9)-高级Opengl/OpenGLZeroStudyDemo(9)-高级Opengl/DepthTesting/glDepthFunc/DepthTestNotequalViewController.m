//
//  DepthTestNotequalViewController.m
//  OpenGLZeroStudyDemo(9)-高级Opengl
//
//  Created by glodon on 2019/8/20.
//  Copyright © 2019 glodon. All rights reserved.
//

#import "DepthTestNotequalViewController.h"

@interface DepthTestNotequalViewController ()

@end

@implementation DepthTestNotequalViewController
-(void)initSubObject{
    //生命周期三秒钟
    [super initSubObject];
    glEnable(GL_DEPTH_TEST);
    self.glDrawConfig = ^{
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    };
    self.glDrawMaskBeginConfig = ^{
        glDepthFunc(GL_ALWAYS);
    };
    self.glDrawMaskEndConfig = ^{
        glDepthFunc(GL_NOTEQUAL);
    };
}

@end
