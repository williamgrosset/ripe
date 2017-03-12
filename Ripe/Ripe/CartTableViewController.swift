//
//  CartTableViewController.swift
//  Ripe
//
//  Created by Matthew Paletta on 2017-03-11.
//  Copyright © 2017 Matthew Paletta. All rights reserved.
//

import UIKit

class CartTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var CartTableView: UITableView!
    @IBOutlet weak var CheckoutButton: UIButton!
    
    var foodImage = ["Mango", "Apples", "Bananas", "Pineapples"]
    var foodName = ["Mango", "Apples", "Bananas", "Pineapples"]
    var foodAmount = [2, 5.2, 12, 4]
    var foodDollar = [4.32, 23, 23, 12]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CartTableView.delegate = self
        CartTableView.dataSource = self

        self.title = "Cart"
        

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    // MARK: - Table view data 
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodName.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartItemIdentifier", for: indexPath) as! CartTableViewCell
        
        // Cell Properties
        cell.produceImageView.image = foodImage[indexPath.row] as UIImage
        cell.produceNameLabel.text = "\(foodName[indexPath.row])"
        cell.produceAmountLabel.text = "\(String(foodAmount[indexPath.row]))"
        cell.produceDollarLabel.text = "\(foodDollar[indexPath.row])"
        
        return cell
    }
    
    // Go to the select product to update the selected product
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Select Product", sender: self)
    }
    
    
    // MARK: - Actions
    
    @IBAction func CheckoutCart(_ sender: UIButton) {
        performSegue(withIdentifier: "Checkout Cart", sender: self)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
