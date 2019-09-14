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
    
    var dataSource: BooAMealDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
    private func initialSetup() {
        self.registerCells()
        dataSource = BookAMealViewModel(BookAMealNetWorkHandler())
        dataSource.getData()
        let spinnerView = self.displaySpinner(onView: self.view)
        dataSource.uplodaData = { [unowned self] in
            DispatchQueue.main.async {
                self.collectionView.reloadData()
                self.removeSpinner(spinner: spinnerView)
            }
        }
    }
    private func registerCells() {
        self.collectionView.register(UINib(nibName: Nibs.selectFoodCell, bundle: nil), forCellWithReuseIdentifier: ReuseIdentifiers.selectFoodCell)
    }
    
    @IBAction func suggestMeTapped(_ sender: Any) {
       loadSuugestScreen()
    }
    func loadSuugestScreen(){
        let vcTabController = UIStoryboard.getViewControllerWithId(StoryBoardNames.Food, ControllerIds.suggestMealController)
        self.navigationController?.pushViewController(vcTabController, animated: false)
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
        let section = indexPath.item
        unWrappedCell.setUrl(dataSource.getImageThubnail(section))
        unWrappedCell.setPrice(dataSource.getPrice(section))
        unWrappedCell.setCalories(dataSource.getCaleroies(section))
        unWrappedCell.setUpTitleAndType(dataSource.getIsVegAndTItle(section))
        unWrappedCell.food = dataSource.getFood(section)
        unWrappedCell.delegate = self
        return unWrappedCell
    }
}
extension BookAMealController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.size.width
        return CGSize(width: width, height: 150)
    }
}

extension BookAMealController: SelectFoodCellProtocol {
    func optButtonSelectedWith(food: FoodModelProtocol) {
        print("food",food)
        let vcTabController = UIStoryboard.getViewControllerWithId(StoryBoardNames.Food, ControllerIds.suggestMealController) as! SuggestMealController
        vcTabController.food = food
        self.navigationController?.pushViewController(vcTabController, animated: false)
    }
}
