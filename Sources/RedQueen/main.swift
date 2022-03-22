import Foundation

myQueen()

public func myQueen(){
    var isKeepLooping = true

    while isKeepLooping{
        buildingHeader()
        isKeepLooping = isChoosingAutomation()
    }
}

func buildingHeader()
{
    print("""
            \n\nRed Queen

    I control everything,
    choose one of the automation options that I will run
    
    """)
    
    buildingOptions()

    print("\nOr press any other key to end execution")
    
}

func buildingOptions(){
    for key in chosenAutomation.keys{
        let value = chosenAutomation[key]
        print("[",key,"]\t ",value!)
    }
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
    var wasBuilded = false
    
    if let automationToRun = chosenOptionAutomation{
        let automation = Automation()
        automation.openAutomation(type: automationToRun)
        wasBuilded = true
    }
    
    return wasBuilded
}




