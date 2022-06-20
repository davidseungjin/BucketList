//
//  FileManager-DocumentsDirectory.swift
//  BucketList
//
//  Created by David Lee on 6/19/22.
//

import Foundation

extension FileManager {
    static var documentDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    
}
