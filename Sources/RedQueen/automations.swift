import Foundation

class Automation{
    func openAutomation(type: AutomationType){
        type.openAutomation()
    }
}
    
protocol AutomationType{
    func openAutomation() -> Void
}
    
class WebSiteAutomation : AutomationType{
    func openAutomation() {
        print("Opening the website...")
    }
}
    
class LightsHouseAutomation : AutomationType{
    func openAutomation() {
        print("Opening The Lights house")
    }
}
    
class OpenRefrigeratorAutomation : AutomationType{
    func openAutomation() {
        print("Opening the refrigerator")
    }
}
