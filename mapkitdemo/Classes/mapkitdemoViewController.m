//
//  mapkitdemoViewController.m
//  mapkitdemo
//
//  Created by Rashid on 6/5/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "mapkitdemoViewController.h"

@implementation mapkitdemoViewController
@synthesize mapView;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/


- (void) viewDidLoad {
	locationManager = [[CLLocationManager alloc] init];
	locationManager.delegate = self;
	locationManager.desiredAccuracy = kCLLocationAccuracyBest;
	locationManager.distanceFilter = kCLDistanceFilterNone;
	[locationManager startUpdatingLocation];
	
	mapView.mapType = MKMapTypeHybrid; // specifies the maptype can be standard, satlite or hybrid
}
- (void) locationManager: (CLLocationManager *) manager
	 didUpdateToLocation: (CLLocation *) newLocation
			fromLocation: (CLLocation *) oldLocation{
	
	speedlbl.text = [NSString stringWithFormat:@"Speed of location: %f", newLocation.speed]; //Returns the speed of the location in m/s.
	
	latitudelbl.text = [NSString stringWithFormat:@"Latitude of location: %f", newLocation.coordinate.latitude];// returns the latitude value
		
	longitudelbl.text = [NSString stringWithFormat:@"Longitude of location: %f", newLocation.coordinate.longitude];// returns longitude value
	
	accuracylbl.text = [NSString stringWithFormat:@"Altitude of location: %f", newLocation.horizontalAccuracy];// returns the altitude
	
	MKCoordinateSpan mkspan;
	mkspan.latitudeDelta=.002;
	mkspan.longitudeDelta=.002;
	MKCoordinateRegion mkregion;
	mkregion.center = newLocation.coordinate;
	mkregion.span=mkspan;
	[mapView setRegion:mkregion animated:TRUE]; //sets the users current location in the MKMap view in screen
}
/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[mapView release];
	[locationManager release];
	[latitudelbl release];
	[longitudelbl release];
	[accuracylbl release];
	[super dealloc];
    
}

@end
