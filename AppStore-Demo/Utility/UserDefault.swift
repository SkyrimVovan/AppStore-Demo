//
//  UserDefault.swift
//  AppStore-Demo
//
//  Created by Uladzimir on 30.01.2024.
//

import Foundation

@propertyWrapper
public struct UserDefault<T> {
    private let key: String
    private let defaultValue: T
    private let userDefaults: UserDefaults?

    init(key: String, defaultValue: T, userDefaults: UserDefaults? = .standard) {
        self.key = key
        self.defaultValue = defaultValue
        self.userDefaults = userDefaults
    }

    public var wrappedValue: T {
        get {
            userDefaults?.object(forKey: key) as? T ?? defaultValue
        }
        set {
            userDefaults?.set(newValue, forKey: key)
        }
    }
}
