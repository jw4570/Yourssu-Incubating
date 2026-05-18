//
//  AddViewController.swift
//  Navigation
//
//  Created by 이주원 on 5/15/26.
//

import UIKit

class AddViewController: UIViewController {

    
    @IBOutlet weak var ContentText: UITextView!
    @IBOutlet weak var TitleText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func saveButton(_ sender: Any) {
        let title = TitleText.text ?? ""
        let content = ContentText.text ?? ""
        
        let memo = Memo(title: title, content: content)
        memoList.append(memo)
        
        self.navigationController?.popViewController(animated: true)
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
