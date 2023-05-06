//
//  ViewController.swift
//  semana06
//
//  Created by Javier Aponte on 6/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let wonders: [Wonder] = [
        Wonder(name: "Gran Pirámide de Guiza", image: "image1"),
        Wonder(name: "Jardines Colgantes de Babilonia", image: "image2"),
        Wonder(name: "Templo de Artemisa en Éfeso", image: "image3"),
        Wonder(name: "Estatua de Zeus en Olimpia", image: "image4"),
        Wonder(name: "Mausoleo de Halicarnaso", image: "image5"),
        Wonder(name: "Coloso de Rodas", image: "image6"),
        Wonder(name: "Faro de Alejandría", image: "image7")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wonders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ItemTableViewCell
        
        cell.imgWonder.image = UIImage(named: wonders[indexPath.row].image)
        cell.lblWonder.text = wonders[indexPath.row].name
        
        return cell
    }
}
