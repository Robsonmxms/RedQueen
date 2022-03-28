# RedQueen
[![NPM](https://img.shields.io/github/license/Robsonmxms/RedQueen)](https://github.com/Robsonmxms/RedQueen/blob/main/LICENSE)

# About Project
Red Queen is an automation manager that uses the [Package Manager](https://www.swift.org/package-manager/)

## The Application
* In the [package.swift](https://github.com/Robsonmxms/RedQueen/blob/main/Package.swift) you can define manager dependencies as in the examples:

  ```swift
  dependencies: [
          .package(
              url: "https://github.com/Luizerz/PassGen.git",
              from: "1.0.2"
          ),
          .package(
              url: "https://github.com/otavioalbucosta/FolderOrganizer.git",
              branch: "main"
          ),
      ],
  ```

    * Don't forget target dependencies:

      ```swift
      targets: [
              .target(
                  name: "RedQueen",
                  dependencies: [
                      .product(
                          name: "PassGen",
                          package: "PassGen"
                      ),
                      .product(
                          name: "FolderOrganizerLib",
                          package: "FolderOrganizer"
                      ),
                  ]
              ),
      ```

* In the [automations folder](https://github.com/Robsonmxms/RedQueen/tree/main/Sources/RedQueen/models/automations) you should create a new file and call it as the your automation name.

* You should use the [protocol](https://github.com/Robsonmxms/RedQueen/blob/main/Sources/RedQueen/protocols/Protocols.swift) to create your automation class
    * See the PassGen implementation example:
      ```swift
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
      ```
    * As you saw, inside ```openAutomation()``` you will create your execution code to call your automation
* In the [AutomationDictionary.swift](https://github.com/Robsonmxms/RedQueen/blob/main/Sources/RedQueen/AutomationDictionary.swift) you should insert the key and the value as you can see:
  ```swift
  import Foundation
  
  var chosenAutomation : [Int : AutomationType] = [
      1: FolderOrganizer(),
      2: PassGen()
  ]
  ```
* See the code running:
  ![code](https://user-images.githubusercontent.com/53024020/160408770-10a0fcea-67ce-4206-910d-9d9d499a5d62.gif)

# Getting Started

* Clone the repository at the work terminal:

  ```bash
  git clone https://github.com/Robsonmxms/RedQueen.git
  ```

