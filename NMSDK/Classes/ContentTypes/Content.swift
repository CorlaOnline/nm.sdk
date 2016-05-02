//
//  Content.swift
//  NMSDK
//
//  Created by Francesco Colleoni on 15/04/16.
//  Copyright © 2016 Near srl. All rights reserved.
//

import Foundation
import NMNet

/// A content reaction.
@objc
public class Content: NSObject {
    // MARK: Properties
    /// The identifier of the content.
    public private (set) var id = ""
    
    /// The recipe which evaluated the content.
    public private (set) var recipe: Recipe?
    
    /// The title of the content.
    public private (set) var title = ""
    
    /// The text of the content.
    public private (set) var text = ""
    
    /// The identifiers of image contents associated to the content.
    public var imageIdentifiers = [String]()
    
    /// The URL of the video associated to the content.
    public var videoURL: NSURL?
    
    // MARK: Initializers
    /// Initializes a new `Content`.
    ///
    /// - parameters:
    ///   - content: the source `APRecipeContent` instance
    ///   - recipe: the source `APRecipe` which evaluated the content
    public init(content: APRecipeContent, recipe evaluatedRecipe: APRecipe?) {
        super.init()
        
        id = content.id
        title = content.title
        text = content.text
        imageIdentifiers = content.imageIdentifiers
        videoURL = content.videoURL
        
        if let r = evaluatedRecipe {
            recipe = Recipe(recipe: r)
        }
    }
    
    // MARK: Properties
    /// Human-readable description of `Self`.
    public override var description: String {
        return Console.describe(Notification.self, properties: ("id", id), ("title", title), ("text", text), ("imageIdentifiers", imageIdentifiers.joinWithSeparator(", ")), ("video", videoURL), ("recipe", recipe?.evaluation))
    }
}