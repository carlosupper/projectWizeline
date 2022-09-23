//
//  MenuViewController.swift
//  UIKitApp
//
//  Created by efloresco on 23/09/22.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var tblMenu: UITableView!
    var lstOptions = ["Ir a perfil", "Ir configuracion de aplicación", "Salir de sesión"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblMenu.delegate = self
        tblMenu.dataSource = self
        self.title = "Menu Configuración"

        // Do any additional setup after loading the view.
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
extension MenuViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lstOptions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as? MenuCell
        if cell == nil {
            tableView.register(UINib(nibName: "MenuCell", bundle: nil), forCellReuseIdentifier: "MenuCell")
            cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as? MenuCell
        }
        cell?.configureCellWithUrl(strInfo: lstOptions[indexPath.row])
        return cell ?? UITableViewCell()
        
    }
}
