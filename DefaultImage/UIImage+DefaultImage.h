//
//  UIImage+DefaultImage.h
//  DefaultImage
//
//  Created by zhangwei on 17/5/2.
//  Copyright © 2017年 jyall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DefaultImage)
+(UIImage *)produceNewImageWithSmallImage:(UIImage *)image smallImageSize:(CGSize)smallImageSize withOutSize:(CGSize)outSize;
@end
