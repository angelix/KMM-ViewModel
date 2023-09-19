//
//  NavCoordinator.swift
//  Green
//
//  Created by Angelos Veglektsis on 3/28/23.
//

import Foundation
import SwiftUI
import KMMViewModelCore

class NavController: ObservableObject {
    @Published var path = NavigationPath()
    
    func show<VM>(_ vm: VM) where VM: KMMViewModel {
        path.append(observableViewModel(for: vm))
    }
    
    func pop() {
        path.removeLast(1)
    }

    func popToRoot() {
        path.removeLast(path.count)
    }
}
