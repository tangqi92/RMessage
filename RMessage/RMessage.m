//
//  RMessage.m
//  RMessage
//
//  Created by Adonis Peralta on 12/7/15.
//  Copyright © 2015 Adonis Peralta. All rights reserved.
//

#import "RMessage.h"
#import "RMessageView.h"
#import "RMessageViewProtocol.h"

static UIViewController *_defaultViewController;
static NSLock *mLock, *nLock;

@interface RMessage () <RMessageViewProtocol>

/** The queued messages (RMessageView objects) */
@property (nonatomic, strong) NSMutableArray *messages;

@property (nonatomic, assign) BOOL notificationActive;

@end

@implementation RMessage

#pragma mark - Class Methods

+ (instancetype)sharedMessage
{
  static RMessage *sharedMessage;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    sharedMessage = [RMessage new];
    mLock = [NSLock new];
    nLock = [NSLock new];
  });
  return sharedMessage;
}

+ (void)showNotificationWithTitle:(NSAttributedString *)title
                             type:(RMessageType)type
                   customTypeName:(NSString *)customTypeName
                        tapAction:(void (^)(void))tapBlock
{
  [self showNotificationInViewController:_defaultViewController
                                   title:title
                                subtitle:nil
                                    type:type
                          customTypeName:customTypeName
                                duration:RMessageDurationAutomatic
                              atPosition:RMessagePositionTop
                    canBeDismissedByUser:YES
                                leftView:nil
                               rightView:nil
                          backgroundView:nil
                               tapAction:tapBlock
                    presentingCompletion:nil
                       dismissCompletion:nil];
}

+ (void)showNotificationWithTitle:(NSAttributedString *)title
                         subtitle:(NSAttributedString *)subtitle
                             type:(RMessageType)type
                   customTypeName:(NSString *)customTypeName
                        tapAction:(void (^)(void))tapBlock
{
  [self showNotificationInViewController:_defaultViewController
                                   title:title
                                subtitle:subtitle
                                    type:type
                          customTypeName:customTypeName
                                duration:RMessageDurationAutomatic
                              atPosition:RMessagePositionTop
                    canBeDismissedByUser:YES
                                leftView:nil
                               rightView:nil
                          backgroundView:nil
                               tapAction:tapBlock
                    presentingCompletion:nil
                       dismissCompletion:nil];
}

+ (void)showNotificationWithTitle:(NSAttributedString *)title
                         subtitle:(NSAttributedString *)subtitle
                             type:(RMessageType)type
                   customTypeName:(NSString *)customTypeName
                         duration:(NSTimeInterval)duration
                       atPosition:(RMessagePosition)position
             canBeDismissedByUser:(BOOL)dismissingEnabled
                        tapAction:(void (^)(void))tapBlock
{
  [self showNotificationInViewController:_defaultViewController
                                   title:title
                                subtitle:subtitle
                                    type:type
                          customTypeName:customTypeName
                                duration:duration
                              atPosition:position
                    canBeDismissedByUser:dismissingEnabled
                                leftView:nil
                               rightView:nil
                          backgroundView:nil
                               tapAction:tapBlock
                    presentingCompletion:nil
                       dismissCompletion:nil];
}

+ (void)showNotificationWithTitle:(NSAttributedString *)title
                         subtitle:(NSAttributedString *)subtitle
                             type:(RMessageType)type
                   customTypeName:(NSString *)customTypeName
                         duration:(NSTimeInterval)duration
                       atPosition:(RMessagePosition)position
             canBeDismissedByUser:(BOOL)dismissingEnabled
                         leftView:(UIView *)leftView
                        rightView:(UIView *)rightView
                   backgroundView:(UIView *)backgroundView
                        tapAction:(void (^)(void))tapBlock
{
  [self showNotificationInViewController:_defaultViewController
                                   title:title
                                subtitle:subtitle
                                    type:type
                          customTypeName:customTypeName
                                duration:duration
                              atPosition:position
                    canBeDismissedByUser:dismissingEnabled
                                leftView:leftView
                               rightView:rightView
                          backgroundView:backgroundView
                               tapAction:tapBlock
                    presentingCompletion:nil
                       dismissCompletion:nil];
}

+ (void)showNotificationWithTitle:(NSAttributedString *)title
                         subtitle:(NSAttributedString *)subtitle
                             type:(RMessageType)type
                   customTypeName:(NSString *)customTypeName
                         duration:(NSTimeInterval)duration
                       atPosition:(RMessagePosition)position
             canBeDismissedByUser:(BOOL)dismissingEnabled
                         leftView:(UIView *)leftView
                        rightView:(UIView *)rightView
                   backgroundView:(UIView *)backgroundView
                        tapAction:(void (^)(void))tapBlock
             presentingCompletion:(void (^)(void))presentingCompletion
                dismissCompletion:(void (^)(void))dismissCompletionBlock
{
  [self showNotificationInViewController:_defaultViewController
                                   title:title
                                subtitle:subtitle
                                    type:type
                          customTypeName:customTypeName
                                duration:duration
                              atPosition:position
                    canBeDismissedByUser:dismissingEnabled
                                leftView:leftView
                               rightView:rightView
                          backgroundView:backgroundView
                               tapAction:tapBlock
                    presentingCompletion:nil
                       dismissCompletion:nil];
}

#pragma mark inViewController functions

+ (void)showNotificationInViewController:(UIViewController *)viewController
                                   title:(NSAttributedString *)title
                                    type:(RMessageType)type
                          customTypeName:(NSString *)customTypeName
                               tapAction:(void (^)(void))tapBlock
{
  [self showNotificationInViewController:viewController
                                   title:title
                                subtitle:nil
                                    type:type
                          customTypeName:customTypeName
                                duration:RMessageDurationAutomatic
                              atPosition:RMessagePositionTop
                    canBeDismissedByUser:YES
                                leftView:nil
                               rightView:nil
                          backgroundView:nil
                               tapAction:tapBlock
                    presentingCompletion:nil
                       dismissCompletion:nil];
}

+ (void)showNotificationInViewController:(UIViewController *)viewController
                                   title:(NSAttributedString *)title
                                subtitle:(NSAttributedString *)subtitle
                                    type:(RMessageType)type
                          customTypeName:(NSString *)customTypeName
                               tapAction:(void (^)(void))tapBlock
{
  [self showNotificationInViewController:viewController
                                   title:title
                                subtitle:subtitle
                                    type:type
                          customTypeName:customTypeName
                                duration:RMessageDurationAutomatic
                              atPosition:RMessagePositionTop
                    canBeDismissedByUser:YES
                                leftView:nil
                               rightView:nil
                          backgroundView:nil
                               tapAction:tapBlock
                    presentingCompletion:nil
                       dismissCompletion:nil];
}

+ (void)showNotificationInViewController:(UIViewController *)viewController
                                   title:(NSAttributedString *)title
                                subtitle:(NSAttributedString *)subtitle
                                    type:(RMessageType)type
                          customTypeName:(NSString *)customTypeName
                                duration:(NSTimeInterval)duration
                              atPosition:(RMessagePosition)position
                    canBeDismissedByUser:(BOOL)dismissingEnabled
                               tapAction:(void (^)(void))tapBlock
{
  [self showNotificationInViewController:viewController
                                   title:title
                                subtitle:subtitle
                                    type:type
                          customTypeName:customTypeName
                                duration:duration
                              atPosition:position
                    canBeDismissedByUser:dismissingEnabled
                                leftView:nil
                               rightView:nil
                          backgroundView:nil
                               tapAction:tapBlock
                    presentingCompletion:nil
                       dismissCompletion:nil];
}

+ (void)showNotificationInViewController:(UIViewController *)viewController
                                   title:(NSAttributedString *)title
                                subtitle:(NSAttributedString *)subtitle
                                    type:(RMessageType)type
                          customTypeName:(NSString *)customTypeName
                                duration:(NSTimeInterval)duration
                              atPosition:(RMessagePosition)position
                    canBeDismissedByUser:(BOOL)dismissingEnabled
                                leftView:(UIView *)leftView
                               rightView:(UIView *)rightView
                          backgroundView:(UIView *)backgroundView
                               tapAction:(void (^)(void))tapBlock
{
  [self showNotificationInViewController:viewController
                                   title:title
                                subtitle:subtitle
                                    type:type
                          customTypeName:customTypeName
                                duration:duration
                              atPosition:position
                    canBeDismissedByUser:dismissingEnabled
                                leftView:leftView
                               rightView:rightView
                          backgroundView:backgroundView
                               tapAction:tapBlock
                    presentingCompletion:nil
                       dismissCompletion:nil];
}

+ (void)showNotificationInViewController:(UIViewController *)viewController
                                   title:(NSAttributedString *)title
                                subtitle:(NSAttributedString *)subtitle
                                    type:(RMessageType)type
                          customTypeName:(NSString *)customTypeName
                                duration:(NSTimeInterval)duration
                              atPosition:(RMessagePosition)position
                    canBeDismissedByUser:(BOOL)dismissingEnabled
                                leftView:(UIView *)leftView
                               rightView:(UIView *)rightView
                          backgroundView:(UIView *)backgroundView
                               tapAction:(void (^)(void))tapBlock
                    presentingCompletion:(void (^)(void))presentingCompletionBlock
                     dismissCompletion:(void (^)(void))dismissCompletionBlock
{
  RMessageView *messageView = [[RMessageView alloc] initWithDelegate:[RMessage sharedMessage]
                                                               title:title
                                                            subtitle:subtitle
                                                                type:type
                                                      customTypeName:customTypeName
                                                            duration:duration
                                                    inViewController:viewController
                                                          atPosition:position
                                                canBeDismissedByUser:dismissingEnabled
                                                            leftView:leftView
                                                           rightView:rightView
                                                      backgroundView:backgroundView
                                                           tapAction:tapBlock
                                                presentingCompletion:presentingCompletionBlock
                                                dismissCompletion:dismissCompletionBlock];
  [self prepareNotificationForPresentation:messageView];
}

+ (void)prepareNotificationForPresentation:(RMessageView *)messageView
{
  [mLock lock];
  [[RMessage sharedMessage].messages addObject:messageView];
  [mLock unlock];

  [nLock lock];
  if (![RMessage sharedMessage].notificationActive) {
    [nLock unlock];
    [[RMessage sharedMessage] presentMessageView];
    return;
  }
  [nLock unlock];
}

+ (BOOL)dismissActiveNotification
{
  return [self dismissActiveNotificationWithCompletion:nil];
}

+ (BOOL)dismissActiveNotificationWithCompletion:(void (^)(void))completionBlock
{
  [mLock lock];
  if ([RMessage sharedMessage].messages.count == 0 || ![RMessage sharedMessage].messages) {
    [mLock unlock];
    return NO;
  }

  RMessageView *currentMessage = [RMessage sharedMessage].messages[0];

  if (currentMessage && currentMessage.messageIsFullyDisplayed) {
    [currentMessage dismissWithCompletion:completionBlock];
  }

  [mLock unlock];
  return YES;
}

#pragma mark Customizing RMessage

+ (void)setDefaultViewController:(UIViewController *)defaultViewController
{
  _defaultViewController = defaultViewController;
}

+ (void)setDelegate:(id<RMessageProtocol>)delegate
{
  [RMessage sharedMessage].delegate = delegate;
}

+ (void)addDesignsFromFileWithName:(NSString *)filename inBundle:(NSBundle *)bundle
{
  [RMessageView addDesignsFromFileWithName:filename inBundle:bundle];
}

#pragma mark - Misc Methods

+ (BOOL)isNotificationActive
{
  [nLock lock];
  BOOL notificationActive = [RMessage sharedMessage].notificationActive;
  [nLock unlock];
  return notificationActive;
}

+ (NSArray *)queuedMessages
{
  [mLock lock];
  NSArray *messagesCopy = [[RMessage sharedMessage].messages copy];
  [mLock unlock];
  return messagesCopy;
}

#pragma mark - Instance Methods

- (instancetype)init
{
  self = [super init];
  if (self) {
    [mLock lock];
    _messages = [NSMutableArray new];
    [mLock unlock];
  }
  return self;
}

- (void)presentMessageView
{
  [mLock lock];
  if (self.messages.count == 0) {
    [mLock unlock];
    return;
  }

  RMessageView *messageView = self.messages[0];
  [mLock unlock];

  if (self.delegate && [self.delegate respondsToSelector:@selector(customizeMessageView:)]) {
    [self.delegate customizeMessageView:messageView];
  }
  [messageView present];
}

#pragma mark - RMessageView Delegate Methods

- (void)messageViewIsPresenting:(RMessageView *)messageView
{
  [nLock lock];
  self.notificationActive = YES;
  [nLock unlock];
  if (self.delegate && [self.delegate respondsToSelector:@selector(messageViewDidPresent:)]) {
    [self.delegate messageViewDidPresent:messageView];
  }
}

- (void)messageViewDidDismiss:(RMessageView *)messageView
{
  [mLock lock];
  if (self.messages.count > 0) {
    [self.messages removeObjectAtIndex:0];
  }
  [mLock unlock];

  [nLock lock];
  self.notificationActive = NO;
  [nLock unlock];

  if (self.delegate && [self.delegate respondsToSelector:@selector(messageViewDidDismiss:)]) {
    [self.delegate messageViewDidDismiss:messageView];
  }

  [mLock lock];
  if (self.messages.count > 0) {
    [mLock unlock];
    [self presentMessageView];
    return;
  }
  [mLock unlock];
}

- (CGFloat)customVerticalOffsetForMessageView:(RMessageView *)messageView
{
  if (self.delegate && [self.delegate respondsToSelector:@selector(customVerticalOffsetForMessageView:)]) {
    return [self.delegate customVerticalOffsetForMessageView:messageView];
  }
  return 0.f;
}

- (void)windowRemovedForEndlessDurationMessageView:(RMessageView *)messageView
{
  if ([self.delegate respondsToSelector:@selector(windowRemovedForEndlessDurationMessageView:)]) {
    [self.delegate windowRemovedForEndlessDurationMessageView:messageView];
  }
}

- (void)didSwipeMessageView:(RMessageView *)messageView
{
  if ([self.delegate respondsToSelector:@selector(didSwipeMessageView:)]) {
    [self.delegate didSwipeMessageView:messageView];
  }
}

- (void)didTapMessageView:(RMessageView *)messageView
{
  if ([self.delegate respondsToSelector:@selector(didTapMessageView:)]) {
    [self.delegate didTapMessageView:messageView];
  }
}

+ (void)interfaceDidRotate
{
  [mLock lock];
  if ([RMessage sharedMessage].messages.count == 0) {
    [mLock unlock];
    return;
  }
  [[RMessage sharedMessage].messages[0] interfaceDidRotate];
  [mLock unlock];
}

@end
