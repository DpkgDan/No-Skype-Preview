#import "BBBulletin.h"

%hook BBBulletin

- (void)setSectionID:(NSString*)arg1{
        BOOL isSkype = [arg1 isEqualToString: @"com.skype.skype"];
        
        if (isSkype){
                [self setMessage: @"New Message"];
        }

        %orig(arg1);
}

%end