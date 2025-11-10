//
//  ViewController.swift
//  ExtinctAnimals
//
//  Created by Анастасия Кучер on 09.11.2025.
//

import UIKit

class ViewController: UIViewController {
    
    let url = URL(string: "https://extinct-api.herokuapp.com/api/v1/animal/")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
        
            do {
                let decoder = JSONDecoder()
                let animals = try decoder.decode(Animals.self, from: data)
                print(animals)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
