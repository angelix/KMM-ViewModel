//
//  TimeTravelViewModel.swift
//  KMMViewModelSample
//
//  Created by Rick Clephas on 28/11/2022.
//

import KMMViewModelSampleShared
 
class TimeTravelViewModelParent: KMMViewModelSampleShared.TimeTravelViewModel {
    
    @Published var isResetDisabled: Bool = false
    
    override func resetTime() {
        isResetDisabled = !isResetDisabled
        guard isResetDisabled else { return }
        super.resetTime()
    }
}

class TimeTravelViewModel: TimeTravelViewModelParent{

}
