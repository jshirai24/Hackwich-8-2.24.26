//
//  ViewController.swift
//  Hackwich 8 2.24.26
//
//  Created by Jillian Shirai on 2/24/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       
        let text = myFriendsArray[indexPath.row]
       
        cell.textLabel?.text = text
       
        return cell
        
    }
    

    var myFriendsArray: [String] = ["Lena", "Felisity", "Emma", "Zoe", "Sheridan"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

