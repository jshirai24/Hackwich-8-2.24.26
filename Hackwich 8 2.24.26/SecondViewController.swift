//
//  SecondViewController.swift
//  Hackwich 8 2.24.26
//
//  Created by Jillian Shirai on 2/24/26.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var travelDestinationArray = ["Japan", "New Zealand", "New York", "England"]
    var travelDestinationCitiesArray = ["Tokyo", "Hobbiton", "Broadway", "Hampshire"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travelDestinationArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = travelDestinationArray[indexPath.row]
        cell.detailTextLabel?.text = travelDestinationCitiesArray[indexPath.row]
        
        cell.textLabel?.text = text
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
