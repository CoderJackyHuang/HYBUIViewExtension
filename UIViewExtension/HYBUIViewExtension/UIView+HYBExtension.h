
#import <UIKit/UIKit.h>
#import "HYBDeviceDefine.h"

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

+ (NSString *)className;
+ (instancetype)viewWithFrame:(CGRect)frame;
+ (instancetype)viewWithOriginX:(CGFloat)originX
                        originY:(CGFloat)originY
                          width:(CGFloat)width
                         height:(CGFloat)height;

// Just like -initWithFrame:
- (instancetype)initWithOriginX:(CGFloat)originX
                        originY:(CGFloat)originY
                          width:(CGFloat)width
                         height:(CGFloat)height;
- (void)removeAllSubviews;
- (UIImage *)captureScreenshot;


////////////////////////////
// @name Find view by Tag
////////////////////////////
// You also can use -viewWithTag:.
// The following methods are easier to find a view.
// Note: If found it, but it is not a label/button/textfield/...,
// it will return nil. 
- (UILabel *)labelWithTag:(NSInteger)tag;
- (UIButton *)buttonWithTag:(NSInteger)tag;
- (UITextField *)textFieldWithTag:(NSInteger)tag;
- (UITextView *)textViewWithTag:(NSInteger)tag;
- (UIScrollView *)scrollViewWithTag:(NSInteger)tag;
- (UITableView *)tableViewWithTag:(NSInteger)tag;
- (UITableViewCell *)tableCellWithTag:(NSInteger)tag;
- (UIWindow *)windowWithTag:(NSInteger)tag;
- (UITabBar *)tabbarWithTag:(NSInteger)tag;
- (UITabBarItem *)tabbarItemWithTag:(NSInteger)tag;
- (UISwitch *)switchWithTag:(NSInteger)tag;
- (UIStepper *)stepperWithTag:(NSInteger)tag;
- (UISlider *)sliderWithTag:(NSInteger)tag;
- (UISegmentedControl *)segmentWithTag:(NSInteger)tag;
- (UITableViewHeaderFooterView *)tableHeaderFooterWithTag:(NSInteger)tag;
- (UIToolbar *)toolbarWithTag:(NSInteger)tag;
- (UIWebView *)webViewWithTag:(NSInteger)tag;
- (UICollectionViewCell *)collectionCellWithTag:(NSInteger)tag;
- (UICollectionView *)collectionViewWithTag:(NSInteger)tag;

- (void)addLineWithTop:(CGFloat)topPadding left:(CGFloat)leftPadding;
- (void)addLineWithTop:(CGFloat)topPadding left:(CGFloat)leftPadding color:(UIColor *)lineColor;
- (void)addLineWithTop:(CGFloat)topPadding left:(CGFloat)leftPadding lineHeight:(CGFloat)lineHeight;
- (void)addLineWithTop:(CGFloat)topPadding left:(CGFloat)leftPadding
                 color:(UIColor *)lineColor lineHeight:(CGFloat)lineHeight;
- (void)addLineWithTop:(CGFloat)topPadding left:(CGFloat)leftPadding right:(CGFloat)rightPadding;
- (void)addLineWithTop:(CGFloat)topPadding left:(CGFloat)leftPadding
                 right:(CGFloat)rightPadding color:(UIColor *)lineColor;
- (void)addLineWithTop:(CGFloat)topPadding left:(CGFloat)leftPadding
                 right:(CGFloat)rightPadding color:(UIColor *)lineColor
            lineHeight:(CGFloat)lineHeight;

@end
