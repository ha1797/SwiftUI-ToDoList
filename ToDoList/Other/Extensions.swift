//
//  Extensions.swift
//  ToDoList
//
//  Created by Hoja Arzanesh on 6/17/24.
//

import Foundation

extension Encodable {
    func asDictionary() -> [String: Any] {
        guard let data = try?JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.fragmentsAllowed) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
