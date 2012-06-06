//
//  mapkitdemoAppDelegate.h
//  mapkitdemo
//
//  Created by LABS QA_Rashid on 6/5/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class mapkitdemoViewController;

@interface mapkitdemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    mapkitdemoViewController *viewController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet mapkitdemoViewController *viewController;


@end

