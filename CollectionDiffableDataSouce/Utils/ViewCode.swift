//
//  ViewCode.swift
//  CollectionDiffableDataSouce
//
//  Created by Kleiton Mendes on 07/06/22.
//

import Foundation
protocol ViewCode {
    func buildViewHierarchy()
    func addConstraints()
    func additionalConfiguration()
    func setup()
}

extension ViewCode {
    func setup() {
        buildViewHierarchy()
        addConstraints()
        additionalConfiguration()
    }
    
    func additionalConfiguration() {}
}

