//
//  FTCryptoHashTests.m
//  FTCrypto_Tests
//
//  Created by 方飞特 on 2022/4/8.
//  Copyright © 2022 FFT. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <CommonCrypto/CommonCrypto.h>
#import <FTCrypto/FTCryptoHeader.h>

@interface FTCryptoHashTests : XCTestCase

@end

@implementation FTCryptoHashTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testMD5Data {
    
    // 正常签名测试
    NSString *testString = @"123456789";
    NSData *testData = [testString dataUsingEncoding:NSUTF8StringEncoding];
    NSString *testString_MD5 = @"25f9e794323b453885f5181f1b624d0b";
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(testData.bytes, (CC_LONG)testData.length, result);
    NSData *testData_MD5 = [NSData dataWithBytes:result length:CC_MD5_DIGEST_LENGTH];
    
    NSString *testValue1 = [FTCryptoHash md5StringWithString:testString];
    XCTAssertTrue([testValue1 isEqualToString:testString_MD5]);
    
    NSData *testValue2 = [FTCryptoHash md5DataWithString:testString];
    XCTAssertTrue([testValue2 isEqualToData:testData_MD5]);
    
    // 异常入参
    NSString *testStringEmpty = @"";
    NSString *testStringNil = nil;
    
    NSString *testValue3 = [FTCryptoHash md5StringWithString:testStringEmpty];
    XCTAssertNil(testValue3);
    
    NSString *testValue4 = [FTCryptoHash md5StringWithString:testStringNil];
    XCTAssertNil(testValue4);
}


@end
