//
//  ViewController.swift
//  MeuPrimeiroAppIOS
//
//  Created by Caroline Loppi on 18/06/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtLogin: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func openAction(_ sender: Any) {
        
        if(txtLogin.text == "carol" && txtPassword.text == "1234"){
          performSegue(withIdentifier: "initialScreen", sender: self)
            
        }
        else{
            let alert = UIAlertController(title: "Alerta", message: "Erro no Login/Senha", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        
        }
    }
    

}

