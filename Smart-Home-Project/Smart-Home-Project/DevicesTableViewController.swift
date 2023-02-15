//
//  DevicesTableViewController.swift
//  Smart-Home-Project
//
//  Created by Sebastian Guiscardo on 2/15/23.
//

import UIKit

class DevicesTableViewController: UITableViewController {
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    // MARK: - Actions
    
    @IBAction func addButtonTapped(_ sender: Any) {
        presentNewDeviceAlertController()
    }
    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DeviceController.shared.devices.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "deviceCell", for: indexPath)
        
        // Configure the cell...
        
        return cell
    }
    // MARK: - Functions for UIAlert
    private func presentNewDeviceAlertController() {
        let alertController = UIAlertController(title: "New Device", message: "Enter the name for your new device", preferredStyle: .alert)
        
        alertController.addTextField { textField in textField.placeholder = "Your message here..."
            
        }
        
        let dissmissAction = UIAlertAction(title: "Delete", style: .cancel)
        let confirmAction = UIAlertAction(title: "Save", style: .default) { _ in
            guard let deviceTextField = alertController.textFields?.first,
                  let device = deviceTextField.text, !device.isEmpty else { return }
            DeviceController.shared.createDevice(text: device)
            self.tableView.reloadData()
            
        }
        alertController.addAction(dissmissAction)
        alertController.addAction(confirmAction)
        present(alertController, animated: true)
        
    }
}

    // MARK: - Extension
    extension DevicesTableViewController: DeviceTableViewCellDelegate {
        func markAsSwitchButtonWasTapped(_ cell: DeviceTableViewCell) {
            guard let indexPath = tableView.indexPath(for: cell) else { return }
            let device = DeviceController.shared.devices[indexPath.row]
            DeviceController.shared.toggleIsON(device: device)
            cell.updateViews(device: device)
        }
    }

