// Generated file
#if __has_include(<CoreTelephony/CoreTelephony+LC32.h>)
#import <CoreTelephony/CoreTelephony+LC32.h>
#else
#import <CoreTelephony/CoreTelephony.h>
#endif
#import <LC32/LC32.h>
#import <CoreGraphics/CoreGraphics+LC32.h>
#import <UIKit/UIKit+LC32.h>
@implementation CTSubscriberInfo
+ (id)subscriber {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}
@end