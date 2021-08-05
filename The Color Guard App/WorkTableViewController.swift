//
//  WorkTableViewController.swift
//  The Color Guard App
//
//  Created by Emma Carpenetti on 8/4/21.
//

import UIKit

class WorkTableViewController: UITableViewController {
    
    var shows : [Work] = [] // added after func createShow()

    override func viewDidLoad() {
      super.viewDidLoad()

      shows = createShows()
        
    }
    
    func createShows() -> [Work] {

      let halftime1 = Work()
        halftime1.showTitle = "Back in Black"
        halftime1.season = "Outdoor '21"

      let halftime2 = Work()
        halftime2.showTitle = "Black Parade"
        halftime2.season = "Outdoor '21"

      return [halftime1, halftime2]
    } // hard coded for now
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shows.count // added after var shows : [Work] = [] & shows = createShows()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let show = shows[indexPath.row]
        
        cell.textLabel?.text = show.showTitle
        
        cell.detailTextLabel?.text = show.season

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
