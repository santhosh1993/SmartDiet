//
//  BookAMealController.swift
//  SmartDiet
//
//  Created by Sunilkumar Gavara on 14/09/19.
//  Copyright © 2019 Epam. All rights reserved.
//

import UIKit

final class BookAMealController: UIViewController {

    //MARK: IBoutlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    var dataSource: BooAMealDataSource = BookAMealViewModel(BookAMealNetWorkHandler())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerCells()
    }
    private func registerCells() {
        self.collectionView.register(UINib(nibName: Nibs.selectFoodCell, bundle: nil), forCellWithReuseIdentifier: ReuseIdentifiers.selectFoodCell)
    }
}
extension BookAMealController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSource.getCount()
    }
}
extension BookAMealController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReuseIdentifiers.selectFoodCell, for: indexPath) as? SelectFoodCell
        guard let unWrappedCell = cell else { return UICollectionViewCell.init(frame: .zero)}
        let section = indexPath.section
        unWrappedCell.setUrl(dataSource.getImageThubnail(section))
        unWrappedCell.setPrice(dataSource.getPrice(section))
        unWrappedCell.setCalories(dataSource.getCaleroies(section))
        unWrappedCell.setUpTitleAndType(dataSource.getIsVegAndTItle(section))
        return unWrappedCell
    }
    
}
