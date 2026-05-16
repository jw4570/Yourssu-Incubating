//
//  ViewController.swift
//  Navigation
//
//  Created by 이주원 on 5/13/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoCell", for: indexPath)
        let targetMemo = memoList[indexPath.row]
        cell.textLabel?.text = targetMemo.title
        
        return cell
    }
    
    
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableView.dataSource = self
        TableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
        if segue.identifier == "showDetail" {
            
            if let indexPath = TableView.indexPathForSelectedRow {
                
                let destinationVC = segue.destination as! DetailedViewController
                
                destinationVC.selectedMemo = memoList[indexPath.row]
            }
        }
    }


}

struct Memo {
    var title: String
    var content: String
}

var memoList: [Memo] = [
    Memo(title: "임시 메모",
         content: "예시로 들어있는 메모"
    )
]
