//
//  VideoTile.swift
//  AmazonChimeSDK
//
//  Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//

import Foundation

public protocol VideoTile {
    /// Unique Id associated with this tile
    var tileId: Int { get }

    /// Id of the user associated with this tile
    var attendeeId: String? { get }

    /// View which will be used to render the Video Frame
    var videoRenderView: VideoRenderView? { get set }

    /// Binds the view to the tile. The view needs to be create by the application.
    /// Once the binding is done, the view will start displaying the video frame automatically
    ///
    /// - Parameter videoRenderView: the view created by application to render the video frame
    func bind(videoRenderView: VideoRenderView?)

    /// Renders the frame on `videoRenderView`. The call will be silently ignored if the view has not been bind
    /// to the tile using `bind`
    ///
    /// - Parameter frame: a frame of video
    func renderFrame(frame: Any?)

    /// Unbinds the `videoRenderView` from tile.
    func unbind()
}
