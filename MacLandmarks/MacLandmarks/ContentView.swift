//
//  ContentView.swift
//  MacLandmarks
//
//  Created by 刘辉 lewis on 2020/10/12.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedLandmark: Landmark?
    
    var body: some View {
        NavigationView {
                    NavigationPrimary(selectedLandmark: $selectedLandmark)

                    if selectedLandmark != nil {
                        NavigationDetail(landmark: selectedLandmark!)
                    }
                }
                .frame(minWidth: 1200, minHeight: 900)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserData())
    }
}


