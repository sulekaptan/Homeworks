//
//  RecentItemsTableViewCell.swift
//  Homework-1
//
//  Created by Şule Kaptan on 26.10.2023.
//

import UIKit

class RecentItemsTableViewCell: UITableViewCell {
    
    let recentItemsImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .clear
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let recentItemsName : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    let recentItemsRating : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    

    private func addViews(){
        backgroundColor = .clear
        addSubview(recentItemsName)
        addSubview(recentItemsRating)
        addSubview(recentItemsImageView)
         
        recentItemsImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        recentItemsImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        recentItemsImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        recentItemsImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        recentItemsImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
                
        recentItemsName.topAnchor.constraint(equalTo: recentItemsImageView.bottomAnchor, constant: 20).isActive = true
        recentItemsName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        recentItemsName.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        recentItemsName.textAlignment = .left
                
        recentItemsRating.topAnchor.constraint(equalTo: recentItemsName.bottomAnchor, constant: 10).isActive = true
        recentItemsRating.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        recentItemsRating.widthAnchor.constraint(equalToConstant: 15).isActive = true
        recentItemsRating.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
