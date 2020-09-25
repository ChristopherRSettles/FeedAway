//
//  ContentView.swift
//  FeedAway
//
//  Created by Christopher Settles on 4/24/20.
//  Copyright © 2020 Christopher Settles. All rights reserved.
//

import SwiftUI
import SafariServices

import UIKit
import AVKit
import AVFoundation

struct ContentView: View {
    // Need this to be an ObservableObject instance so that we can update the values outside of the view!
    @ObservedObject var extensionActivatedObject = ExtensionActivatedObject()
    
    var body: some View {
        VStack {
            if !extensionActivatedObject.extensionActivated  {
                DeactivatedView()
            }
            else {
                ActivatedView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
