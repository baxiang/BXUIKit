//
//  UITextField+BXExtension.m
//  Pods
//
//  Created by baxiang on 2017/6/13.
//
//

#import "UITextField+BXExtension.h"
#import <objc/runtime.h>

static const void *BXTextFieldInputLimitMaxLength = &BXTextFieldInputLimitMaxLength;
@implementation UITextField (BXExtension)
-(NSInteger)maxLimitLength{
    return [objc_getAssociatedObject(self, BXTextFieldInputLimitMaxLength) integerValue];
}
-(void)setMaxLimitLength:(NSInteger)maxLimitLength{
    objc_setAssociatedObject(self, BXTextFieldInputLimitMaxLength, @(maxLimitLength), OBJC_ASSOCIATION_ASSIGN);
    [self addTarget:self action:@selector(bx_textFieldTextDidChange) forControlEvents:UIControlEventEditingChanged];
}
- (void)bx_textFieldTextDidChange {
    NSString *toBeString = self.text;
    //获取高亮部分
    UITextRange *selectedRange = [self markedTextRange];
    UITextPosition *position = [self positionFromPosition:selectedRange.start offset:0];
    //没有高亮选择的字，则对已输入的文字进行字数统计和限制
    //在iOS7下,position对象总是不为nil
    if ( (!position ||!selectedRange) && (self.maxLimitLength > 0 && toBeString.length > self.maxLimitLength))
    {
        NSRange rangeIndex = [toBeString rangeOfComposedCharacterSequenceAtIndex:self.maxLimitLength];
        if (rangeIndex.length == 1)
        {
            self.text = [toBeString substringToIndex:self.maxLimitLength];
        }
        else
        {
            NSRange rangeRange = [toBeString rangeOfComposedCharacterSequencesForRange:NSMakeRange(0, self.maxLimitLength)];
            NSInteger tmpLength;
            if (rangeRange.length > self.maxLimitLength) {
                tmpLength = rangeRange.length - rangeIndex.length;
            }else{
                tmpLength = rangeRange.length;
            }
            self.text = [toBeString substringWithRange:NSMakeRange(0, tmpLength)];
        }
    }
}
@end
