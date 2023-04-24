//
//  ViewController.swift
//  Data Transmission
//
//  Created by Fatihan Ziyan on 5.04.2023.
//

import UIKit

class FirstViewController: UIViewController, MyDataSendingDelegate {
    
    func sendDataToFirstViewControllor(myData: String) {
        lbl.text = myData
    }
    

    @IBOutlet weak var lbl : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
             
             if segue.destination is SecondViewController{
                let vc = segue.destination as? SecondViewController
                vc?.text = "Segue ile data gönderildi"
                vc?.delegate = self
             }
    
    }
    


}

