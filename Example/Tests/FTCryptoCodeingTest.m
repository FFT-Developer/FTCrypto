//
//  FTCryptoCodeingTest.m
//  FTCrypto_Tests
//
//  Created by FFT on 2022/4/9.
//  Copyright © 2022 FFT. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <FTCrypto/FTCryptoHeader.h>

@interface FTCryptoCodeingTest : XCTestCase

@end

@implementation FTCryptoCodeingTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testBase64 {
    
    NSString *testString = @"1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试1234567890qwertyuioipasdfghhjklzxcvbnm,./';][=-0`!!!sandlc测试测试";
    NSData *testData = [testString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSString *testStringEn = @"MTIzNDU2Nzg5MHF3ZXJ0eXVpb2lwYXNkZmdoaGprbHp4Y3Zibm0sLi8nO11bPS0wYCEhIXNhbmRsY+a1i+ivlea1i+ivlTEyMzQ1Njc4OTBxd2VydHl1aW9pcGFzZGZnaGhqa2x6eGN2Ym5tLC4vJztdWz0tMGAhISFzYW5kbGPmtYvor5XmtYvor5UxMjM0NTY3ODkwcXdlcnR5dWlvaXBhc2RmZ2hoamtsenhjdmJubSwuLyc7XVs9LTBgISEhc2FuZGxj5rWL6K+V5rWL6K+VMTIzNDU2Nzg5MHF3ZXJ0eXVpb2lwYXNkZmdoaGprbHp4Y3Zibm0sLi8nO11bPS0wYCEhIXNhbmRsY+a1i+ivlea1i+ivlTEyMzQ1Njc4OTBxd2VydHl1aW9pcGFzZGZnaGhqa2x6eGN2Ym5tLC4vJztdWz0tMGAhISFzYW5kbGPmtYvor5XmtYvor5UxMjM0NTY3ODkwcXdlcnR5dWlvaXBhc2RmZ2hoamtsenhjdmJubSwuLyc7XVs9LTBgISEhc2FuZGxj5rWL6K+V5rWL6K+VMTIzNDU2Nzg5MHF3ZXJ0eXVpb2lwYXNkZmdoaGprbHp4Y3Zibm0sLi8nO11bPS0wYCEhIXNhbmRsY+a1i+ivlea1i+ivlTEyMzQ1Njc4OTBxd2VydHl1aW9pcGFzZGZnaGhqa2x6eGN2Ym5tLC4vJztdWz0tMGAhISFzYW5kbGPmtYvor5XmtYvor5UxMjM0NTY3ODkwcXdlcnR5dWlvaXBhc2RmZ2hoamtsenhjdmJubSwuLyc7XVs9LTBgISEhc2FuZGxj5rWL6K+V5rWL6K+VMTIzNDU2Nzg5MHF3ZXJ0eXVpb2lwYXNkZmdoaGprbHp4Y3Zibm0sLi8nO11bPS0wYCEhIXNhbmRsY+a1i+ivlea1i+ivlTEyMzQ1Njc4OTBxd2VydHl1aW9pcGFzZGZnaGhqa2x6eGN2Ym5tLC4vJztdWz0tMGAhISFzYW5kbGPmtYvor5XmtYvor5UxMjM0NTY3ODkwcXdlcnR5dWlvaXBhc2RmZ2hoamtsenhjdmJubSwuLyc7XVs9LTBgISEhc2FuZGxj5rWL6K+V5rWL6K+VMTIzNDU2Nzg5MHF3ZXJ0eXVpb2lwYXNkZmdoaGprbHp4Y3Zibm0sLi8nO11bPS0wYCEhIXNhbmRsY+a1i+ivlea1i+ivlTEyMzQ1Njc4OTBxd2VydHl1aW9pcGFzZGZnaGhqa2x6eGN2Ym5tLC4vJztdWz0tMGAhISFzYW5kbGPmtYvor5XmtYvor5UxMjM0NTY3ODkwcXdlcnR5dWlvaXBhc2RmZ2hoamtsenhjdmJubSwuLyc7XVs9LTBgISEhc2FuZGxj5rWL6K+V5rWL6K+VMTIzNDU2Nzg5MHF3ZXJ0eXVpb2lwYXNkZmdoaGprbHp4Y3Zibm0sLi8nO11bPS0wYCEhIXNhbmRsY+a1i+ivlea1i+ivlTEyMzQ1Njc4OTBxd2VydHl1aW9pcGFzZGZnaGhqa2x6eGN2Ym5tLC4vJztdWz0tMGAhISFzYW5kbGPmtYvor5XmtYvor5UxMjM0NTY3ODkwcXdlcnR5dWlvaXBhc2RmZ2hoamtsenhjdmJubSwuLyc7XVs9LTBgISEhc2FuZGxj5rWL6K+V5rWL6K+VMTIzNDU2Nzg5MHF3ZXJ0eXVpb2lwYXNkZmdoaGprbHp4Y3Zibm0sLi8nO11bPS0wYCEhIXNhbmRsY+a1i+ivlea1i+ivlTEyMzQ1Njc4OTBxd2VydHl1aW9pcGFzZGZnaGhqa2x6eGN2Ym5tLC4vJztdWz0tMGAhISFzYW5kbGPmtYvor5XmtYvor5UxMjM0NTY3ODkwcXdlcnR5dWlvaXBhc2RmZ2hoamtsenhjdmJubSwuLyc7XVs9LTBgISEhc2FuZGxj5rWL6K+V5rWL6K+VMTIzNDU2Nzg5MHF3ZXJ0eXVpb2lwYXNkZmdoaGprbHp4Y3Zibm0sLi8nO11bPS0wYCEhIXNhbmRsY+a1i+ivlea1i+ivlQ==";
    NSData *testDataEn = [testStringEn dataUsingEncoding:NSUTF8StringEncoding];
    
    // Encode
    NSString *test1 = [FTCryptoCodeing base64EncodedStringWithString:testString];
    XCTAssertTrue([test1 isEqualToString:testStringEn]);
    
    NSData *test2 = [FTCryptoCodeing base64EncodedDataWithString:testString];
    XCTAssertTrue([test2 isEqualToData:testDataEn]);
    
    
    // Decode
    NSString *test3 = [FTCryptoCodeing base64DecodedStringWithString:testStringEn];
    XCTAssertTrue([test3 isEqualToString:testString]);
    
    NSData *test4 = [FTCryptoCodeing base64DecodedDataWithString:testStringEn];
    XCTAssertTrue([test4 isEqualToData:testData]);
    
    
    // 异常入参
    NSString *testStringEmpty = @"";
    NSString *testStringNil = nil;
    
    NSString *test5 = [FTCryptoCodeing base64EncodedStringWithString:testStringEmpty];
    XCTAssertNil(test5);
    
    NSData *test6 = [FTCryptoCodeing base64EncodedDataWithString:testStringEmpty];
    XCTAssertNil(test6);
    
    NSString *test7 = [FTCryptoCodeing base64EncodedStringWithString:testStringNil];
    XCTAssertNil(test7);
    
    NSData *test8 = [FTCryptoCodeing base64EncodedDataWithString:testStringNil];
    XCTAssertNil(test8);
    
    NSString *test9 = [FTCryptoCodeing base64DecodedStringWithString:testStringEmpty];
    XCTAssertNil(test9);
    
    NSData *test10 = [FTCryptoCodeing base64DecodedDataWithString:testStringEmpty];
    XCTAssertNil(test10);
    
    NSString *test11 = [FTCryptoCodeing base64DecodedStringWithString:testStringNil];
    XCTAssertNil(test11);
    
    NSData *test12 = [FTCryptoCodeing base64DecodedDataWithString:testStringNil];
    XCTAssertNil(test12);
    
    
    
}

@end
