//
// Copyright 2016 Twitter, Inc.
// Licensed under the Apache License, Version 2.0
// http://www.apache.org/licenses/LICENSE-2.0
//

import UIKit
import TwitterKit

class AttractionTwitterTimelineViewController: TWTRTimelineViewController {
    
    var handle: String!
    
    override func viewDidLoad() {
        
        let client = TWTRAPIClient()
        
        super.viewDidLoad()

        self.dataSource = TWTRSearchTimelineDataSource(searchQuery: "@\(handle)", APIClient: client)

        self.showTweetActions = true
    }

}
