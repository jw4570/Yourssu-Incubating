//
//  DetailedViewController.swift
//  Navigation
//
//  Created by 이주원 on 5/15/26.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet weak var contentView: UITextView!
    @IBOutlet weak var titleView: UILabel!
    var selectedMemo: Memo?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let memo = selectedMemo {
            titleView.text = memo.title
            contentView.text = memo.content
        }
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
