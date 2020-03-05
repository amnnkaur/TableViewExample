//
//  ViewController.swift
//  TableViewExample
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblCountry: UITableView!
    
    var countryName : [Country] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       loadCountries()
    }

    func loadCountries(){
        countryName.append(Country(name: "Afghanestan", capital: "Afghanestan", flag: #imageLiteral(resourceName: "af")))
        
        countryName.append(Country(name: "India", capital: "Delhi", flag: #imageLiteral(resourceName: "in")))
    }
    
}

extension ViewController : UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return countryName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
      let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
      let country = countryName[indexPath.row]
       
      cell?.textLabel?.text = country.name
      cell?.detailTextLabel?.text = country.capital
      cell?.imageView?.image = country.flag
      return cell!
    }
}
