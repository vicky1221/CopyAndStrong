//
//  ViewController.m
//  CopyAndStrongTest
//
//  Created by Vicky on 2018/11/8.
//  Copyright © 2018 Vicky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// String
// unmutable
@property (nonatomic, strong) NSString *aStrongString;
@property (nonatomic, copy) NSString   *aCopyString;

// mutable
@property (nonatomic, strong) NSMutableString *aStrongMutableString;
@property (nonatomic, copy) NSMutableString *aCopyMutableString;

// Array
// unmutable
@property (nonatomic, strong) NSArray *aStrongArray;
@property (nonatomic, copy) NSArray *aCopyArray;
// mutable
@property (nonatomic, strong) NSMutableArray *aMutableStrongArray;
@property (nonatomic, copy) NSMutableArray *aMutableCopyArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self unmutableStringTest];
    [self mutableStringTest];
}

- (void)unmutableStringTest {
    NSString *testString = @"Hello";
    self.aStrongString = testString;
    self.aCopyString = testString;
    
    NSLog(@"Before Change\n");
    NSLog(@"testString: address:%p, value:%@", testString, testString);
    NSLog(@"StrongString: address:%p, value:%@", _aStrongString, _aStrongString);
    NSLog(@"CopyString: address:%p, value:%@\n\n", _aCopyString, _aCopyString);
    
    testString = [testString stringByAppendingString:@" World"];
    NSLog(@"After Change\n");
    
    NSLog(@"testString: address:%p, value:%@", testString, testString);
    NSLog(@"StrongString: address:%p, value:%@", _aStrongString, _aStrongString);
    NSLog(@"CopyString: address:%p, value:%@\n\n", _aCopyString, _aCopyString);
}

- (void)mutableStringTest {
    NSMutableString *testString = [NSMutableString stringWithString:@"Hello"];
    self.aStrongString = testString;
    self.aCopyString = testString;
    self.aStrongMutableString = testString;
    self.aCopyMutableString = testString;
    NSLog(@"Before Change\n");
    NSLog(@"testString: address:%p, value:%@", testString, testString);
    NSLog(@"StrongString: address:%p, value:%@", _aStrongString, _aStrongString);
    NSLog(@"CopyString: address:%p, value:%@", _aCopyString, _aCopyString);
    NSLog(@"StrongMutableString: address:%p, value:%@", _aStrongMutableString, _aStrongMutableString);
    NSLog(@"CopyMutableString: address:%p, value:%@\n\n", _aCopyMutableString, _aCopyMutableString);
    
    [testString appendString:@" World"];
    NSLog(@"After Change\n");
    NSLog(@"testString: address:%p, value:%@", testString, testString);
    NSLog(@"StrongString: address:%p, value:%@", _aStrongString, _aStrongString);
    NSLog(@"CopyString: address:%p, value:%@", _aCopyString, _aCopyString);
    NSLog(@"StrongMutableString: address:%p, value:%@", _aStrongMutableString, _aStrongMutableString);
    NSLog(@"CopyMutableString: address:%p, value:%@\n\n", _aCopyMutableString, _aCopyMutableString);
}

- (void)arrayTest {
    NSArray *testArray = [NSArray arrayWithObjects:@"1", @"2", @"3", nil];
    self.aStrongArray = testArray;
    self.aCopyArray = testArray;
    NSLog(@"testArray: address:%p, value:%@", testArray, testArray);
    NSLog(@"StrongArray: address:%p, value:%@", _aStrongArray, _aStrongArray);
    NSLog(@"CopyArray: address:%p, value:%@\n\n", _aCopyArray, _aCopyArray);
}

- (void)mutableArrayTest {
    NSMutableArray *testArray = [NSMutableArray arrayWithObjects:@"1", @"2", @"3", nil];
    self.aStrongArray = testArray;
    self.aCopyArray = testArray;
    self.aMutableStrongArray = testArray;
    self.aMutableCopyArray = testArray;
    NSLog(@"Before Change\n");
    NSLog(@"testArray: address:%p, value:%@", testArray, testArray);
    NSLog(@"StrongArray: address:%p, value:%@", _aStrongArray, _aStrongArray);
    NSLog(@"CopyArray: address:%p, value:%@\n\n", _aCopyArray, _aCopyArray);
    NSLog(@"MutableStrongArray: address:%p, value:%@\n\n",_aMutableStrongArray, _aMutableStrongArray);
    NSLog(@"MutableCopyArray: address:%p, value:%@\n\n", _aMutableCopyArray, _aMutableCopyArray);
    
    [testArray addObject:@"4"];
    NSLog(@"After Change\n");
    NSLog(@"testArray: address:%p, value:%@", testArray, testArray);
    NSLog(@"StrongArray: address:%p, value:%@", _aStrongArray, _aStrongArray);
    NSLog(@"CopyArray: address:%p, value:%@\n\n", _aCopyArray, _aCopyArray);
    NSLog(@"MutableStrongArray: address:%p, value:%@\n\n",_aMutableStrongArray, _aMutableStrongArray);
    NSLog(@"MutableCopyArray: address:%p, value:%@\n\n", _aMutableCopyArray, _aMutableCopyArray);
}

- (void)deepCopy {
    
}


@end
