#import "BBBulletin.h"

%hook BBBulletin

- (void)setSectionID:(NSString*)arg1
{
        if ([arg1 isEqualToString: @"com.skype.skype"])
                [self setMessage: @"New Message"];

        %orig(arg1);
}

%end