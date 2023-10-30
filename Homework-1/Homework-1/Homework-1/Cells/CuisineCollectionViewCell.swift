//
//  CuisineCollectionViewCell.swift
//  Homework-1
//
//  Created by Şule Kaptan on 19.10.2023.
//

import UIKit

class CuisineCollectionViewCell: UICollectionViewCell {
    let cuisineImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .clear
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
                imageView.clipsToBounds = true
                imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let cuisineName : UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
     func addViews(){
        backgroundColor = .clear
        addSubview(cuisineImageView)
        addSubview(cuisineName)
        cuisineImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
         cuisineImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
         cuisineImageView.widthAnchor.constraint(equalToConstant: 90).isActive = true
         cuisineImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true


//         cuisineName.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//         cuisineName.topAnchor.constraint(equalTo: cuisineImageView.bottomAnchor, constant: 15).isActive = true
//
//
        
        
//        cuisineImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
//        cuisineImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//        cuisineImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
//        cuisineImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
//
        cuisineName.topAnchor.constraint(equalTo: cuisineImageView.bottomAnchor, constant: 10).isActive = true
        cuisineName.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        cuisineName.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        cuisineName.textAlignment = .center
        
        
        
        
//        cuisineImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
//        cuisineImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
//        cuisineImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
//        cuisineImageView.heightAnchor.constraint(equalTo: cuisineImageView.widthAnchor, multiplier: 1).isActive = true
//
//        cuisineName.topAnchor.constraint(equalTo: cuisineImageView.bottomAnchor,constant: 14).isActive = true
//        cuisineName.leftAnchor.constraint(equalTo: cuisineImageView.leftAnchor).isActive = true
//        cuisineName.rightAnchor.constraint(equalTo: cuisineImageView.rightAnchor).isActive = true
//        cuisineName.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        
        
        
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
