//
//  BXNavigationController.m
//  Pods
//
//  Created by baxiang on 2017/6/12.
//
//

#import "BXNavigationController.h"

@interface BXNavigationController ()

@end

@implementation BXNavigationController


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return [self.topViewController shouldAutorotateToInterfaceOrientation:interfaceOrientation];
}

- (BOOL)shouldAutorotate
{
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations
{
    return self.topViewController.supportedInterfaceOrientations;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return self.topViewController.preferredStatusBarStyle;
}



+ (void)initialize
{
    // 当导航栏用在YPNavigationController中appearance才会生效
//    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[self class], nil];
//    [bar setTintColor:YPMainColor];
//    NSMutableDictionary *titleAttrs = [NSMutableDictionary dictionary];
//    titleAttrs[NSForegroundColorAttributeName] = YPBlackColor;
//    titleAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:17];
//    [bar setTitleTextAttributes:titleAttrs];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

/**
 * 可以在这个方法中拦截所有push进来的控制器
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) { // 如果push进来的不是第一个控制器
        
        
        
        // 隐藏tabbar
       // viewController.hidesBottomBarWhenPushed = YES;
    }
    
    // 这句super的push要放在后面, 让viewController可以覆盖上面设置的leftBarButtonItem
    [super pushViewController:viewController animated:animated];
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
