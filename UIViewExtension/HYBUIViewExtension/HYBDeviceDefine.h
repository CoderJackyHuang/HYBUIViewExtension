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

#ifndef __UIViewExtension__HYBDeviceDefine__
#define __UIViewExtension__HYBDeviceDefine__

#define kStringFormat(format, params) ([NSString stringWithFormat:format, params])
#define kWeakObject(object) __weak typeof(object) weakObject = object;

#define kMainThread (dispatch_get_main_queue())
#define kGlobalThread dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)

#define kIsIOS6OrLater ([UIDevice currentDevice].systemVersion.integerValue >= 6 ? YES : NO)
#define kIsIOS7OrLater ([UIDevice currentDevice].systemVersion.integerValue >= 7 ? YES : NO)
#define kIsIOS8OrLater ([UIDevice currentDevice].systemVersion.integerValue >= 8 ? YES : NO)

#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)
#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)

#define kIs5OrLater [[UIScreen mainScreen] currentMode].size.height >= 960
#define kScreenBounds ([UIScreen mainScreen].bounds)
#define kIs6Plus (kScreenHeight >= 667)
#define kIs6 (kScreenHeight > 568 && kScreenHeight < 667)

#define kNavBarHeight  (44.0)
#define kStatusBarHeight (20.0)
#define kTabBarHeight (49.0)

///< format：0xFFFFFF
#define k16RGBColor(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16)) / 255.0 \
green:((float)((rgbValue & 0xFF00) >> 8)) / 255.0 \
blue:((float)(rgbValue & 0xFF)) / 255.0 alpha:1.0]
///< format：22,22,22
#define kRGBColor(r, g, b) ([UIColor colorWithRed:(r) / 255.0  \
green:(g) / 255.0  \
blue:(b) / 255.0  \
alpha:1])
///< format：22,22,22,0.5
#define kRGBAColor(r, g, b, a) ([UIColor colorWithRed:(r) / 255.0  \
green:(g) / 255.0  \
blue:(b) / 255.0  \
alpha:(a)])

// Only load png image successfully.
#define kImageWithName(Name) ([UIImage imageNamed:Name])
#define kBigImageWithName(Name) ([UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:Name ofType:nil]])

#define kUserDefaults [NSUserDefaults standardUserDefaults]
#define kNotificationCenter  [NSNotificationCenter defaultCenter]

#define kPostNotificationWithName(notificationName) \
[kNotificationCenter postNotificationName:notificationName object:nil userInfo:nil];

#define kPostNotificationWithNameAndUserInfo(notificationName, userInfo) \
[kNotificationCenter postNotificationName:notificationName object:nil userInfo:userInfo];

#define kIsEmptyString(str) \
(!(str !== nil && ![str isKindOfClass:[NSNull class]] && str.length > 0))

#define kIsNull(obj) ([obj isKindOfClass:[NSNull class]])


#endif /* defined(__UIViewExtension__HYBDeviceDefine__) */
