//
//  ViewController.m
//  BNAutoPanelViewDemo
//
//  Created by binbinwang on 2021/8/2.
//

#import "ViewController.h"
#import "BNCommonPanelView.h"
#import "BNCommonPanelViewInfo.h"
#import "BNDataDefine.h"
#import "UIView+Extend.h"

#define BNPanelViewLeftRightMargin 32

@interface ViewController ()

@property (nonatomic,strong) BNCommonPanelView *panelView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.panelView];
    [self.panelView updateWithInfoArray:[self _getPanelInfoArray]];
}

- (NSArray<BNCommonPanelViewInfo *> *)_getPanelInfoArray {
    NSMutableArray *infoArray = [NSMutableArray array];
    
    BNCommonPanelViewInfo *scrollInfo = [[BNCommonPanelViewInfo alloc] init];
    scrollInfo.level = BNCommonPanelViewLevelScroll;
    
    BNCommonPanelViewInfo *tableViewInfo = [[BNCommonPanelViewInfo alloc] init];
    tableViewInfo.level = BNCommonPanelViewLevelTableView;
    
    [infoArray addObject:scrollInfo];
    [infoArray addObject:tableViewInfo];
    
    return [infoArray mutableCopy];
}

- (BNCommonPanelView *)panelView {
    if (!_panelView) {
        _panelView = [[BNCommonPanelView alloc] initWithFrame:CGRectMake(BNPanelViewLeftRightMargin, 120, self.view.width - 2 * BNPanelViewLeftRightMargin, self.view.height)];
        _panelView.delegate = self;
    }
    return _panelView;
}

#pragma mark - BNCommonPanelViewDelegate
- (void)onClickBusinessViewWithInfo:(BNCommonPanelViewInfo *)info {
    NSLog(@"ViewController onClickBusinessViewWithInfo level:%lu",(unsigned long)info.level);
    switch (info.level) {
        case BNCommonPanelViewLevelScroll: {
            // 业务逻辑
        }
            break;
        case BNCommonPanelViewLevelTableView: {
            // 业务逻辑
        }
            break;
        default:
            break;
    }
}


@end
