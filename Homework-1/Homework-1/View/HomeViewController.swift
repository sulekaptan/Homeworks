//
//  ViewController.swift
//  Homework-1
//
//  Created by Şule Kaptan on 18.10.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    var cuisines = [Cuisine]()
    var popularRest = [Restaurant]()
    var mostPopular = [Restaurant]()
    var recentItems = [Restaurant]()
    
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .white
        return scrollView
    }()
    
    let contentView: UIView = {
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
    }()
    
    let mainTitle: UILabel = {
        let mainTitle = UILabel()
        mainTitle.text = "Good Morning Akila!"
        mainTitle.font = .systemFont(ofSize: 24, weight: .bold)
        mainTitle.textColor = .darkGray
        mainTitle.translatesAutoresizingMaskIntoConstraints = false
        return mainTitle
    }()
    
    let cartButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "cart.fill")
        button.setImage(image, for: .normal)
        button.tintColor = .darkGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let mainTitleStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search food"
        searchBar.searchBarStyle = .minimal
        searchBar.sizeToFit()
        searchBar.isTranslucent = true
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    let popularRestTitle: UILabel = {
        let popularRestTitle = UILabel()
        popularRestTitle.text = "Popular Restaurants"
        popularRestTitle.font = .systemFont(ofSize: 22, weight: .bold)
        popularRestTitle.textColor = .darkGray
        popularRestTitle.translatesAutoresizingMaskIntoConstraints = false
        return popularRestTitle
    }()

    
    let mostPopularTitle: UILabel = {
        let mostPopularTitle = UILabel()
        mostPopularTitle.text = "Most Popular"
        mostPopularTitle.font = .systemFont(ofSize: 22, weight: .bold)
        mostPopularTitle.textColor = .black
        mostPopularTitle.translatesAutoresizingMaskIntoConstraints = false
        return mostPopularTitle
    }()
    
    let resentItemTitle: UILabel = {
        let resentItemTitle = UILabel()
        resentItemTitle.text = "Resent Items"
        resentItemTitle.font = .systemFont(ofSize: 22, weight: .bold)
        resentItemTitle.textColor = .black
        resentItemTitle.translatesAutoresizingMaskIntoConstraints = false
        return resentItemTitle
    }()
    
    let cuisineCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        layout.minimumLineSpacing = 30
        layout.itemSize = CGSize(width: 70, height: 70)
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let popularRestTableView: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    
    let mostPopularCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        layout.minimumLineSpacing = 30
        layout.itemSize = CGSize(width: 70, height: 70)
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    let recentItemsTableView: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cuisineCollectionView.dataSource = self
        cuisineCollectionView.delegate = self
        
        popularRestTableView.dataSource = self
        popularRestTableView.delegate = self
        
        mostPopularCollectionView.dataSource = self
        mostPopularCollectionView.delegate = self
        
        recentItemsTableView.dataSource = self
        recentItemsTableView.delegate = self
        
        let offers = Cuisine(name: "Offers", image: "offers")
        let srilankan = Cuisine(name: "Sri Lankan", image: "srilankan")
        let turkish = Cuisine(name: "Turkish", image: "turkish")
        let italian = Cuisine(name: "Italian", image: "italian")
        let indian = Cuisine(name: "Indian", image: "indian")
        
        let turkish1 = Cuisine(name: "Turkish", image: "turkish")
        let turkish2 = Cuisine(name: "Turkish", image: "turkish")
        let turkish3 = Cuisine(name: "Turkish", image: "turkish")
        let turkish4 = Cuisine(name: "Turkish", image: "turkish")
        let turkish5 = Cuisine(name: "Turkish", image: "turkish")
        let turkish6 = Cuisine(name: "Turkish", image: "turkish")
        cuisines.append(offers)
        cuisines.append(turkish)
        cuisines.append(indian)
        cuisines.append(srilankan)
        cuisines.append(italian)
       
        
        cuisines.append(turkish1)
        cuisines.append(turkish2)
        cuisines.append(turkish3)
        cuisines.append(turkish4)
        cuisines.append(turkish5)
        cuisines.append(turkish6)
        
        let minuteByTukTuk = Restaurant(name: "Minute By Tuk Tuk", rating: 4.9, image: "minutebytuktuk")
        let cafeDeNoir = Restaurant(name: "Cafe de Noir", rating: 4.9, image: "cafenoir")
        let bakesByTella = Restaurant(name: "Minute By Tuk Tuk", rating: 4.9, image: "bakesbytella")
        popularRest.append(minuteByTukTuk)
        popularRest.append(cafeDeNoir)
        popularRest.append(bakesByTella)
        
        let cafedebambaa = Restaurant(name: "Cafe de Bambaa", rating: 4.9, image: "burgerbybob")
        let burgerbybob = Restaurant(name: "Burger by Bob", rating: 4.9, image: "burgerbybob")
        let burgerbysue =  Restaurant(name: "Burger by Sue", rating: 4.9, image: "burgerbybob")
        mostPopular.append(cafedebambaa)
        mostPopular.append(burgerbybob)
        mostPopular.append(burgerbysue)
        
        let mulberrypizzabyjosh = Restaurant(name: "Mulbery Pizza by Josh", rating: 4.9, image: "burgerbybob")
        let barita = Restaurant(name: "Barita", rating: 4.9, image: "burgerbybob")
        let pizzarushhour =  Restaurant(name: "Pizza Rush Hour", rating: 4.9, image: "burgerbybob")
        recentItems.append(mulberrypizzabyjosh)
        recentItems.append(barita)
        recentItems.append(pizzarushhour)
        
        setupUI()
        
        popularRestTableView.isScrollEnabled = true
        cuisineCollectionView.isScrollEnabled = true
        mostPopularCollectionView.isScrollEnabled = true
        recentItemsTableView.isScrollEnabled = true

    }
    
    func setupUI(){
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.showsHorizontalScrollIndicator = true
        scrollView.isScrollEnabled = true
        
        scrollView.contentSize = CGSize(width: contentView.frame.width, height: contentView.frame.height)
        

        
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        
        contentView.addSubview(mainTitleStackView)
        mainTitleStackView.addArrangedSubview(mainTitle)
        mainTitleStackView.addArrangedSubview(cartButton)
        mainTitleStackView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        mainTitleStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        mainTitleStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30).isActive = true
        mainTitleStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        

        contentView.addSubview(searchBar)
        searchBar.topAnchor.constraint(equalTo: mainTitleStackView.bottomAnchor, constant: 10).isActive = true
        searchBar.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        searchBar.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true

        contentView.addSubview(cuisineCollectionView)
        cuisineCollectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor).isActive = true
        cuisineCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
        cuisineCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        cuisineCollectionView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        cuisineCollectionView.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        cuisineCollectionView.register(CuisineCollectionViewCell.self, forCellWithReuseIdentifier: "cuisineCVCell")
        cuisineCollectionView.isUserInteractionEnabled = true
        cuisineCollectionView.delegate = self
        cuisineCollectionView.dataSource = self

     

        contentView.addSubview(popularRestTitle)
        contentView.addSubview(popularRestTableView)
        popularRestTitle.topAnchor.constraint(equalTo: cuisineCollectionView.bottomAnchor, constant: 10).isActive = true
        popularRestTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        popularRestTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
     
        popularRestTableView.topAnchor.constraint(equalTo: popularRestTitle.bottomAnchor, constant: 10).isActive = true
        popularRestTableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        popularRestTableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        //popularRestTableView.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        popularRestTableView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        popularRestTableView.register(PopularRestTableViewCell.self, forCellReuseIdentifier: "popularRestTVCell")
        
        
        contentView.addSubview(mostPopularTitle)
        contentView.addSubview(mostPopularCollectionView)
        mostPopularTitle.topAnchor.constraint(equalTo: popularRestTableView.bottomAnchor, constant: 10).isActive = true
        mostPopularTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        mostPopularTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
       
        mostPopularCollectionView.topAnchor.constraint(equalTo: mostPopularTitle.bottomAnchor).isActive = true
        mostPopularCollectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5).isActive = true
        mostPopularCollectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        mostPopularCollectionView.heightAnchor.constraint(equalToConstant: 120).isActive = true
        mostPopularCollectionView.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        mostPopularCollectionView.register(MostPopularCollectionViewCell.self, forCellWithReuseIdentifier: "mostPopularCVCell")
        mostPopularCollectionView.isUserInteractionEnabled = true
        
        contentView.addSubview(resentItemTitle)
        contentView.addSubview(recentItemsTableView)
        resentItemTitle.topAnchor.constraint(equalTo: mostPopularCollectionView.bottomAnchor, constant: 10).isActive = true
        resentItemTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        resentItemTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        
        recentItemsTableView.topAnchor.constraint(equalTo: resentItemTitle.bottomAnchor, constant: 10).isActive = true
        recentItemsTableView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20).isActive = true
        recentItemsTableView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
        recentItemsTableView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        recentItemsTableView.register(RecentItemsTableViewCell.self, forCellReuseIdentifier: "recentItemsTVCell")

    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //cuisines.count
        if collectionView == cuisineCollectionView{
            return cuisines.count
        }
        else if collectionView == mostPopularCollectionView{
            return mostPopular.count
        }
        else {
            return cuisines.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cuisineCVCell", for: indexPath) as! CuisineCollectionViewCell
//        let cuisine = cuisines[indexPath.item]
//        cell.cuisineName.text = cuisine.name
//        cell.cuisineImageView.image = UIImage(named: cuisine.image)
//        return cell
        if collectionView == cuisineCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cuisineCVCell", for: indexPath) as! CuisineCollectionViewCell
            let cuisine = cuisines[indexPath.item]
            cell.cuisineName.text = cuisine.name
            cell.cuisineImageView.image = UIImage(named: cuisine.image)
            return cell
        }
        else if collectionView == mostPopularCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mostPopularCVCell", for: indexPath) as! MostPopularCollectionViewCell
            let mostPopular = mostPopular[indexPath.item]
            cell.mostPopularName.text = mostPopular.name
            cell.mostPopularImageView.image = UIImage(named: mostPopular.image)
            cell.mostPopularRating.text = String(mostPopular.rating)
            return cell
        }
        else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mostPopularCVCell", for: indexPath) as! MostPopularCollectionViewCell
            let mostPopular = mostPopular[indexPath.item]
            cell.mostPopularName.text = mostPopular.name
            cell.mostPopularImageView.image = UIImage(named: mostPopular.image)
            cell.mostPopularRating.text = String(mostPopular.rating)
            return cell
        }
    }
}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //popularRest.count
        if tableView == popularRestTableView{
            return popularRest.count
        }
        else if tableView == recentItemsTableView{
            return recentItems.count
        }
        else {
            return popularRest.count
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == popularRestTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "popularRestTVCell")
            as! PopularRestTableViewCell
            cell.popularRestImageView.image = UIImage(named: popularRest[indexPath.row].image)
            cell.popularRestName.text = popularRest[indexPath.row].name
            cell.popularRestRating.text = String(popularRest[indexPath.row].rating)
            return cell
        }
        else if tableView == recentItemsTableView{
            let cell = tableView.dequeueReusableCell(withIdentifier: "recentItemsTVCell")
            as! RecentItemsTableViewCell
            cell.recentItemsImageView.image = UIImage(named: recentItems[indexPath.row].image)
            cell.recentItemsName.text = recentItems[indexPath.row].name
            cell.recentItemsRating.text = String(recentItems[indexPath.row].rating)
            return cell
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "recentItemsTVCell")
            as! RecentItemsTableViewCell
            cell.recentItemsImageView.image = UIImage(named: recentItems[indexPath.row].image)
            cell.recentItemsName.text = recentItems[indexPath.row].name
            cell.recentItemsRating.text = String(recentItems[indexPath.row].rating)
            return cell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}

