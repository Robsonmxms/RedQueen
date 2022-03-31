import Foundation

public class CLI {
    
    public init() {}
    
    public func run(){
        var isKeepLooping = true

        while isKeepLooping{
            buildingHeader()
            isKeepLooping = isChoosingAutomation()
        }
    }
    
    func buildingHeader(){
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

    func isChoosingAutomation()-> Bool{
        
        let readInput = readLine()
        
        guard let chosenHeaderOption = Int(readInput!)else{
            return false
        }
        
        let wasChosen = isBuildingAutomation(
            chosenHeaderOption: chosenHeaderOption
        )
            
        return wasChosen
    }

    func isBuildingAutomation(chosenHeaderOption: Int)-> Bool {
        let chosenOptionAutomation = chosenAutomation[chosenHeaderOption]
        
        if let automationToRun = chosenOptionAutomation{
            let automation = Automation()
            automation.openAutomation(type: automationToRun)
            return true
        }
        
        return false
    }

}
