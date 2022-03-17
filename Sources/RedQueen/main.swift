import Foundation

main()

func main(){
    var isKeepLooping = true

    while isKeepLooping{
        buildingHeader()
        isKeepLooping = keepChoosingAutomation()
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

func keepChoosingAutomation() -> Bool{
    
    var isKeepChoosingAutomation = false
    
    if let readInput = readLine()
    {
        if let chosenHeaderOption = Int(readInput)
        {
            isKeepChoosingAutomation = buildingAutomation(
                chosenHeaderOption: chosenHeaderOption
            )
        }
    }
    return isKeepChoosingAutomation
}

func buildingAutomation(chosenHeaderOption : Int) -> Bool {
    let chosenOptionAutomation = chosenAutomation[chosenHeaderOption]
    var isbuilded = false
    
    if let automationToRun = chosenOptionAutomation{
        let automation = Automation()
        automation.openAutomation(type: automationToRun)
        isbuilded = true
    }
    
    return isbuilded
}



