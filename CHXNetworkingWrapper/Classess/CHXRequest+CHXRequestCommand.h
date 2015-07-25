//
//  CHXRequest+CHXRequestCommand.h
//  CHXNetworkingWrapper
//
//  Created by Moch Xiao on 7/11/15.
//  Copyright (c) 2015 Moch Xiao. All rights reserved.
//

#import "CHXRequest.h"

@interface CHXRequest (CHXRequestCommand)

/// Start a http request
- (CHXRequest *)startRequest;

/// Stop the http request
- (CHXRequest *)stopRequest;

/// Stop all the http request
- (CHXRequest *)stopAllRequest;

@end
