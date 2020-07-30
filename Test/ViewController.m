//
//  ViewController.m
//  Test
//
//  Created by 颜学赶 on 2020/6/30.
//  Copyright © 2020 颜学赶. All rights reserved.
//

#import "ViewController.h"
//#import "AFURLSessionManager.h"
//#import "SSZipArchive.h"
#import "AFNetworking.h"f

@interface ViewController ()///<, NSURLSessionTaskDelegate, NSURLSessionDataDelegate>

//@property(nonatomic, strong) NSURLSession *session;
//@property(nonatomic, strong) NSURLSessionDownloadTask *task;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
//    self.session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:@"com.xuegan.Test.background"] delegate:self delegateQueue:[NSOperationQueue mainQueue]];
//    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(15, 30, 100, 30)];
//    [self.view addSubview:label];
//    label.text = @"第一次测试";
//    label.textColor = [UIColor blackColor];
}

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    NSLog(@"点击");
////    [self start];
//}
//
//
//- (void)start{
//    self.task = [self.session downloadTaskWithURL:[NSURL URLWithString:@"https://fdstatic.casichealthcare.com//group1/M00/00/21/Cp8XZF8MF0GAUxhgAAAH70dhoPk363.zip"]];
//    [self.task resume];
//}
//
//- (void)URLSession:(NSURLSession *)session task:(NSURLSessionTask *)task didCompleteWithError:(NSError *)error {
//    if (error) {
//        NSLog(@"didCompleteWithError:%@",error);
//    }
//}
//
//- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)downloadURL {
//    NSString * zipFileName = @"FULLDATAZIP";
//
//    NSLog(@"下载成功:%@",downloadURL.path);
//    //6.处理数据
//    //6.1 拼接文件全路径
//    NSString * path = [NSString stringWithFormat:@"%@/products", [self docPath]];
//    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
//        [[NSFileManager defaultManager] createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
//    }
//    NSString * zipPath = [path stringByAppendingFormat:@"/%@.zip", zipFileName];
//    NSString * unZipPath = [path stringByAppendingFormat:@"/%@", zipFileName];
//    if (![[NSFileManager defaultManager] fileExistsAtPath:unZipPath]) {
//        [[NSFileManager defaultManager] createDirectoryAtPath:unZipPath withIntermediateDirectories:YES attributes:nil error:nil];
//    }
//    unZipPath = [unZipPath stringByAppendingString:@"/"];
//    NSData * data = [NSData dataWithContentsOfFile:downloadURL.path];
//    [data writeToFile:zipPath options:0 error:nil];
//    //6.2 剪切文件
//
//    // 目前默认只支持一个文件的压缩包
//    __block NSString * fileName = nil;
//
//    [SSZipArchive unzipFileAtPath:zipPath
//                    toDestination:unZipPath
//                  progressHandler:^(NSString * _Nonnull entry, unz_file_info zipInfo, long entryNumber, long total) {
//
//        // 目前默认只支持一个文件的压缩包，获取文件名
//        fileName = entry;
//    }
//                completionHandler:^(NSString * _Nonnull path, BOOL succeeded, NSError * _Nonnull error) {
//
//        // 由链接最后一段获取文件名 当前这个假设已经不成立，在全量同步数据接口中。
//        //NSString * fileName = [[[url lastPathComponent] componentsSeparatedByString:@"."] firstObject];
//
//        NSString * filePath = [unZipPath stringByAppendingString: fileName];
//        NSString * renameFilePath = [unZipPath stringByAppendingFormat:@"%@.txt", zipFileName];
//        // 数据
//        NSData * unZipData = [NSData dataWithContentsOfFile:filePath];
//
//        NSFileManager * fm = [NSFileManager defaultManager];
//        // 如果目录下已经有同名文件，重命名会失败
//        if ([fm fileExistsAtPath:renameFilePath]) {
//            [fm removeItemAtPath:renameFilePath error:nil];
//        }
//        // 重命名文件
//        [fm moveItemAtPath:filePath toPath:renameFilePath error:nil];
//        NSLog(@"renameFilePath:::;%@",renameFilePath);
//        //                completeHandler(unZipData);
//    }];
//
//
//}
//
//


//- (void)start{
//    __block NSString * zipFileName = @"FULLDATAZIP";
//
//
//    self.task = [self.session downloadTaskWithURL:[NSURL URLWithString:@"https://fdstatic.casichealthcare.com//group1/M00/00/21/Cp8XZF8MF0GAUxhgAAAH70dhoPk363.zip"] completionHandler:^(NSURL * _Nullable location, NSURLResponse * _Nullable response, NSError * _Nullable error) {
//        if (error) {
//            NSLog(@"下载失败：%@",error);
////            completeHandler(nil);
//        }else{
//            NSLog(@"下载成功:%@",location.path);
//            //6.处理数据
//            //6.1 拼接文件全路径
//            NSString * path = [NSString stringWithFormat:@"%@/products", [self docPath]];
//            if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
//                [[NSFileManager defaultManager] createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil];
//            }
//            NSString * zipPath = [path stringByAppendingFormat:@"/%@.zip", zipFileName];
//            NSString * unZipPath = [path stringByAppendingFormat:@"/%@", zipFileName];
//            if (![[NSFileManager defaultManager] fileExistsAtPath:unZipPath]) {
//                [[NSFileManager defaultManager] createDirectoryAtPath:unZipPath withIntermediateDirectories:YES attributes:nil error:nil];
//            }
//            unZipPath = [unZipPath stringByAppendingString:@"/"];
//            NSData * data = [NSData dataWithContentsOfFile:location.path];
//            [data writeToFile:zipPath options:0 error:nil];
//            //6.2 剪切文件
//
//            // 目前默认只支持一个文件的压缩包
//            __block NSString * fileName = nil;
//
//            [SSZipArchive unzipFileAtPath:zipPath
//                            toDestination:unZipPath
//                          progressHandler:^(NSString * _Nonnull entry, unz_file_info zipInfo, long entryNumber, long total) {
//
//                // 目前默认只支持一个文件的压缩包，获取文件名
//                fileName = entry;
//            }
//                        completionHandler:^(NSString * _Nonnull path, BOOL succeeded, NSError * _Nonnull error) {
//
//                // 由链接最后一段获取文件名 当前这个假设已经不成立，在全量同步数据接口中。
//                //NSString * fileName = [[[url lastPathComponent] componentsSeparatedByString:@"."] firstObject];
//
//                NSString * filePath = [unZipPath stringByAppendingString: fileName];
//                NSString * renameFilePath = [unZipPath stringByAppendingFormat:@"%@.txt", zipFileName];
//                // 数据
//                NSData * unZipData = [NSData dataWithContentsOfFile:filePath];
//
//                NSFileManager * fm = [NSFileManager defaultManager];
//                // 如果目录下已经有同名文件，重命名会失败
//                if ([fm fileExistsAtPath:renameFilePath]) {
//                    [fm removeItemAtPath:renameFilePath error:nil];
//                }
//                // 重命名文件
//                [fm moveItemAtPath:filePath toPath:renameFilePath error:nil];
//                NSLog(@"renameFilePath:::;%@",renameFilePath);
////                completeHandler(unZipData);
//            }];
//
//
//        }
//
//    }];
//    [self.task resume];
//
//}
//
//
//- (NSString *)docPath{
//    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString * path = [paths objectAtIndex:0];
//    return path;
//}



@end
