//
//  SecondViewController.swift
//  Data Transmission
//
//  Created by Fatihan Ziyan on 5.04.2023.
//

import UIKit

protocol MyDataSendingDelegate: AnyObject {
    func sendDataToFirstViewControllor(myData: String)
}


class SecondViewController: UIViewController {
    
    var text:String = ""
    @IBOutlet weak var lbl : UILabel!
    @IBOutlet weak var txt : UITextField!
    
    weak var delegate: MyDataSendingDelegate?
    
    @IBAction func backData(){
        let sendText = txt.text!
        delegate?.sendDataToFirstViewControllor(myData: sendText)
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        lbl?.text = text

    }
   

}
