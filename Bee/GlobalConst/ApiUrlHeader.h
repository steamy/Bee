//
//  ApiUrlHeader.h
//  Bee
//
//  Created by steam on 2017/2/2.
//  Copyright © 2017年 steam. All rights reserved.
//

#ifndef ApiUrlHeader_h
#define ApiUrlHeader_h


/**
 *URL element define
 */

//api 服务器域名
//服务器地址
//#define         Bee_ApiServeDomain          @"https://api.steambean.me/Bee"
//本地地址
#define         Bee_ApiServeDomain          @"http://localhost/Bee"

/**
 *      ApiUrl define
 */
//test_login 测试接口
#define         Bee_URL_Login                   [NSString stringWithFormat:@"%@%@",Bee_ApiServeDomain,@"/login"]

#define         Bee_URL_PostTest                   [NSString stringWithFormat:@"%@%@",Bee_ApiServeDomain,@"/postTest"]



#endif /* ApiUrlHeader_h */
