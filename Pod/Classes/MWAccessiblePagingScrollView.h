//
//  MWAccessiblePagingScrollView.h
//  MWPhotoBrowser_Example
//
//  Created by Kevin Hirsch on 26/02/2019.
//  Copyright © 2019 Michael Waterfall. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MWAccessiblePagingScrollView : UIScrollView

@property (nonatomic, copy, nonnull) NSUInteger (^currentPageIndex)();
@property (nonatomic, copy, nonnull) NSUInteger (^numberOfPhotos)();
@property (nonatomic, copy, nonnull) void (^gotoNextPage)();
@property (nonatomic, copy, nonnull) void (^gotoPreviousPage)();

@end

NS_ASSUME_NONNULL_END
