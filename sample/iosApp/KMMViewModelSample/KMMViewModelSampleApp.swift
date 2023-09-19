//
//  KMMViewModelSampleApp.swift
//  KMMViewModelSample
//
//  Created by Rick Clephas on 21/11/2022.
//

import SwiftUI
import KMMViewModelCore
import KMMViewModelSampleShared

@main
struct KMMViewModelSampleApp: App {
    @ObservedObject var navController = NavController()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navController.path) {
                // NavigationLink("GO!", destination: ContentView())
                Button("GO!", action: {
                    navController.show(TimeTravelViewModel())
                })
                .navigationDestination(for: ObservableViewModel<Kmm_viewmodel_coreKMMViewModel>.self) { destination in
                    Text("Kmm_viewmodel_coreKMMViewModel Recognized!!! (not happening)")
                }
                .navigationDestination(for: ObservableViewModel<TimeTravelViewModel>.self) { destination in
                    ContentView(viewModel: destination.viewModel)
                }
            }
            .environmentObject(navController)
        }
    }
}
