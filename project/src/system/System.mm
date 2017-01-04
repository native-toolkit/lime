#ifdef IPHONE
#import <UIKit/UIKit.h>
#endif

#include <system/System.h>


namespace lime {
	
	
	std::wstring* System::GetIOSDirectory (SystemDirectory type) {
		
		#ifndef OBJC_ARC
		NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
		#endif
		
		NSUInteger searchType = NSDocumentDirectory;
		
		switch (type) {
			
			case DESKTOP:
				
				searchType = NSDesktopDirectory;
				break;
			
			case USER:
				
				//searchType = NSUserDirectory;
				searchType = NSDocumentDirectory;
				break;
			
			default: break;
			
		}
		
		std::wstring* result = 0;
		
		NSArray* paths = NSSearchPathForDirectoriesInDomains (searchType, NSUserDomainMask, YES);
		
		if (paths && [paths count] > 0) {
			
			NSString* basePath = paths.firstObject;
			std::string path = std::string ([basePath UTF8String]);
			result = new std::wstring (path.begin (), path.end ());
			
		}
		
		#ifndef OBJC_ARC
		[pool drain];
		#endif
		
		return result;
		
	}
	
	
	void System::OpenFile (const char* path) {
		
		OpenURL (path, NULL);
		
	}
	
	
	void System::OpenURL (const char* url, const char* target) {
		
		#ifndef OBJC_ARC
		NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
		#endif
		
		UIApplication *application = [UIApplication sharedApplication];
		NSString *str = [[NSString alloc] initWithUTF8String: url];
		NSURL *_url = [NSURL URLWithString: str];
		
		if ([[UIApplication sharedApplication] canOpenURL: _url]) {
			
			if ([application respondsToSelector: @selector (openURL:options:completionHandler:)]) {
				
				[application openURL: _url options: @{}
					completionHandler:^(BOOL success) {
						//NSLog(@"Open %@: %d", _url, success);
					}
				];
				
			} else {
				
				BOOL success = [application openURL: _url];
				//NSLog(@"Open %@: %d",scheme,success);
				
			}
			
		}
		
		#ifndef OBJC_ARC
		[str release];
		[pool drain];
		#endif
		
	}
	
	
}