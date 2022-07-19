import UIKit
import Network

// 1.
//class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
//        var tasks: [TodoTask] = []
//
//        enum Taskstate {
//            case todo
//           case done
//        }
//
//       struct TodoTask {
//           let name: String
//           var isImportant: Bool
//          let state: Taskstate
//       }
//
//       @IBOutlet var tableView: UITableView! {
//           didSet {
//               tableView.translatesAutoresizingMaskIntoConstraints = false
//           }
//       }
//
//       // Data Source
//       func numberOfSections(in tableView: UITableView) -> Int {
//           return 2
//       }
//
//       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//           if section == 0 {
//               return tasks.filter { $0.state == Taskstate.todo }.count
//           } else {
//               return tasks.filter { $0.state == Taskstate.done }.count
//           }
//       }
//
//       func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//           if section == 0 {
//               return "Todos"
//           } else if section == 1 {
//               return "Done"
//           }
//           return "-"
//       }
//
//       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//           if indexPath.section == 0 {
//               let todos = tasks.filter { $0.state == Taskstate.todo }
//               let item = todos[indexPath.row]
//
//               if item.isImportant {
//                   let ti = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: nil)
//                   ti.textLabel?.text = item.name
//                   ti.detailTextLabel?.text = "Important"
//                   return ti
//               } else {
//                   let t = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
//                   t.textLabel?.text = item.name
//                   return t
//               }
//           } else {
//               let dones = tasks.filter { $0.state == Taskstate.done }
//               let item = dones[indexPath.row]
//
//               if item.isImportant {
//                   let b = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: nil)
//                   b.textLabel?.text = item.name
//                   b.detailTextLabel?.text = "Important"
//                   return b
//               } else {
//                   let c = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
//                   c.textLabel?.text = item.name
//                   return c
//               }
//           }
//       }
//
//       override func viewDidLoad() {
//           tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//           tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//           tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//           tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//
//           //tasks = NetworkManager.fetchModels()
//
//           tableView.delegate = self
//       }
//
//       // Delegate
//       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//           if indexPath.section == 0 {
//               let todos = tasks.filter { $0.state == Taskstate.todo }
//               let item = todos[indexPath.item]
//               let index = tasks.firstIndex(where: {$0.name == item.name})!
//               let task = tasks.remove(at: index)
//              let updatedTask = TodoTask.init(name: task.name, isImportant: task.isImportant, state: .done)
//               tasks.insert(updatedTask, at: index)
//           } else {
//              let dones = tasks.filter { $0.state == Taskstate.done }
//              let item = dones[indexPath.item]
//              let index = tasks.firstIndex(where: {$0.name == item.name})!
//              let task = tasks.remove(at: index)
//              let updatedTask = TodoTask.init(name: task.name, isImportant: task.isImportant, state: .todo)
//              tasks.insert(updatedTask, at: index)
//          }
//
//          tableView.reloadData()
//      }
//  }

// 2.
//We want to write test code for the SomeViewModel class and want to fulfill code coverage of 100% but there are some problems. How do you solve them?
//
//Please explain the problem of this code.
//Please write code to solve the problem. Feel free to add or edit the code.
//You can download the code below from [Source code] to easily paste and comment it in your solution.
//1   class MyFileManager {
//2       static let shared = MyFileManager()
//3
//4       func isStored(atPath path: String) -> Bool {
//5           return FileManager.default.fileExists(atPath: path)
//6       }
//7       func readData(atPath path: String) -> Data? {
//8           return try? Data(contentsOf: URL(fileURLWithPath: path))
//9       }
//10  }
//11
//12  class SomeViewModel {
//13      func getCachedData() -> Data? {
//14          let path = "xxxxx"
//15
//16          if MyFileManager.shared.isStored(atPath: path) {
//17              return MyFileManager.shared.readData(atPath: path)
//18          } else {
//19              return nil
//20          }
//21      }
//22  }
//23
//24  class TestSomeViewModel: XCTestCase {
//25      func testGetCachedData() {
//26          let viewModel = SomeViewModel()
//27
//28          // How can we reach code coverage of 100% for SomeViewModel.getCachedData() method?
//29      }
//30  }





// 3.
//A server experiences a sudden increase in load at time t on metrics. Please check the log and find out what process causes the increase.
//There are eight processes A to H on the server, each process has four states: created, waiting, running, terminated.
//When logging begins, all processes are in state terminated. In addition, the log has all process state changes up to timing t.
//
//Print the process name if only one process is running at time t.
//Print -1 if no process or multiple processes are running at time t.
//
//Test case
//
//The first parameter is time t.
//
//The second parameter logs contains each line of the log. Each line contains the time, process name and new state which are separated by a blank space. Time in the log is shown in ascending order.
//
//Limits
//
//0 <= t <= 1,000,000
//Examples
//
//input
//
//15,
//["0 A created",
// "1 B created",
// "10 A running",
// "12 B waiting",
// "13 B running",
// "14 A waiting",
// "17 B terminated",
// "18 A terminated"]
//output
//
//"B"
//Analysis of output value
//
//Only B is running at time 15.
//
//input
//
//14,
//["0 A created",
//"1 B created",
//"2 C created",
//"3 D created",
//"10 A running",
//"11 A waiting",
//"12 B waiting",
//"13 B running",
//"14 C running",
//"17 B terminated",
//"18 A terminated"]
//output
//
//"-1"
//Analysis of output value
//
//Both B and C are running at time 14.

public func solution(_ metrics: (Int, [String])) -> String {
    var dict: [String:String] = [:]
    var runningProcessess: [String] = []
    
    for item in metrics.1 {
        let data = item.split(separator: " ")
        guard data.count == 3 else { continue }
        
        let t = Int(data[0])!,
            process = String(data[1]),
            state = String(data[2])
        
        if t <= metrics.0 {
            dict[process] = state
        }
    }
    
    for key in dict.keys {
        if dict[key] == "running" {
            runningProcessess.append(key)
        }
    }

    return runningProcessess.count == 1 ? runningProcessess[0] : "-1"
}


solution((15, ["0 A created",
               "1 B created",
               "10 A running",
               "12 B waiting",
               "13 B running",
               "14 A waiting",
               "17 B terminated",
               "18 A terminated"]))

solution((14, ["0 A created",
               "1 B created",
               "2 C created",
               "3 D created",
               "10 A running",
               "11 A waiting",
               "12 B waiting",
               "13 B running",
               "14 C running",
               "17 B terminated",
               "18 A terminated"]))


// 5.
//public func solution(_ n : inout [String]) -> [String] {
//    let processing = Processing()
//    var result: [Int] = []
//
//    for item in n {
//        let elements = item.split(separator: " ")
//
//        switch elements[0] {
//        case "add": processing.add(key: Int(elements[1]), value: Int(elements[2]))
//        case "get": result.append(processing.get(key: Int(elements[1])))
//        case "remove": result.append(processing.remove(key: Int(elements[1])))
//        case "evict": processing.evict()
//        case "exit": break
//        default: break
//        }
//    }
//
//    return result
//}
//
//class Processing {
//    var dict: [Int:Int] = [:]
//    var firstAccessedKey: Int?
//
//    func add(key: Int?, value: Int?) {
//        guard key != nil, value != nil else { return }
//        dict[key!] = value
//
//        if firstAccessedKey == nil {
//            firstAccessedKey = key!
//        }
//    }
//
//    func get(key: Int?) {
//        guard key != nil else { return }
//        if let value = dict[key!] {
//            if firstAccessedKey == nil {
//                self.firstAccessedKey = key!
//            }
//
//            return dict[key!]
//        } else {
//            return -1
//        }
//    }
//
//     func remove(key: Int?) {
//        guard key != nil else { return }
//        if let value = dict[key!] {
//            dict.removeValue(forKey: key!)
//            return value
//        } else {
//            return -1
//        }
//    }
//
//    func evict() {
//        if firstAccessedKey != nil {
//            dict.removeValue(forKey: firstAccessedKey!)
//            firstAccessedKey = nil
//        }
//    }
//
//    func exit() {
//
//    }
//}
//
//
//solution(["add 5 3", "add 1 2", "get 5", "evict", "get 1", "remove 5", "exit"])
