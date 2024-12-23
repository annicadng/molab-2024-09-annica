//
//  MakeItSoApp.swift
//  MakeItSo
//
//  Created by Annica Dong on 11/7/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      FirebaseApp.configure()
      return true
  }
}

@main
struct MakeItSoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                RemindersListView()
                    .navigationTitle("Reminders")
            }
        }
    }
}
