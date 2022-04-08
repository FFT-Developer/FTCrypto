//
//  FTCryptoHash.h
//  FTCrypto
//
//  Created by FFT on 2022/4/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FTCryptoHash : NSObject


/// MD5 签名
/// @param string 内容为nil或len==0 返回nil;UTF8转Data
/// return md5 String(小写)
+ (NSString *)md5StringWithString:(NSString *)string;


/// MD5 签名
/// @param string 内容为nil或len==0 返回nil;UTF8转Data
/// return md5 Data
+ (NSData *)md5DataWithString:(NSString *)string;


/// MD5 签名
/// @param data 内容为nil或len==0 返回nil
/// return md5 String(小写)
+ (NSString *)md5StringWithData:(NSData *)data;


/// MD5 签名
/// @param data 内容为nil或len==0 返回nil
/// return md5 Data
+ (NSData *)md5DataWithData:(NSData *)data;


@end

NS_ASSUME_NONNULL_END
