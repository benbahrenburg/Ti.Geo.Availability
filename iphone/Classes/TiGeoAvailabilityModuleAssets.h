/**
 * Ti.Geo.Availability
 *
 * Created by Ben Bahrenburg
 * Copyright (c) 2015 Your Bencoding.com, All rights reserved.
 */

@interface TiGeoAvailabilityModuleAssets : NSObject
{
}
- (NSData*) moduleAsset;
- (NSData*) resolveModuleAsset:(NSString*)path;

@end
