//
//  StoreViewController.swift
//  training_UIkit
//
//  Created by Sonic on 30/4/23.
//

import UIKit

class StoreViewController: UIViewController {
    
    private let workout = data
    
    @IBOutlet weak var storeTableView: UITableView! {
        didSet {
            storeTableView.dataSource = self
            storeTableView.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.tintColor = .secondaryLabel
        tabBarController?.tabBar.barTintColor = .systemBackground
        tabBarController?.tabBar.tintColor = .label
        tabBarController?.tabBar.backgroundColor = .systemBackground
    }
}

extension StoreViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        workout.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as? StoreTableViewCell else {
            return tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        }
        cell.configure(with: workout[indexPath.row])
        return cell
    }
}

extension StoreViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let storyBoard = UIStoryboard(name: "DetailStore", bundle: nil)
        guard let vc = storyBoard.instantiateViewController(withIdentifier: "DetailStoreViewController") as? DetailStoreViewController else {
            return
        }
        vc.configurate(with: workout[indexPath.row])
        navigationController?.pushViewController(vc, animated: true)
    }
}

let data: [WorkOut] = [
    .init(image: "workout1", title: "Training Plan", description: "Workout plans designed to Help you achive your fitness goals - Whether losing weight or building muscle"),
    .init(image: "workout2", title: "Meal Plan", description: "Workout plans designed to Help you achive your fitness goals - Whether losing weight or building muscle"),
    .init(image: "workout3", title: "Supplement Plan", description: "Workout plans designed to Help you achive your fitness goals - Whether losing weight or building muscle"),
    .init(image: "workout4", title: "Safety Plan", description: "Workout plans designed to Help you achive your fitness goals - Whether losing weight or building muscle"),
    .init(image: "workout5", title: "Healty Plan", description: "Workout plans designed to Help you achive your fitness goals - Whether losing weight or building muscle"),
]
