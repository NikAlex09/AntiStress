//
//  AppDelegate.swift
//  AntiStress
//
//  Created by Николай Алексанов on 10.05.2022.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    @IBOutlet weak var theLabel: NSTextField!
    @IBOutlet weak var theButton: NSButton!
    @IBOutlet weak var pressedButton: NSButton!
  
    var buttonPresses = 0;
    override func awakeFromNib() {
        theLabel.stringValue = "You've pressed the button \n \(buttonPresses) times!"
    }
    @IBAction func pressedButton(sender: NSButton) {
    buttonPresses+=1
    theLabel.stringValue = "You've pressed the button \n \(buttonPresses) times!"
    }
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

