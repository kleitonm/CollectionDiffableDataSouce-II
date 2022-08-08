//
//  ConfigureCell.swift
//  CollectionDiffableDataSouce
//
//  Created by Kleiton Mendes on 07/06/22.
//

import UIKit

protocol ConfigureCell {
    
    associatedtype Model
    
    static var reuseIdentifier: String { get }
    
    func configure(with app: Model)
        
    
}

extension UICollectionView {
    
    func configure<T: ConfigureCell>(_ cellType: T.Type, with model: T.Model, for indexPath: IndexPath) -> T {
        
        guard let cell = dequeueReusableCell(withReuseIdentifier: cellType.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Unable to dequeue \(cellType)")
        }
        cell.configure(with: model)
        
        return cell
    }
    
}
