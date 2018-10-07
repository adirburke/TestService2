import Dispatch
import SwiftGRPC


final class TaskProvider : RMSServiceLinkProvider {
    func getTask(request: CheckTaskDto, session: RMSServiceLinkGetTaskSession) throws -> RMSTaskDto {
        
        
        var response = RMSTaskDto()
        response.task = "ReturningValue"
        return response
        
    }
    
    
}

let address = "0.0.0.0:9000"
print("Starting server in \(address)")
let server = ServiceServer(
    address: address, serviceProviders: [TaskProvider()]
)
server.start()
dispatchMain()
