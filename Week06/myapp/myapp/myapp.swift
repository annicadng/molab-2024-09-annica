/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

@main
struct myappApp: App {
    @StateObject var document = Document()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(document)
                    }
    }
}


