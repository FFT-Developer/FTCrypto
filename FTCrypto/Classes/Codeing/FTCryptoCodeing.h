//
//  FTCryptoCodeing.h
//  FTCrypto
//
//  Created by FFT on 2022/4/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FTCryptoCodeing : NSObject

/// Base64 编码
/// @param string 内容为nil或len==0 返回nil
/// return String(小写)
+ (NSString *)base64EncodedStringWithString:(NSString *)string;

/// Base64 编码
/// @param string 内容为nil或len==0 返回nil
/// return data
+ (NSData *)base64EncodedDataWithString:(NSString *)string;

/// Base64 编码
/// @param data 内容为nil或len==0 返回nil
/// return md5 String(小写)
+ (NSString *)base64EncodedStringWithData:(NSData *)data;

/// Base64 编码
/// @param data 内容为nil或len==0 返回nil
/// return data
+ (NSData *)base64EncodedDataWithData:(NSData *)data;


/// Base64 解码
/// @param string 内容为nil或len==0 返回nil
/// return string
+ (NSString *)base64DecodedStringWithString:(NSString *)string;

/// Base64 解码
/// @param string 内容为nil或len==0 返回nil
/// return data
+ (NSData *)base64DecodedDataWithString:(NSString *)string;

/// Base64 解码
/// @param data 内容为nil或len==0 返回nil
/// return string
+ (NSString *)base64DecodedStringWithData:(NSData *)data;

/// Base64 解码
/// @param data 内容为nil或len==0 返回nil
/// return data
+ (NSData *)base64DecodedDataWithData:(NSData *)data;

@end

NS_ASSUME_NONNULL_END
