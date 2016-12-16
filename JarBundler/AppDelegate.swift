//
//  AppDelegate.swift
//  JarBundler
//
//  Created by Apollo Zhu on 12/15/16.
//  Copyright © 2016 WWITDC. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let DEBUG = false
        let process = Process()
        let stdout = Pipe()
        let stderr = Pipe()

        process.launchPath = "/usr/bin/java"
        process.arguments = ["-jar", Bundle.main.resourcePath!+"/src.jar"]

        if DEBUG {
            process.standardOutput = stdout
            process.standardError = stderr
        }

        process.launch()

        if DEBUG {
            process.waitUntilExit()
            let outData = stdout.fileHandleForReading.readDataToEndOfFile()
            let out = String(data: outData, encoding: .utf8)
            let errData = stderr.fileHandleForReading.readDataToEndOfFile()
            let err = String(data: errData, encoding: .utf8)
            print(out ?? "No output")
            print(err ?? "No error")
        }

        exit(0)
    }

}
