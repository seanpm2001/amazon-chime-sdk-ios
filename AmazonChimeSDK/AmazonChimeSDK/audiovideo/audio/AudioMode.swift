//
//  AudioMode.swift
//  AmazonChimeSDK
//
//  Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
//  SPDX-License-Identifier: Apache-2.0
//

import Foundation

/// `AudioMode` describes the audio mode in which the audio client should operate during a meeting session
@objc public enum AudioMode: Int, CaseIterable, CustomStringConvertible {
    /// The mono audio mode with single audio channel and 16KHz sampling rate, for both speaker and microphone.
    case mono16K = 1

    /// The mono audio mode with single audio channel and 48KHz sampling rate, for both speaker and microphone.
    case mono48K = 2

    /// The stereo audio mode with two audio channels for speaker, and single audio channel for microphone, both with 48KHz sampling rate.
    case stereo48K = 3

    /// Microphone and speaker device connections are not opened. Muted packets are sent to the server.
    case nodevice = 4

    /// Microphone device connection is not opened. Muted packets are sent to the server.
    case nomic = 5

    public var description: String {
        switch self {
        case .mono16K:
            return "mono16K"
        case .mono48K:
            return "mono48K"
        case .stereo48K:
            return "stereo48K"
        case .nodevice:
            return "nodevice"
        case .nomic:
            return "nomic"
        }
    }
}
