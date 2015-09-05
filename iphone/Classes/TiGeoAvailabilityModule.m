/**
 * Ti.Geo.Availability
 *
 * Created by Ben Bahrenburg
 * Copyright (c) 2015 Your Bencoding.com, All rights reserved.
 */

#import "TiGeoAvailabilityModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation TiGeoAvailabilityModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"3819a60b-82e6-413a-a269-5f94e83bdcde";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"ti.geo.availability";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably

	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}


-(NSNumber*)allowBackgrounding:(id)unused
{
    UIDevice* device = [UIDevice currentDevice];
    BOOL backgroundSupported = NO;
    if ([device respondsToSelector:@selector(isMultitaskingSupported)] &&
        [device isMultitaskingSupported]) {
        backgroundSupported=YES;
    }
    return NUMBOOL(backgroundSupported);
}
-(NSNumber*)significantLocationChangeMonitoringAvailable:(id)unused
{
    
    if ([CLLocationManager significantLocationChangeMonitoringAvailable])
    {
        return NUMBOOL(YES);
    }
    //This can call this to let them know if this feature is supported
    return NUMBOOL(NO);
}

-(NSNumber*)headingAvailable:(id)unused
{
    if ([CLLocationManager headingAvailable])
    {
       return NUMBOOL(YES);
    }
    //This can call this to let them know if this feature is supported
    return NUMBOOL(NO);
}


-(NSNumber*) locationServicesEnabled
{
    
    if ([CLLocationManager locationServicesEnabled])
    {
        return NUMBOOL(YES);
    }
    //This can call this to let them know if this feature is supported
    return NUMBOOL(NO);
}

-(NSNumber*) regionMonitoringAvailable
{
    
    if ([CLLocationManager regionMonitoringAvailable])
    {
        return NUMBOOL(YES);
    }
    //This can call this to let them know if this feature is supported
    return NUMBOOL(NO);
}


@end
