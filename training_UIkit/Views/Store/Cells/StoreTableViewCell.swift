//
//  StoreTableViewCell.swift
//  training_UIkit
//
//  Created by Sonic on 30/4/23.
//

import UIKit

class StoreTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var workoutImageView: UIImageView!
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var contentTitleLabelView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contentView.layer.cornerRadius = 10
        workoutImageView.layer.cornerRadius = 10
        contentTitleLabelView.layer.cornerRadius = 10
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    public func configure(with workout: WorkOut) {
        
        workoutImageView.image = UIImage(named: workout.image)
        titleView.text = workout.title
    }

}
