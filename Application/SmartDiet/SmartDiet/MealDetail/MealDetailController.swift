//
//  MealDetailController.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

final class MealDetailController: UIViewController {

    //MARK: IBoutlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataSource: MealDetailProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
    
    // MARK: Register Cells
    private func initialSetup() {
        collectionView.register(UINib(nibName: Nibs.cellWithImage, bundle: nil), forCellWithReuseIdentifier: ReuseIdentifiers.cellWithImage)
        collectionView.register(UINib(nibName: Nibs.mealDetailCell, bundle: nil), forCellWithReuseIdentifier: ReuseIdentifiers.mealDetailCell)
    }
}
extension MealDetailController: UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return dataSource.getNumberOfSections()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.getNumberOfRowsInASection(section)
    }
}
extension MealDetailController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return indexPath.section == 0 ? getImageCell(indexPath) : getDetailCell(indexPath)
    }
    func getImageCell(_ indexPath: IndexPath) -> CellWithImage {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReuseIdentifiers.cellWithImage, for: indexPath) as! CellWithImage
        cell.setThumbnailImage(dataSource.getThumbnailURL())
        return cell
    }
    func getDetailCell(_ indexPath: IndexPath) -> MealDetailCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReuseIdentifiers.mealDetailCell, for: indexPath) as! MealDetailCell
        cell.setImage(dataSource.getIsVeg())
        cell.setTitle(dataSource.getTitle())
        cell.setPrice(dataSource.getPrice())
        return cell
    }
}
extension MealDetailController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let deviceWidth = UIScreen.main.bounds.size.width
        return indexPath.section == 0 ?
            CGSize(width: deviceWidth, height: 250) :
            CGSize(width: deviceWidth, height: 90)
    }
}

