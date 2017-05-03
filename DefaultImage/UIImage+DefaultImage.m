//
//  UIImage+DefaultImage.m
//  DefaultImage
//
//  Created by zhangwei on 17/5/2.
//  Copyright © 2017年 jyall. All rights reserved.
//

#import "UIImage+DefaultImage.h"

@implementation UIImage (DefaultImage)

+(UIImage *)produceNewImageWithSmallImage:(UIImage *)image smallImageSize:(CGSize)smallImageSize withOutSize:(CGSize)outSize{
    //矩形路径
    UIBezierPath *outerPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, outSize.width, outSize.height)];
    UIGraphicsBeginImageContextWithOptions(outSize, NO, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);{
        // 翻转context （画布）
        CGContextTranslateCTM(context, 0, outSize.height);
        CGContextScaleCTM(context, 1, -1);
        //画一个矩形并填充一个自定义颜色（与给的logo图背景颜色相同正好无缝衔接也可以切一个透明的）
        CGContextAddPath(context, outerPath.CGPath);
        CGContextSetFillColorWithColor(context, [UIColor lightGrayColor].CGColor);
        CGContextDrawPath(context, kCGPathFill);
        CGContextStrokePath(context);
        //绘制图片在矩形中心位置
        CGContextDrawImage(context, CGRectMake((outSize.width-smallImageSize.width)/2, (outSize.height-smallImageSize.height)/2,
                                               smallImageSize.width, smallImageSize.height), image.CGImage);
    }CGContextRestoreGState(context);
    UIImage *radiusImage  = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return radiusImage;
}
@end
