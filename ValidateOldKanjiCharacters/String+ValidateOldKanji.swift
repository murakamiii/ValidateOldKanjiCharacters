//
//  String+ValidateOldKanji.swift
//  ValidateOldKanjiCharacters
//
//  Created by MURAKAMI on 2018/01/03.
//  Copyright © 2018年 MURAKAMI. All rights reserved.
//

import Foundation
extension String {
    func containsOldKanji() -> Bool {

        //        return !self.canBeConverted(to: .shiftJIS)
        return containsIBMExtension()
    }
    
    
    func containsIBMExtension() -> Bool {
        guard let data = self.data(using: .shiftJIS),
            let shiftJISStr = String(data: data, encoding: .shiftJIS)
            else {
                return false
        }
        
        // http://charset.7jp.net/sjis.html のIBM拡張(?)で漢字相当の範囲を引っ掛ける
        let regEx = ".*[\u{ed40}-\u{eeec}]+.*"
        let test = NSPredicate(format: "SELF MATCHES %@", regEx)
        return test.evaluate(with:shiftJISStr)
        
//        var values = [UInt8](data)
//        values.forEach {
//            print(String.init($0, radix: 16))
//        }
//        return true
    }
}
