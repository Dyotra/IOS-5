//
//  ViewController.swift
//  IOS ДЗ 5
//
//  Created by Bekpayev Dias on 21.06.2023.
//

import UIKit

class ViewController: UIViewController {
    let myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Logout", for: .normal)
        button.configuration = .filled()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let myLabel1: UILabel = {
        let label1 = UILabel()
        label1.text = "How to add constraints programmatically using Swift"
        label1.textColor = .black
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.numberOfLines = 0
        return label1
    }()
    let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "arrow.up.right.square")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .systemGray3
        return imageView
    }()
    let myView1: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 24
        view.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        view.backgroundColor = .systemIndigo
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let myView2: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 48
        view.backgroundColor = .systemOrange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let myLabel2: UILabel = {
        let label2 = UILabel()
        label2.text = "In iOS development, content alignment and spacing is something that can take a lot of our time. Today, let’s explore how to set constraint with UIKit, update them and resolve constraint conflicts. Let’s start with a simple definition: a constraint is a rule to let the operating system how to place your UI component. It was introduced in iOS6 and iPadOS6. It was a simpler way to create scalable and reusable design across Apple devices.With UIKit, there are 2 main ways to setup constraints: using interface builder and programmatically. This article will only focus on the code approach."
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.textColor = .black
        label2.numberOfLines = 0
        return label2
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
    }
}

private extension ViewController {
    func setupScene() {
        view.addSubview(myButton)
        view.addSubview(myLabel1)
        view.addSubview(myLabel2)
        view.addSubview(myView1)
        view.addSubview(myView2)
        view.addSubview(myImageView)
        view.backgroundColor = .systemBackground
        makeConstraints()
    }
    func makeConstraints(){
        NSLayoutConstraint.activate([
            myButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            myButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            myButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
            myLabel1.topAnchor.constraint(equalTo: view.topAnchor, constant: 320),
            myLabel1.heightAnchor.constraint(equalToConstant: 50),
            myLabel1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
            myLabel1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            myLabel2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            myLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myLabel2.heightAnchor.constraint(equalToConstant: 500),
            myLabel2.widthAnchor.constraint(equalToConstant: 300),
            myImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 312),
            myImageView.heightAnchor.constraint(equalToConstant: 70),
            myImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            myImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -250),
            myView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            myView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            myView1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -570),
            myView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            myView2.heightAnchor.constraint(equalToConstant: 100),
            myView2.widthAnchor.constraint(equalToConstant: 100),
            myView2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -605),
            myView2.topAnchor.constraint(equalTo: view.topAnchor, constant: 155),
            myView2.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}


