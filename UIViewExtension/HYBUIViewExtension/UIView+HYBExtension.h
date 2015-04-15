
#import <UIKit/UIKit.h>

/**
 *  This is a very very helpful category for layout a view's frame.
 *  
 *  @author huangyibiao
 *  @email  huangyibiao520@163.com
 *  @github https://github.com/632840804
 *  @blog   http://blog.csdn.net/woaifen3344
 *
 *  @note Make friends with me.
 *        Facebook: huangyibiao520@163.com (Jacky Huang)
 *        QQ:(632840804)
 *        Weixin:(huangyibiao520)
 *        Please tell me your real name when you send message to me.3Q.
 */
@interface UIView (HYBExtension)


////////////////////////////
// @name Layout
////////////////////////////
@property (nonatomic) CGFloat originX;
@property (nonatomic) CGFloat originY;
@property (nonatomic) CGFloat rightX;
@property (nonatomic) CGFloat bottomY;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;
@property (nonatomic) CGPoint origin;
@property (nonatomic) CGSize size;
@property (nonatomic, readonly) CGSize twiceSize;
@property (nonatomic, readonly) CGSize thirdSize;


////////////////////////////
// @name Layer
////////////////////////////
@property (nonatomic) CGFloat cornerRadius;
@property (nonatomic) CGFloat borderWidth;
@property (nonatomic, strong) UIColor *borderColor;
@property (nonatomic, strong) UIColor *shaddowColor;

@property (nonatomic, copy, readonly) NSString *className;

/**
 *  Get the class name
 *
 *  @return class name
 */
+ (NSString *)className;

/**
 *  Remove all subviews attached to the view.
 */
- (void)removeAllSubviews;

/**
 *  Capture a screen shot.
 *
 *  @return The screen shot of the view.
 */
- (UIImage *)captureScreenshot;


@end
