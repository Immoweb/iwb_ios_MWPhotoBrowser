//
//  MWAccessiblePagingScrollView.m
//  MWPhotoBrowser_Example
//
//  Created by Kevin Hirsch on 26/02/2019.
//  Copyright © 2019 Michael Waterfall. All rights reserved.
//

#import "MWAccessiblePagingScrollView.h"

@implementation MWAccessiblePagingScrollView

- (NSString *)accessibilityValue {
	NSString *photosText = NSLocalizedString(@"photos", @"Used in the context: these are the 'photos'");
	NSString *ofText = NSLocalizedString(@"of", @"Used in the context: 'Showing 1 of 3 items'");
	return [NSString stringWithFormat:@"%@ %lu %@ %lu",
			photosText, (unsigned long)(self.currentPageIndex()+1),
			ofText, (unsigned long)self.numberOfPhotos()];
}

- (void)accessibilityIncrement {
	self.gotoNextPage();
}

- (void)accessibilityDecrement {
	self.gotoPreviousPage();
}

- (UIAccessibilityTraits)accessibilityTraits {
	return UIAccessibilityTraitAdjustable;
}

- (BOOL)isAccessibilityElement {
	return YES;
}

@end
