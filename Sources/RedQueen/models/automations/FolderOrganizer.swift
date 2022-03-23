import Foundation
import FolderOrganizerLib

class FolderOrganizer : AutomationType{
    func openAutomation() {
        print("""
        
        OVERVIEW: Fully move the files to their folder according to their type

        USAGE: organize [--folder <folder>]

        OPTIONS:
          -f, --folder <folder>   the folder full path (if not included, the downloads
                                  folder will be organized
          -h, --help              Show help information.

        digite o comando:
        """)
        
        let arg = readLine()
        let argList = arg!.components(separatedBy: " ")
        
        Organize.main(argList)
    }
}
