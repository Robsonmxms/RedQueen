import Foundation
import CifraClubChords

class CifraClubChords : AutomationType{
    func openAutomation() {
        
        findChords()
        
        func findChords() {
            let cifraClubChords = Chords(
                musicName: musicName(),
                tabs: tabs(),
                key: key(),
                footerChords: removeFooterChords()
            )

            cifraClubChords.searchMusic()
        }
        func musicName() -> String{
            print("\nDigite o nome da música:")
            let name = readLine()
            return name!
        }
        
        func tabs() -> Bool {
            print("\nDeseja tabs [true] ou [false]?")
            let tabs = readLine()
            return Bool(tabs!) ?? false
        }
        
        func key() -> String?{
            print("\nQual o tom da música (use o formato de letra)?")
            let key = readLine()
            return key?.lowercased()
        }
        
        func removeFooterChords() -> Bool {
            print("\nDeseja remover FooterChords [true] ou [false]?")
            let removeFooterChords = readLine()
            return Bool(removeFooterChords!) ?? false
        }
    }

    
}
