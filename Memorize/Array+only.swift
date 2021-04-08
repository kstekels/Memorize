//
//  Array+only.swift
//  Memorize
//
//  Created by karlis.stekels on 08/04/2021.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
