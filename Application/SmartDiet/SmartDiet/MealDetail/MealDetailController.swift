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
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    // MARK: Register Cells
    private func initialSetup() {
        collectionView.register(UINib(nibName: Nibs.cellWithImage, bundle: nil), forCellWithReuseIdentifier: ReuseIdentifiers.cellWithImage)
        collectionView.register(UINib(nibName: Nibs.mealDetailCell, bundle: nil), forCellWithReuseIdentifier: ReuseIdentifiers.mealDetailCell)
        collectionView.register(UINib(nibName: Nibs.cellCharts, bundle: nil), forCellWithReuseIdentifier: ReuseIdentifiers.cellCharts)
        collectionView.register(UINib(nibName: Nibs.cellDescription, bundle: nil), forCellWithReuseIdentifier: ReuseIdentifiers.cellDescription)
    }
    @IBAction func addNavButton() {
        _ = self.navigationController?.popViewController(animated: true)
    }
    @objc func onBackPressed() {
        
    }
    private func  showAlert() {
        
        let alertController = UIAlertController.init(title: AlertConstants.Alert, message: AlertConstants.FoodOnTheWay, preferredStyle: .alert)
        let alertAction = UIAlertAction.init(title: AlertConstants.Ok, style: .cancel, handler: nil)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
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
        
        let section = indexPath.section
        switch section {
        case 0:
            return getImageCell(indexPath)
        case 1:
            return getDetailCell(indexPath)
        case 2:
            return getChartsCell(indexPath)
        default:
            return getDescriptionCell(indexPath)
        }
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
        cell.onTapAddClosure = { [weak self] in
            self?.showAlert()
        }
        return cell
    }
    func getChartsCell(_ indexPath: IndexPath) -> CellCharts {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReuseIdentifiers.cellCharts, for: indexPath) as! CellCharts
        let chartsData = dataSource.getChartsData()
        cell.setUpData(chartsData.0, points: chartsData.1)
        return cell
    }
    func getDescriptionCell(_ indexPath: IndexPath) -> CellDescription {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ReuseIdentifiers.cellDescription, for: indexPath) as! CellDescription
        cell.setDescription(dataSource.getDescription())
        return cell
    }
}
extension MealDetailController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let deviceWidth = UIScreen.main.bounds.size.width
        let section = indexPath.section
        
        switch section {
        case 0:
            return CGSize(width: deviceWidth, height: 250)
        case 1:
            return CGSize(width: deviceWidth, height: 100)
        case 2:
            return CGSize(width: deviceWidth, height: 260)
        default:
            return CGSize(width: deviceWidth, height: dataSource.getHeightofDescCell())
        }
    }
}

