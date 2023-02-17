//
//  ToggleAllDevicesViewController.swift
//  Smart-Home-Project
//
//  Created by Sebastian Guiscardo on 2/16/23.
//

import UIKit

class ToggleAllDevicesViewController: UIViewController {

    // MARK: - Actions
    @IBAction func turnAllOnButtonTapped(_ sender: Any) {
        NotificationCenter.default.post(name: Constants.Notifications.turnAllOnButtonTapped, object: nil)
        
    }
    @IBAction func turnAllOffButtonTapped(_ sender: Any) {
        NotificationCenter.default.post(name: Constants.Notifications.turnAllOffButtonTapped, object: nil)
    }
}
