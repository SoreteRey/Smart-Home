//
//  DeviceTableViewCell.swift
//  Smart-Home-Project
//
//  Created by Sebastian Guiscardo on 2/15/23.
//

import UIKit

protocol DeviceTableViewCellDelegate: AnyObject {
    func markAsSwitchButtonWasTapped(_ cell: DeviceTableViewCell)
}

class DeviceTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var deviceNameLabel: UILabel!
    @IBOutlet weak var deviceSwitchLabel: UISwitch!
    
    // MARK: - Properties
    weak var emperor: DeviceTableViewCell?
    
    // MARK: - Functions
    func updateViews(device: Device) {
        deviceNameLabel.text = device.text
    }
    
    // MARK: - Actions
    
    @IBAction func toggleSwitch(_ sender: Any) {
        emperor?.markAsSwitchButtonWasTapped(self)
    }
    
}



