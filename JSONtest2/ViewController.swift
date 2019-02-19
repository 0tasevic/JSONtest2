//
//  ViewController.swift
//  JSONtest2
//
//  Created by Milos Otasevic on 15/02/2019.
//  Copyright © 2019 Milos Otasevic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        URLSession.shared.dataTask(with: url) { (data, respones, error) in

            guard let data = data else{return}

            do{
                let json = try JSONDecoder().decode(Lik.self, from: data)
                print(json.name)
                print(json.base)
                print(json.id)
                
                
            }catch{
                print("-----")
            }
        }.resume()
        

    }


}

