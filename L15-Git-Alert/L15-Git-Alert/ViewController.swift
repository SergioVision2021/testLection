//
//  ViewController.swift
//  L15-Git-Alert
//
//  Created by Apple on 1.11.21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Photo Acess", message: "Do yiy allow to use photos?", preferredStyle: .alert)
         
                let okAction = UIAlertAction(title:"OK", style: .cancel, handler: nil)
                alert.addAction(okAction)
         
                let cancelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
                alert.addAction(cancelAction)
         
                present(alert , animated: true, completion: nil)

    }
    @IBAction func showActionSheet() {
        let alert = UIAlertController(title: nil, message: "Shoose Film", preferredStyle: .actionSheet)
        
              let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
              alert.addAction(cancelAction)
        
              enum Films: String{
                  case film1 = "Spider man"
                  case film2 = "Xman"
              }
        
               let handler: (_ type: Films) -> (UIAlertAction) -> Void = {
                   type in
                       return { action in
                           print(type.rawValue)
                   }
               }
        
               let film1 = UIAlertAction(title: Films.film1.rawValue, style: .default, handler: handler(.film1))
              alert.addAction(film1)
        
              let film2 = UIAlertAction(title:Films.film2.rawValue, style: .default, handler: handler(.film2))
              alert.addAction(film2)
        
              present(alert , animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

