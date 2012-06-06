//
//  mapkitdemoViewController.h
//  mapkitdemo
//
//  Created by Rashid on 6/5/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface mapkitdemoViewController : UIViewController <CLLocationManagerDelegate>{
	IBOutlet UILabel *accuracylbl;
	IBOutlet UILabel *latitudelbl;
	IBOutlet UILabel *longitudelbl;
	IBOutlet UILabel *speedlbl;
	
	IBOutlet MKMapView *mapView;
	
	CLLocationManager *locationManager;
}

@property (retain, nonatomic) MKMapView *mapView;

@end

