import SwiftGRPC
import Foundation

func call(complete: ()->()) {
    complete()
}

final class TaskProvider : RMSServiceLinkProvider {
    
    func getTask(request: CheckTaskDto, session: RMSServiceLinkGetTaskSession) throws -> RMSTaskDto {

        print(request.date)
        var response = RMSTaskDto()
        response.task = "ReturningValue"
        let s = DispatchSemaphore(value: 1)
        call() {
            sleep(10)
            s.signal()
        }
        s.wait()
        print("Response")
        return response
        
    }
    
    
}
let name = "dev.example.com"
let address = "0.0.0.0:9000"
let cert = "/Users/home/Documents/GitHub/TestService2/Sources/\(name).crt"
let key = "/Users/home/Documents/GitHub/TestService2/Sources/\(name).key"
let certURL = URL(fileURLWithPath: cert)
let keyURL = URL(fileURLWithPath: key)
print("Starting server in \(address)")

let server = ServiceServer(address: address, certificateURL: certURL, keyURL: keyURL, serviceProviders: [TaskProvider()])


server?.start()
//dispatchMain()
while true {}
