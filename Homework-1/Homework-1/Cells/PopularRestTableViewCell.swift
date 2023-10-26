//
//  PopularRestTableViewCell.swift
//  Homework-1
//
//  Created by Şule Kaptan on 19.10.2023.
//

import UIKit

class PopularRestTableViewCell: UITableViewCell {
    
    let popularRestImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .clear
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = imageView.frame.size.width / 2
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let popularRestName : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    let popularRestRating : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        return label
    }()
    
    private func addViews(){
        backgroundColor = .clear
        addSubview(popularRestImageView)
        addSubview(popularRestName)
        addSubview(popularRestRating)
        
//        popularRestImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
//        popularRestImageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
//        popularRestImageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
////        popularRestImageView.heightAnchor.constraint(equalTo: popularRestImageView.widthAnchor, multiplier: 1).isActive = true
//        popularRestImageView.heightAnchor.constraint(equalToConstant: 220).isActive = true // Örneğin, 150 birim yükseklik
//
//
//        popularRestName.topAnchor.constraint(equalTo: popularRestImageView.bottomAnchor,constant: 14).isActive = true
//        popularRestName.leftAnchor.constraint(equalTo: popularRestImageView.leftAnchor).isActive = true
//        popularRestName.rightAnchor.constraint(equalTo: popularRestImageView.rightAnchor).isActive = true
//        popularRestName.heightAnchor.constraint(equalToConstant: 22).isActive = true
//
//        popularRestRating.topAnchor.constraint(equalTo: popularRestName.bottomAnchor,constant: 14).isActive = true
//        popularRestRating.leftAnchor.constraint(equalTo: popularRestName.leftAnchor).isActive = true
//        popularRestRating.rightAnchor.constraint(equalTo: popularRestName.rightAnchor).isActive = true
//        popularRestRating.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        popularRestImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        popularRestImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        popularRestImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        popularRestImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        popularRestImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
                
        popularRestName.topAnchor.constraint(equalTo: popularRestImageView.bottomAnchor, constant: 20).isActive = true
        popularRestName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        popularRestName.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        popularRestName.textAlignment = .left
                
        popularRestRating.topAnchor.constraint(equalTo: popularRestName.bottomAnchor, constant: 10).isActive = true
        popularRestRating.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        popularRestRating.widthAnchor.constraint(equalToConstant: 15).isActive = true
        popularRestRating.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
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
