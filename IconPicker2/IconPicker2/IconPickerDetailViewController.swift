//
//  IconPickerDetailViewController.swift
//  IconPicker2
//
//  Created by Trevor Bursach on 9/18/20.
//  Copyright © 2020 Trevor Bursach. All rights reserved.
//

import UIKit

protocol IconPickerDetailViewControllerDelegate: AnyObject {
    func iconPickerButtonTapped(image: UIImage)
}

class IconPickerDetailViewController: UIViewController {
    
    weak var delegate: IconPickerDetailViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func trashCanButtonTapped(_ sender: UIButton) {
        delegate?.iconPickerButtonTapped(image: sender.currentImage)
        dismiss(animated: true)
    }
    
    @IBAction func stormcloudButtonTapped(_ sender: UIButton) {
        delegate?.iconPickerButtonTapped(image: sender.currentImage)
        dismiss(animated: true)
    }
    
    @IBAction func lightningboltButtonTapped(_ sender: UIButton) {
        delegate?.iconPickerButtonTapped(image: sender.currentImage)
        dismiss(animated: true)
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
