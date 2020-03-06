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
        //loadCountries()
        countryName = DataStorage.getInstance().getAllCountries()
    }

    func loadCountries(){
        countryName.append(Country(name: "Afghanistan", capital: "Afghanistan", flag: #imageLiteral(resourceName: "af")))
        
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let c = countryName[indexPath.row]
        print(c.name)
        
       /* let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(identifier: "secondVC") as! SecondViewController
        
           self.navigationController?.pushViewController(secondVC, animated: true)*/
    }
    
}
