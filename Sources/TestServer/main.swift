
import SwiftGRPC
import Foundation


final class TaskProvider : RMSServiceLinkProvider {
    func getTask(request: CheckTaskDto, session: RMSServiceLinkGetTaskSession) throws -> RMSTaskDto {
        
        print(session.initialMetadata.dictionaryRepresentation)
       print( session.requestMetadata.dictionaryRepresentation["x-api-key"])
        var response = RMSTaskDto()
        response.task = "ReturningValue"
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
