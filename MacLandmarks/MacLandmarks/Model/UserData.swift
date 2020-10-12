//
//  UserData.swift
//  MacLandmarks
//
//  Created by 刘辉 lewis on 2020/10/12.
//

import SwiftUI
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
