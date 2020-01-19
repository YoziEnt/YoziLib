//
//  UserDefaultsStore.swift
//  Yozi.Lib
//
//  Created by Олег Мишкин on 13/01/2019.
//  Copyright © 2019 Олег Мишкин. All rights reserved.
//

public class UserDefaultsStore {
    private static let defaults = UserDefaults.standard
    
    public static func save <Value : Codable> (key: String, data: Value) {
        defaults.set(try? PropertyListEncoder().encode(data), forKey: key)
        defaults.synchronize()
    }
    
    public static func load <Value : Codable>(key: String, type: Value.Type) -> Value? {
        if let data = defaults.value(forKey: key) as? Data {
            if let savedData = try? PropertyListDecoder().decode(Value.self, from: data) {
                return savedData
            }
        }
        return nil
    }
}
