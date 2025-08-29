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
    private var amount = UILabel()
    private var splitBy = UILabel()
    private var percent = UIButton()
    
    private var numField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "0.00"
        tf.keyboardType = .numberPad
        
        tf.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
          tf.layer.cornerRadius = 7.82
          tf.borderStyle = .none
          tf.font = UIFont.systemFont(ofSize: 16)
          tf.textColor = UIColor.black
          tf.textAlignment = .left
        
          
        // container view for the $ sign
          let leftContainer = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: 20))
          let dollarLabel = UILabel(frame: CGRect(x: 12, y: 0, width: 20, height: 20))
          dollarLabel.text = "$"
          dollarLabel.font = UIFont.systemFont(ofSize: 16)
          dollarLabel.textColor = UIColor(red: 0.518, green: 0.557, blue: 0.6, alpha: 1)
          dollarLabel.textAlignment = .center
          
          leftContainer.addSubview(dollarLabel)
          tf.leftView = leftContainer
          tf.leftViewMode = .always
           
           tf.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 55, height: 20))
           tf.rightViewMode = .always
        return tf
    } ()
    
    private var isSelected = false
    @objc func toggleButton() {
            isSelected.toggle()
            
            if isSelected {
                percent.layer.borderWidth = 3.0
                percent.layer.borderColor = UIColor.black.cgColor
            } else {
                percent.layer.borderWidth = 0
            }
        }

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
        appName.leadingAnchor.constraint(equalTo: logoView.trailingAnchor, constant: 8).isActive = true
        appName.centerYAnchor.constraint(equalTo: logoView.centerYAnchor).isActive = true
        
        // bill name
        billTitle.frame = CGRect(x: 0, y: 0, width: 154.4, height: 34.2)
        billTitle.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        billTitle.font = UIFont(name: ".NewYorkLarge-Bold", size: 32)
        billTitle.text = "Add Your Bill Title"
        billTitle.placeholder = "Bill Title"
        billTitle.borderStyle = .none
        
        view.addSubview(billTitle)
        billTitle.translatesAutoresizingMaskIntoConstraints = false
        
  
        billTitle.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: 30).isActive = true
        billTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        //subtext
        amount.text = "AMOUNT"
        amount.frame = CGRect(x: 0, y: 0, width: 63.52, height: 16)
        amount.textColor = UIColor(red: 0.557, green: 0.557, blue: 0.576, alpha: 1)
        amount.font = UIFont.systemFont(ofSize: 12.7, weight: .regular)
        
        view.addSubview(amount)
        amount.translatesAutoresizingMaskIntoConstraints = false
        amount.topAnchor.constraint(equalTo: billTitle.bottomAnchor, constant: 30).isActive = true
        amount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        //splitby
        splitBy.text = "SPLIT BY"
        splitBy.frame = CGRect(x: 0, y: 0, width: 63.52, height: 16)
        splitBy.textColor = UIColor(red: 0.557, green: 0.557, blue: 0.576, alpha: 1)
        splitBy.font = UIFont.systemFont(ofSize: 12.7, weight: .regular)
        
        view.addSubview(splitBy)
        splitBy.translatesAutoresizingMaskIntoConstraints = false
        splitBy.topAnchor.constraint(equalTo: billTitle.bottomAnchor, constant: 30).isActive = true
        splitBy.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 240).isActive = true
        //text field
        view.addSubview(numField)
        numField.translatesAutoresizingMaskIntoConstraints = false
        numField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        numField.topAnchor.constraint(equalTo: amount.bottomAnchor, constant: 8).isActive = true
        numField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
        
        //percent
        percent.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        percent.layer.cornerRadius = 5.86
        percent.setTitle("%", for: .normal)
        percent.setTitleColor(UIColor(red: 0.557, green: 0.557, blue: 0.576, alpha: 1), for: .normal)
        percent.titleLabel?.font = UIFont.systemFont(ofSize: 16)

        // pressed state
        percent.addTarget(self, action: #selector(toggleButton), for: .touchUpInside)

        view.addSubview(percent)
        percent.translatesAutoresizingMaskIntoConstraints = false
        percent.widthAnchor.constraint(equalToConstant: 44.95).isActive = true

        percent.heightAnchor.constraint(equalToConstant: 35).isActive = true
        percent.topAnchor.constraint(equalTo: splitBy.bottomAnchor, constant: 8).isActive = true
        percent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 240).isActive = true
       
        
        
        
        

    }
    private func setupBackgroundView() {
           backgroundView = UIView()
           backgroundView.layer.backgroundColor = UIColor(red: 0.463, green: 0.463, blue: 0.502, alpha: 0.12).cgColor
           
           view.addSubview(backgroundView)
           
           backgroundView.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                        backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                        
                        backgroundView.heightAnchor.constraint(equalToConstant: 40.07),
                        
                        // under status bar
                        backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
           ])
       }

}

#Preview {
ViewController()
}

