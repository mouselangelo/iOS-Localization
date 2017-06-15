//
//  ViewController.swift
//  Bonjour Le Monde
//
//  Created by Chetan Agarwal on 6/13/17.
//  Copyright © 2017 Chetan Agarwal. All rights reserved.
//

import UIKit
class ViewController: UITableViewController {

    fileprivate var data: [[String]] {
        return [
            ["A normal text that should be localized",
            Strings.applicationCaption],
            
            ["A text with quotation marks - because they differ in some languages",
             Strings.favouriteQuote],

            ["We might need to consider more Escape characters such as a slash and question marks",
             Strings.cantEscapeASlash],

            ["An example of a text that should not be localized",
             "Facebook"],
            
            ["Handling of Formatted strings with a single placeholder:",
            String(format: Strings.termsOfServiceFormat, Strings.termsOfService)],
            
            ["Handling of Formatted strings with multiple placeholders:",
            String(format: Strings.professionalTypeAndLocationFormat,
                   Strings.professionalCategoryName,
                   Strings.professionalLocationName)], // Example of multiple strings being included in another (indices matter as grammar in some languages differs.)
            ["Handling of Plurals:",
            String(format: Strings.numberOfReviewsFormat, 0),
            String(format: Strings.numberOfReviewsFormat, 1),
            String(format: Strings.numberOfReviewsFormat, 2),
            String(format: Strings.numberOfReviewsFormat, 5),
            String(format: Strings.numberOfReviewsFormat, 11),
            String(format: Strings.numberOfReviewsFormat, 21),
            String(format: Strings.numberOfReviewsFormat, 32),
            String(format: Strings.numberOfReviewsFormat, 80),
            String(format: Strings.numberOfReviewsFormat, 100),
            String(format: Strings.numberOfReviewsFormat, 101),
            String(format: Strings.numberOfReviewsFormat, 102)]
        ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Strings.viewTitle
        tableView.estimatedRowHeight = 66
        tableView.estimatedSectionHeaderHeight = 66
        tableView.sectionHeaderHeight = UITableViewAutomaticDimension
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].count - 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = data[indexPath.section][indexPath.row + 1]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].first
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = tableView.bounds.width - 32
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.text = data[section].first
        let availableSize = CGSize(width: tableView.bounds.width - 32, height: CGFloat.infinity)
        let sizeOfLabel = label.sizeThatFits(availableSize)
        let view = UIView(frame: CGRect(x: 0, y: 0, width: sizeOfLabel.width + 32, height: sizeOfLabel.height + 16))
        view.addSubview(label)
        label.frame = CGRect(x: 16, y: 8, width: sizeOfLabel.width, height: sizeOfLabel.height)
        view.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
        return view
    }
}

