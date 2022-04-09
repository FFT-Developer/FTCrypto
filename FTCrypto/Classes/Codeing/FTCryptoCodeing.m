//
//  FTCryptoCodeing.m
//  FTCrypto
//
//  Created by FFT on 2022/4/8.
//

#import "FTCryptoCodeing.h"

@implementation FTCryptoCodeing

+ (NSString *)base64EncodedStringWithString:(NSString *)string {
    
    return [self base64EncodedStringWithData:[string dataUsingEncoding:NSUTF8StringEncoding]];
}


+ (NSData *)base64EncodedDataWithString:(NSString *)string {
    
    return [self base64EncodedDataWithData:[string dataUsingEncoding:NSUTF8StringEncoding]];
}


+ (NSString *)base64EncodedStringWithData:(NSData *)data {
    NSData *encode = [self base64EncodedDataWithData:data];
    if(!encode || encode.length <= 0) return nil;
    
    return [[NSString alloc] initWithData:encode encoding:NSUTF8StringEncoding];
}

+ (NSData *)base64EncodedDataWithData:(NSData *)data {
    if(!data || data.length <= 0) return nil;
    // 使用0,不进行换行
    NSData *encode = [data base64EncodedDataWithOptions:0];
    return encode;
}


+ (NSString *)base64DecodedStringWithString:(NSString *)string {
    
    return [self base64DecodedStringWithData:[string dataUsingEncoding:NSUTF8StringEncoding]];
}

+ (NSData *)base64DecodedDataWithString:(NSString *)string {
    
    return [self base64DecodedDataWithData:[string dataUsingEncoding:NSUTF8StringEncoding]];
}


+ (NSString *)base64DecodedStringWithData:(NSData *)data {
    NSData *encode = [self base64DecodedDataWithData:data];
    if(!encode || encode.length <= 0) return nil;
    
    return [[NSString alloc] initWithData:encode encoding:NSUTF8StringEncoding];
}

+ (NSData *)base64DecodedDataWithData:(NSData *)data {
    if(!data || data.length <= 0) return nil;
    
    NSData *encode = [[NSData alloc] initWithBase64EncodedData:data options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return encode;
}

@end
