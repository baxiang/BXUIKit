//
//  UIScrollView+RBExtension.h
//  Pods
//
//  Created by baxiang on 2017/6/13.
//
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, ScrollDirection) {
    ScrollDirectionUp,
    ScrollDirectionDown,
    ScrollDirectionLeft,
    ScrollDirectionRight,
    ScrollDirectionWTF
};
@interface UIScrollView (RBExtension)
@property(nonatomic) CGFloat contentWidth;
@property(nonatomic) CGFloat contentHeight;
@property(nonatomic) CGFloat contentOffsetX;
@property(nonatomic) CGFloat contentOffsetY;

- (CGPoint)topContentOffset;
- (CGPoint)bottomContentOffset;
- (CGPoint)leftContentOffset;
- (CGPoint)rightContentOffset;

- (ScrollDirection)ScrollDirection;

- (BOOL)isScrolledToTop;
- (BOOL)isScrolledToBottom;
- (BOOL)isScrolledToLeft;
- (BOOL)isScrolledToRight;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)scrollToBottomAnimated:(BOOL)animated;
- (void)scrollToLeftAnimated:(BOOL)animated;
- (void)scrollToRightAnimated:(BOOL)animated;

- (NSUInteger)verticalPageIndex;
- (NSUInteger)horizontalPageIndex;

- (void)scrollToVerticalPageIndex:(NSUInteger)pageIndex animated:(BOOL)animated;
- (void)scrollToHorizontalPageIndex:(NSUInteger)pageIndex animated:(BOOL)animated;

- (NSInteger)pages;
- (NSInteger)currentPage;
- (CGFloat)scrollPercent;

- (CGFloat)pagesY;
- (CGFloat)pagesX;
- (CGFloat)currentPageY;
- (CGFloat)currentPageX;
- (void) setPageY:(CGFloat)page;
- (void) setPageX:(CGFloat)page;
- (void) setPageY:(CGFloat)page animated:(BOOL)animated;
- (void) setPageX:(CGFloat)page animated:(BOOL)animated;
@end
