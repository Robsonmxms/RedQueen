import Foundation

main()

func main(){
    var isKeepLooping = true

    while isKeepLooping{
        buildingHeader()
        isKeepLooping = isChoosingAutomation()
    }
}

func buildingHeader()
{
    print("""
            \n\nGerenciador de automações

    Escolha uma das opções abaixo:

    [1] Abrir Site
    [2] Acender as luzes
    [3] Abrir refrigerador

    Ou pressione qualquer outra tecla para encerrar
    """)
}

func isChoosingAutomation() -> Bool{
    
    var wasChosen = false
    
    let readInput = readLine()
    
    guard let chosenHeaderOption = Int(readInput!)else{
        return wasChosen
    }
    
    wasChosen = isBuildingAutomation(
        chosenHeaderOption: chosenHeaderOption
    )
        
    return wasChosen
}

func isBuildingAutomation(chosenHeaderOption : Int) -> Bool {
    let chosenOptionAutomation = chosenAutomation[chosenHeaderOption]
    var isBuilded = false
    
    if let automationToRun = chosenOptionAutomation{
        let automation = Automation()
        automation.openAutomation(type: automationToRun)
        isBuilded = true
    }
    
    return isBuilded
}




