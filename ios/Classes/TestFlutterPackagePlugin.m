#import "TestFlutterPackagePlugin.h"
#if __has_include(<test_flutter_package/test_flutter_package-Swift.h>)
#import <test_flutter_package/test_flutter_package-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "test_flutter_package-Swift.h"
#endif

@implementation TestFlutterPackagePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTestFlutterPackagePlugin registerWithRegistrar:registrar];
}
@end
