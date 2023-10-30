//
//  MostPopularCollectionViewCell.swift
//  Homework-1
//
//  Created by Şule Kaptan on 26.10.2023.
//

import UIKit

class MostPopularCollectionViewCell: UICollectionViewCell {
    let mostPopularImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .clear
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let mostPopularName : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    let mostPopularRating : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    
    
    func addViews(){
        backgroundColor = .clear
        addSubview(mostPopularImageView)
        addSubview(mostPopularName)
        addSubview(mostPopularRating)
        mostPopularImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mostPopularImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mostPopularImageView.widthAnchor.constraint(equalToConstant: 90).isActive = true
        mostPopularImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true

        mostPopularName.topAnchor.constraint(equalTo: mostPopularImageView.bottomAnchor, constant: 10).isActive = true
        mostPopularName.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        mostPopularName.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mostPopularName.textAlignment = .center
        
        mostPopularRating.topAnchor.constraint(equalTo: mostPopularName.bottomAnchor, constant: 10).isActive = true
        mostPopularRating.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        mostPopularRating.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        mostPopularRating.textAlignment = .center
    }


    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
