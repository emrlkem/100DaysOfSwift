//
//  ViewController.swift
//  RandomPhoto
//
//  Created by Emre Ülkem on 4.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .white
        return imageView
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .darkGray
        button.setTitle("Randomy", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    let colors: [UIColor] = [
        .systemPink,
        .systemRed,
        .systemBlue,
        .systemBrown,
        .systemOrange,
        .systemGreen,
        .systemPurple
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .gray
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: 0, width: 350, height: 350)
        imageView.center = view.center
        
        view.addSubview(button)
        
        getRandomPhoto()
        
        button.addTarget(self, action: #selector(didTabButton), for: .touchUpInside)
    }
    
    @objc func didTabButton() {
        getRandomPhoto()
        
        view.backgroundColor = colors.randomElement()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        button.frame = CGRect(
            x: 30,
            y: view.frame.size.height-150-view.safeAreaInsets.bottom,
            width: view.frame.size.width-60,
            height: 55)
    }

    func getRandomPhoto() {
        let urlString = "https://source.unsplash.com/random/700x700"
        let url = URL(string: urlString)!
        guard let data = try? Data(contentsOf: url) else {
            return
        }
        imageView.image = UIImage(data: data)
    }
}

