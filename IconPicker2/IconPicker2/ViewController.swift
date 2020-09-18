//
//  ViewController.swift
//  IconPicker2
//
//  Created by Trevor Bursach on 9/18/20.
//  Copyright © 2020 Trevor Bursach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iconImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let iconPickerViewController = segue.destination as? IconPickerDetailViewController {
            iconPickerViewController.delegate = self
        }
    }

} // END OF CLASS

extension ViewController: IconPickerDetailViewControllerDelegate {
    func iconPickerButtonTapped(image: UIImage) {
        iconImageView.image = image
    }
}
