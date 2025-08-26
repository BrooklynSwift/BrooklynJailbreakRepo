//
//  BrooklynWebsite.swift
//
//
//  Created by Luki on 09/10/2024.
//

import Brooklyn

@main
private struct BrooklynWebsite {
	static func main() {
		let jailbreakRepository = JailbreakRepository()
		jailbreakRepository.render()
	}
}

private struct JailbreakRepository: Website {
	var pages: [PageContent] {
		Home()
	}
}
