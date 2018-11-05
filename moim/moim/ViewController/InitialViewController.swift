//
//  InitialViewController.swift
//  moim
//
//  Created by JeongTaek Han on 27/09/2018.
//  Copyright © 2018 teammoim. All rights reserved.
//

import UIKit
import Firebase

class InitialViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firebaseAuth = Auth.auth()
        let currentUser = firebaseAuth.currentUser
        
        if currentUser != nil {
            let st = self.storyboard
            let vc = st?.instantiateViewController(withIdentifier: "TabBarMain") as! UITabBarController
            
            self.present(vc, animated: true, completion: nil)
            
        }
        

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