//
//  Classes.swift
//
//
//  Created by Luki on 08/10/2024.
//

import Brooklyn

struct RepoButton: CSSClass {
	let name = ".repo-button"

	var rules: [CSSRule] {
		CSSRule(selector: name) {
			CSSProperty(name: .alignItems, value: "center")
			CSSProperty(name: .backgroundColor, value: "#BCC6F9")
			CSSProperty(name: .borderRadius, value: "4px")
			CSSProperty(name: .color, value: "white")
			CSSProperty(name: .display, value: "flex")
			CSSProperty(name: .fontSize, value: "0.95rem")
			CSSProperty(name: .height, value: "40px")
			CSSProperty(name: .justifyContent, value: "center")
			CSSProperty(name: .padding, value: "0 10px")
			CSSProperty(name: .textAlign, value: "center")
			CSSProperty(name: .textDecoration, value: "none")
		}
	}
}

struct RepoButtonHover: CSSClass {
	let name = ".repo-button:hover"

	var rules: [CSSRule] {
		CSSRule(selector: name) {
			CSSProperty(animation: .init(name: "wiggle", duration: .ms(100), timingFunction: .linear(), iterationCount: 5))
		}
	}
}

struct BrooklynLinkText: CSSClass {
	let name = ".brooklyn-text"

	var rules: [CSSRule] {
		CSSRule(selector: name) {
			CSSProperty(name: .color, value: "#BCC6F9")
			CSSProperty(name: .position, value: "relative")
			CSSProperty(name: .textDecoration, value: "none")
		}
	}
}

struct BrooklynLinkTextAfter: CSSClass {
	let name = ".brooklyn-text::after"

	var rules: [CSSRule] {
		CSSRule(selector: name) {
			CSSProperty(name: .backgroundColor, value: "#BCC6F9")
			CSSProperty(name: .color, value: "#BCC6F9")
			CSSProperty(name: .content, value: "''")
			CSSProperty(name: .bottom, value: "-2px")
			CSSProperty(name: .left, value: "0")
			CSSProperty(name: .height, value: "2px")
			CSSProperty(name: .width, value: "100%")
			CSSProperty(name: .position, value: "absolute")
			CSSProperty(name: .transform, value: "scaleX(0)")
			CSSProperty(name: .transition, value: "transform 0.3s ease")
		}
	}
}

struct BrooklynLinkTextHover: CSSClass {
	let name = ".brooklyn-text:hover::after"

	var rules: [CSSRule] {
		CSSRule(selector: name) {
			CSSProperty(name: .transform, value: "scaleX(1)")
		}
	}
}
