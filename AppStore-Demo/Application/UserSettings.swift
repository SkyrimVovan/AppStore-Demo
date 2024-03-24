//
//  UserSettings.swift
//  AppStore-Demo
//
//  Created by Uladzimir on 30.01.2024.
//

import Foundation

struct UserSettings {
    @UserDefault(key: Key.needsOnboarding, defaultValue: true)
    public static var needsOnboarding: Bool
}
