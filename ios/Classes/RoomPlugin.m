#import "RoomPlugin.h"
#if __has_include(<room/room-Swift.h>)
#import <room/room-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "room-Swift.h"
#endif

@implementation RoomPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRoomPlugin registerWithRegistrar:registrar];
}
@end
