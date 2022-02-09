//
//  ViewController.swift
//  DarkMod
//
//  Created by Nikita Freymanis on 08.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Swift by newbie to newbie"
        label.font = UIFont.systemFont(ofSize: 26)
        label.textColor = UIColor(red: 0.2, green: 0.4, blue: 0.6, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let likeButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 0.2, green: 0.4, blue: 0.6, alpha: 1)
        button.tintColor = .white
        button.layer.cornerRadius = 10
        button.setTitle("skf;djfds", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(likeButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let segmentControl: UISegmentedControl = {
        let segmentControl = UISegmentedControl(items: ["Device", "Light", "Dark"])
        segmentControl.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
        segmentControl.selectedSegmentTintColor = UIColor(red: 0.2, green: 0.4, blue: 0.6, alpha: 1)
        segmentControl.selectedSegmentIndex = 0
        segmentControl.addTarget(self, action: #selector(segmentChanged), for: .valueChanged)
        segmentControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentControl
    }()
    
    private let likeImageView: UIImageView = {
       let view = UIImageView()
        view.layer.cornerRadius = 20
        view.backgroundColor = UIColor(red: 0.2, green: 0.4, blue: 0.6, alpha: 1)
        view.image = UIImage(named: "like")?.withRenderingMode(.alwaysTemplate)
        view.tintColor = UIColor(red: 0.2, green: 0.4, blue: 0.6, alpha: 1)
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setConstraints()
    }

    private func setupView() {
        view.backgroundColor = .white
        
        view.addSubview(nameLabel)
        view.addSubview(likeButton)
        view.addSubview(segmentControl)
    }

    @objc private func likeButtonTapped() {
        UIView.animate(withDuration: 1) { [weak self] in
            guard let self = self else { return }
            self.likeImageView.tintColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
        }
    }
    
    @objc private func segmentChanged() {
        
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            likeImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            likeImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            likeImageView.heightAnchor.constraint(equalToConstant: 300),
            likeImageView.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        NSLayoutConstraint.activate([
            likeButton.topAnchor.constraint(equalTo: likeButton.bottomAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            segmentControl.topAnchor.constraint(equalTo: segmentControl.bottomAnchor, constant: 20)
        ])
        
    }
    
    
}

