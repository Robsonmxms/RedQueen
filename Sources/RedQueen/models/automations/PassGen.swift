import Foundation
import PassGenLibrary

class PassGen : AutomationType{
    func openAutomation() {
        print("Digite o tamanho:")
        let size = readLine()
        print("Digite o nome da senha:")
        let name = readLine()
        passwordSt.main(["-s", size!, "-p", name!])
    }
}
