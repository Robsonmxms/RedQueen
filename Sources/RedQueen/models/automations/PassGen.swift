import Foundation
import PassGenLibrary

class PassGen : AutomationType{
    func openAutomation() {
        
        print("""
        
        OPTIONS:
          -s, --size <size>       Size of password
          -p, --pass_name <pass_name>
                                  Name to be assigned to password
          -h, --help              Show help information.
        
        digite o comando:
        """)
        
        let arg = readLine()
        let argList = arg!.components(separatedBy: " ")
        passwordSt.main(argList)
    }
}
