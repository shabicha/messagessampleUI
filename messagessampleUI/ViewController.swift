//
//  ViewController.swift
//  messagessampleUI
//
//  Created by Shabicha Sureshkumar on 2025-08-21.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - UI Properties
        private var backgroundView: UIView!
    private var logoView = UIImageView()
    private var appName = UILabel()
    private var billTitle = UITextField()
    private var subtitle = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.949, green: 0.949, blue: 0.969, alpha: 1)

        // background view
        setupBackgroundView()
        
        // logo
        logoView.contentMode = .scaleAspectFit
        logoView.image = UIImage(named: "splitzLogo")
      
        view.addSubview(logoView)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        logoView.widthAnchor.constraint(equalToConstant: 29.32).isActive = true
        logoView.heightAnchor.constraint(equalToConstant: 55).isActive = true
        logoView.centerXAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 35).isActive = true
        logoView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor).isActive = true
        
        // splitz name
        appName.text = "Splitz"
        appName.frame = CGRect(x: 0, y: 0, width: 38.25, height: 20.4)
        appName.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        appName.font = UIFont.systemFont(ofSize: 14.5, weight: .medium)
        
        
        view.addSubview(appName)
        appName.translatesAutoresizingMaskIntoConstraints = false
        appName.heightAnchor.constraint(equalToConstant: 20.4).isActive = true
        appName.leadingAnchor.constraint(equalTo: logoView.trailingAnchor, constant: 8).isActive = true // 8pt gap after logo
        appName.centerYAnchor.constraint(equalTo: logoView.centerYAnchor).isActive = true
        
        // bill name
        billTitle.frame = CGRect(x: 0, y: 0, width: 154.4, height: 34.2)
        billTitle.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        billTitle.font = UIFont(name: ".NewYorkLarge-Bold", size: 32)
        billTitle.text = "Add Your Bill Title" // Set the actual text content
        billTitle.placeholder = "Bill Title" // Optional placeholder
        billTitle.borderStyle = .none // Remove default border if you want
        
        view.addSubview(billTitle)
        billTitle.translatesAutoresizingMaskIntoConstraints = false
        
  
        billTitle.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: 30).isActive = true // 16pt gap
        billTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        //subtext
        subtitle.text = "AMOUNT"
        subtitle.frame = CGRect(x: 0, y: 0, width: 63.52, height: 16)
        subtitle.textColor = UIColor(red: 0.557, green: 0.557, blue: 0.576, alpha: 1)
        subtitle.font = UIFont.systemFont(ofSize: 12.7, weight: .regular)
        
        view.addSubview(subtitle)
        subtitle.translatesAutoresizingMaskIntoConstraints = false
        subtitle.topAnchor.constraint(equalTo: billTitle.bottomAnchor, constant: 30).isActive = true // 16pt gap
        subtitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        

    }
    private func setupBackgroundView() {
           backgroundView = UIView()
           backgroundView.layer.backgroundColor = UIColor(red: 0.463, green: 0.463, blue: 0.502, alpha: 0.12).cgColor
           
           view.addSubview(backgroundView)
           
           backgroundView.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                        backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                        
                        // Fixed height of 23.57 points
                        backgroundView.heightAnchor.constraint(equalToConstant: 40.07),
                        
                        // Pin to very top of the screen (under status bar)
                        backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
           ])
       }

}

#Preview {
ViewController()
}

