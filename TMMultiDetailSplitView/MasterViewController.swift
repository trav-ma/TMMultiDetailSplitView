//
//  MasterViewController.swift
//  TMMultiDetailSplitView
//
//  Created by Travis Ma on 7/31/16.
//  Copyright © 2016 Travis Ma. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    var tableData = ["Detail 1", "Detail 2"]
    var isLoadingTable = true

    override func viewDidLoad() {
        super.viewDidLoad()
        //removes additional blank lines after last cell
        self.tableView.tableFooterView = UIView()
    }
    
    //select first row by default (doesn't work if launched in portrait)
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if isLoadingTable && tableView.indexPathsForVisibleRows?.last?.row == indexPath.row {
            isLoadingTable = false
            tableView.selectRow(at: IndexPath(row: 0, section: 0), animated: true, scrollPosition: .none)
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel!.text = tableData[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "segueDetail1", sender: nil)
        case 1:
            self.performSegue(withIdentifier: "segueDetail2", sender: nil)
        default:
            break
        }
    }

}

