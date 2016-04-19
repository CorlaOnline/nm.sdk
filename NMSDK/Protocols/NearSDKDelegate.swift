//
//  NearSDKDelegate.swift
//  NMSDK
//
//  Created by Francesco Colleoni on 08/04/16.
//  Copyright © 2016 Near srl. All rights reserved.
//

import Foundation
import NMPlug

/// The protocol which should be implemented by objects which
/// should receive and consume events generated by NearSDK
@objc
public protocol NearSDKDelegate {
    /// If implemented, this method will be invoked whenever NearSDK receives an event
    optional func nearSDKDidReceiveEvent(event: PluginEvent)
    
    /// If implemented, this method will be invoked whenever NearSDK evaluates one or more notifications
    optional func nearSDKDidEvaluate(notifications collection: [Notification])
    
    /// If implemented, this method will be invoked whenever NearSDK evaluates one or more contents
    optional func nearSDKDidEvaluate(contents collection: [Content])
    
    /// If implemented, this method will be invoked whenever NearSDK evaluates one or more polls
    optional func nearSDKDidEvaluate(polls collection: [Poll])
    
    /// If implemented, this method will be invoked whenever NearSDK will detect an error
    optional func nearSDKDidFail(error error: NearSDKError, message: String)
}
