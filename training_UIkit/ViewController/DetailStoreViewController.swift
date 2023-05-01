//
//  DetailStoreViewController.swift
//  training_UIkit
//
//  Created by Sonic on 30/4/23.
//

import UIKit

class DetailStoreViewController: UIViewController {
    
    private var workout: WorkOut?
    @IBOutlet weak var workoutImageView: UIImageView!
    @IBOutlet weak var titleLabelView: UILabel!
    @IBOutlet weak var descriptionLabelView: UILabel!
    @IBOutlet weak var textContentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textContentView.layer.cornerRadius = 5
        guard let workout else { return }
        workoutImageView.image = UIImage(named: workout.image)
        titleLabelView.text = workout.title
        descriptionLabelView.text = workout.description
    }

    public func configurate(with workout: WorkOut) {
        
        self.workout = workout
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.tintColor = .systemBackground
        tabBarController?.tabBar.barTintColor = .label
        tabBarController?.tabBar.tintColor = .systemBackground
        tabBarController?.tabBar.backgroundColor = .tertiaryLabel
    }
}
