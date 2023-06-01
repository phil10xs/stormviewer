//
//  ViewController.swift
//  Project1
//
//  Created by APPLE on 5/31/23.
//

import UIKit

class ViewController: UITableViewController {
    
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items{
            if item.hasPrefix("nssl"){
                //this is a picture to load
                
                pictures.append(item)
            }
        }
          
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int{
            return pictures.count
        }
        
        
        func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath )-> UITableViewCell{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for:indexPath )
            cell.textLabel?.text = pictures[indexPath.row]
            return cell
        }
        print(pictures)
    }


}

