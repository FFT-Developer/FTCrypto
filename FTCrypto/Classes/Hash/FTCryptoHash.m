//
//  FTCryptoHash.m
//  FTCrypto
//
//  Created by FFT on 2022/4/8.
//

#import "FTCryptoHash.h"
#import <CommonCrypto/CommonCrypto.h>

@implementation FTCryptoHash

+ (NSString *)md5StringWithString:(NSString *)string {
    return [self md5StringWithData:[string dataUsingEncoding:NSUTF8StringEncoding]];
}

+ (NSData *)md5DataWithString:(NSString *)string {
    return [self md5DataWithData:[string dataUsingEncoding:NSUTF8StringEncoding]];
}

+ (NSString *)md5StringWithData:(NSData *)data {
    if(!data || data.length <= 0) return nil;
    
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (CC_LONG)data.length, result);
    NSMutableString *hash = @"".mutableCopy;
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [hash appendFormat:@"%02x", result[i]];
    }
    
    return hash;
}


+ (NSData *)md5DataWithData:(NSData *)data {
    if(!data || data.length <= 0) return nil;
    
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(data.bytes, (CC_LONG)data.length, result);
    return [NSData dataWithBytes:result length:CC_MD5_DIGEST_LENGTH];
}

@end
