//
// Created by <a href="mailto:wentong@taobao.com">文通</a> on 13-1-16 上午10:12.
//


#import "TBMBNavView.h"
#import "TBMBBind.h"
#import "TBMBNavViewDO.h"


@implementation TBMBNavView {

}

- (void)loadView {
    [super loadView];
    CGFloat h = 40;
    for (TBMBDemoStep step = TBMB_DEMO_STEP01; step < TBMB_DEMO_END; step++) {
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50, h * (step + 1), 200, 30)];
        [button addTarget:self action:@selector(gotoStep:) forControlEvents:UIControlEventTouchUpInside];
        button.backgroundColor = [UIColor redColor];
        button.tag = step;
        [self addSubview:button];
    }
}
//点中按钮的调用
- (void)gotoStep:(UIButton *)button {
    self.viewDO.demoStep = (TBMBDemoStep) button.tag;
}


@end