import Foundation

var voiceRecognizedPhrase = "Open the lights"

let voiceChosenAutomation = chosenAutomation[voiceRecognizedPhrase.lowercased()]

if let automationToRun = voiceChosenAutomation{
    let automation = Automation()
    automation.openAutomation(type: automationToRun)
}


