.class public Lio/github/zeroaicy/readclass/classInfo/DefaultProvider;
.super Ljava/lang/Object;
.source "DefaultProvider.java"

# interfaces
.implements Lio/github/zeroaicy/aide/AllowedListContentProvider$Provider;


# instance fields
.field private final bootClassSign:[Ljava/lang/String;

.field public final mDefaultMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field nul:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1c8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.accessibilityservice.AccessibilityService.MagnificationController.OnMagnificationChangedListener.onMagnificationChanged(android.accessibilityservice.AccessibilityService.MagnificationController,android.graphics.Region,android.accessibilityservice.MagnificationConfig)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.animation.Animator.AnimatorListener.onAnimationEnd(android.animation.Animator,boolean)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.animation.Animator.AnimatorListener.onAnimationStart(android.animation.Animator,boolean)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPostCreated(android.app.Activity,android.os.Bundle)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPostDestroyed(android.app.Activity)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPostPaused(android.app.Activity)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPostResumed(android.app.Activity)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPostSaveInstanceState(android.app.Activity,android.os.Bundle)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPostStarted(android.app.Activity)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPostStopped(android.app.Activity)"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPreCreated(android.app.Activity,android.os.Bundle)"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPreDestroyed(android.app.Activity)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPrePaused(android.app.Activity)"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPreResumed(android.app.Activity)"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPreSaveInstanceState(android.app.Activity,android.os.Bundle)"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPreStarted(android.app.Activity)"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android.app.Application.ActivityLifecycleCallbacks.onActivityPreStopped(android.app.Activity)"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "android.app.appsearch.BatchResultCallback<KeyType,ValueType>.onSystemError(java.lang.Throwable)"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "android.content.ServiceConnection.onBindingDied(android.content.ComponentName)"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "android.content.ServiceConnection.onNullBinding(android.content.ComponentName)"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "android.content.res.loader.AssetsProvider.loadAssetFd(java.lang.String,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "android.database.Cursor.getNotificationUris()"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "android.database.Cursor.setNotificationUris(android.content.ContentResolver,java.util.List<android.net.Uri>)"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "android.location.Geocoder.GeocodeListener.onError(java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "android.location.LocationListener.onFlushComplete(int)"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "android.location.LocationListener.onLocationChanged(java.util.List<android.location.Location>)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "android.location.LocationListener.onProviderDisabled(java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "android.location.LocationListener.onProviderEnabled(java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "android.location.LocationListener.onStatusChanged(java.lang.String,int,android.os.Bundle)"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "android.media.AudioRecord.OnRoutingChangedListener.onRoutingChanged(android.media.AudioRouting)"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "android.media.AudioTrack.OnRoutingChangedListener.onRoutingChanged(android.media.AudioRouting)"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "android.media.MediaCas.EventListener.onPluginStatusUpdate(android.media.MediaCas,int,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "android.media.MediaCas.EventListener.onResourceLost(android.media.MediaCas)"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "android.media.MediaCas.EventListener.onSessionEvent(android.media.MediaCas,android.media.MediaCas.Session,int,int,byte[])"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "android.media.MediaDrmThrowable.getErrorContext()"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "android.media.MediaDrmThrowable.getOemError()"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "android.media.MediaDrmThrowable.getVendorError()"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "android.net.ipsec.ike.ChildSessionCallback.onClosedWithException(android.net.ipsec.ike.exceptions.IkeException)"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "android.net.ipsec.ike.IkeSessionCallback.onClosedWithException(android.net.ipsec.ike.exceptions.IkeException)"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "android.net.ipsec.ike.IkeSessionCallback.onError(android.net.ipsec.ike.exceptions.IkeException)"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "android.net.nsd.NsdManager.ResolveListener.onResolutionStopped(android.net.nsd.NsdServiceInfo)"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "android.net.nsd.NsdManager.ResolveListener.onStopResolutionFailed(android.net.nsd.NsdServiceInfo,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "android.os.IBinder.DeathRecipient.binderDied(android.os.IBinder)"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "android.os.IBinder.getSuggestedMaxIpcSizeBytes()"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "android.os.OutcomeReceiver<R,E>.onError(E)"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "android.preference.PreferenceDataStore.getBoolean(java.lang.String,boolean)"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "android.preference.PreferenceDataStore.getFloat(java.lang.String,float)"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "android.preference.PreferenceDataStore.getInt(java.lang.String,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "android.preference.PreferenceDataStore.getLong(java.lang.String,long)"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "android.preference.PreferenceDataStore.getString(java.lang.String,java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "android.preference.PreferenceDataStore.getStringSet(java.lang.String,java.util.Set<java.lang.String>)"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "android.preference.PreferenceDataStore.putBoolean(java.lang.String,boolean)"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "android.preference.PreferenceDataStore.putFloat(java.lang.String,float)"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "android.preference.PreferenceDataStore.putInt(java.lang.String,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "android.preference.PreferenceDataStore.putLong(java.lang.String,long)"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "android.preference.PreferenceDataStore.putString(java.lang.String,java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "android.preference.PreferenceDataStore.putStringSet(java.lang.String,java.util.Set<java.lang.String>)"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "android.service.voice.VoiceInteractionSession.VisibleActivityCallback.onInvisible(android.service.voice.VoiceInteractionSession.ActivityId)"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "android.service.voice.VoiceInteractionSession.VisibleActivityCallback.onVisible(android.service.voice.VisibleActivityInfo)"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "android.speech.RecognitionListener.onEndOfSegmentedSession()"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "android.speech.RecognitionListener.onLanguageDetection(android.os.Bundle)"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "android.speech.RecognitionListener.onSegmentResults(android.os.Bundle)"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "android.speech.tts.SynthesisCallback.rangeStart(int,int,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "android.telephony.mbms.GroupCallCallback.onBroadcastSignalStrengthUpdated(int)"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "android.telephony.mbms.GroupCallCallback.onError(int,java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "android.telephony.mbms.GroupCallCallback.onGroupCallStateChanged(int,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "android.telephony.mbms.MbmsGroupCallSessionCallback.onAvailableSaisUpdated(java.util.List<java.lang.Integer>,java.util.List<java.util.List<java.lang.Integer>>)"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "android.telephony.mbms.MbmsGroupCallSessionCallback.onError(int,java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "android.telephony.mbms.MbmsGroupCallSessionCallback.onMiddlewareReady()"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "android.telephony.mbms.MbmsGroupCallSessionCallback.onServiceInterfaceAvailable(java.lang.String,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "android.util.AttributeSet.getAttributeNamespace(int)"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "android.util.Dumpable.getDumpableName()"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "android.view.AttachedSurfaceControl.addOnBufferTransformHintChangedListener(android.view.AttachedSurfaceControl.OnBufferTransformHintChangedListener)"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "android.view.AttachedSurfaceControl.getBufferTransformHint()"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "android.view.AttachedSurfaceControl.removeOnBufferTransformHintChangedListener(android.view.AttachedSurfaceControl.OnBufferTransformHintChangedListener)"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "android.view.AttachedSurfaceControl.setChildBoundingInsets(android.graphics.Rect)"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "android.view.AttachedSurfaceControl.setTouchableRegion(android.graphics.Region)"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "android.view.Menu.setGroupDividerEnabled(boolean)"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "android.view.MenuItem.getAlphabeticModifiers()"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "android.view.MenuItem.getContentDescription()"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "android.view.MenuItem.getIconTintBlendMode()"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "android.view.MenuItem.getIconTintList()"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "android.view.MenuItem.getIconTintMode()"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "android.view.MenuItem.getNumericModifiers()"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "android.view.MenuItem.getTooltipText()"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "android.view.MenuItem.setAlphabeticShortcut(char,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "android.view.MenuItem.setContentDescription(java.lang.CharSequence)"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "android.view.MenuItem.setIconTintBlendMode(android.graphics.BlendMode)"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "android.view.MenuItem.setIconTintList(android.content.res.ColorStateList)"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "android.view.MenuItem.setIconTintMode(android.graphics.PorterDuff.Mode)"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "android.view.MenuItem.setNumericShortcut(char,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "android.view.MenuItem.setShortcut(char,char,int,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "android.view.MenuItem.setTooltipText(java.lang.CharSequence)"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "android.view.SurfaceHolder.Callback2.surfaceRedrawNeededAsync(android.view.SurfaceHolder,java.lang.Runnable)"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "android.view.SurfaceHolder.lockHardwareCanvas()"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "android.view.View.OnLongClickListener.onLongClickUseDefaultHapticFeedback(android.view.View)"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "android.view.ViewParent.findOnBackInvokedDispatcherForChild(android.view.View,android.view.View)"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "android.view.ViewParent.onDescendantInvalidated(android.view.View,android.view.View)"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "android.view.Window.Callback.onPointerCaptureChanged(boolean)"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "android.view.Window.Callback.onProvideKeyboardShortcuts(java.util.List<android.view.KeyboardShortcutGroup>,android.view.Menu,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "android.view.WindowInsetsAnimationController.isReady()"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "android.view.WindowManager.addCrossWindowBlurEnabledListener(java.util.concurrent.Executor,java.util.function.Consumer<java.lang.Boolean>)"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "android.view.WindowManager.addCrossWindowBlurEnabledListener(java.util.function.Consumer<java.lang.Boolean>)"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "android.view.WindowManager.addProposedRotationListener(java.util.concurrent.Executor,java.util.function.IntConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "android.view.WindowManager.getCurrentWindowMetrics()"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "android.view.WindowManager.getMaximumWindowMetrics()"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "android.view.WindowManager.isCrossWindowBlurEnabled()"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "android.view.WindowManager.removeCrossWindowBlurEnabledListener(java.util.function.Consumer<java.lang.Boolean>)"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "android.view.WindowManager.removeProposedRotationListener(java.util.function.IntConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "android.view.contentcapture.DataShareWriteAdapter.onError(int)"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "android.view.inputmethod.InputConnection.commitText(java.lang.CharSequence,int,android.view.inputmethod.TextAttribute)"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "android.view.inputmethod.InputConnection.getSurroundingText(int,int,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "android.view.inputmethod.InputConnection.performHandwritingGesture(android.view.inputmethod.HandwritingGesture,java.util.concurrent.Executor,java.util.function.IntConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "android.view.inputmethod.InputConnection.performSpellCheck()"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "android.view.inputmethod.InputConnection.previewHandwritingGesture(android.view.inputmethod.PreviewableHandwritingGesture,android.os.CancellationSignal)"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "android.view.inputmethod.InputConnection.replaceText(int,int,java.lang.CharSequence,int,android.view.inputmethod.TextAttribute)"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "android.view.inputmethod.InputConnection.requestCursorUpdates(int,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "android.view.inputmethod.InputConnection.requestTextBoundsInfo(android.graphics.RectF,java.util.concurrent.Executor,java.util.function.Consumer<android.view.inputmethod.TextBoundsInfoResult>)"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "android.view.inputmethod.InputConnection.setComposingRegion(int,int,android.view.inputmethod.TextAttribute)"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "android.view.inputmethod.InputConnection.setComposingText(java.lang.CharSequence,int,android.view.inputmethod.TextAttribute)"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "android.view.inputmethod.InputConnection.setImeConsumesInput(boolean)"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "android.view.inputmethod.InputConnection.takeSnapshot()"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "android.view.textclassifier.TextClassifier.classifyText(android.view.textclassifier.TextClassification.Request)"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "android.view.textclassifier.TextClassifier.classifyText(java.lang.CharSequence,int,int,android.os.LocaleList)"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "android.view.textclassifier.TextClassifier.destroy()"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "android.view.textclassifier.TextClassifier.detectLanguage(android.view.textclassifier.TextLanguage.Request)"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "android.view.textclassifier.TextClassifier.generateLinks(android.view.textclassifier.TextLinks.Request)"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "android.view.textclassifier.TextClassifier.getMaxGenerateLinksTextLength()"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "android.view.textclassifier.TextClassifier.isDestroyed()"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "android.view.textclassifier.TextClassifier.onSelectionEvent(android.view.textclassifier.SelectionEvent)"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "android.view.textclassifier.TextClassifier.onTextClassifierEvent(android.view.textclassifier.TextClassifierEvent)"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "android.view.textclassifier.TextClassifier.suggestConversationActions(android.view.textclassifier.ConversationActions.Request)"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "android.view.textclassifier.TextClassifier.suggestSelection(android.view.textclassifier.TextSelection.Request)"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "android.view.textclassifier.TextClassifier.suggestSelection(java.lang.CharSequence,int,int,android.os.LocaleList)"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "android.view.translation.UiTranslationStateCallback.onFinished(java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "android.view.translation.UiTranslationStateCallback.onPaused(java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "android.view.translation.UiTranslationStateCallback.onResumed(android.icu.util.ULocale,android.icu.util.ULocale)"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "android.view.translation.UiTranslationStateCallback.onResumed(android.icu.util.ULocale,android.icu.util.ULocale,java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "android.view.translation.UiTranslationStateCallback.onStarted(android.icu.util.ULocale,android.icu.util.ULocale)"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "android.view.translation.UiTranslationStateCallback.onStarted(android.icu.util.ULocale,android.icu.util.ULocale,java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "android.widget.Adapter.getAutofillOptions()"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "android.window.OnBackAnimationCallback.onBackCancelled()"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "android.window.OnBackAnimationCallback.onBackProgressed(android.window.BackEvent)"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "android.window.OnBackAnimationCallback.onBackStarted(android.window.BackEvent)"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "dalvik.system.ZipPathValidator.Callback.onZipEntryAccess(java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "java.lang.CharSequence.chars()"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "java.lang.CharSequence.codePoints()"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "java.lang.CharSequence.compare(java.lang.CharSequence,java.lang.CharSequence)"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "java.lang.Iterable<T>.forEach(java.util.function.Consumer<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "java.lang.Iterable<T>.spliterator()"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "java.lang.StackWalker.StackFrame.getDescriptor()"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "java.lang.StackWalker.StackFrame.getMethodType()"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "java.lang.invoke.MethodHandleInfo.isVarArgs()"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "java.lang.invoke.MethodHandleInfo.refKindIsField(int)"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "java.lang.invoke.MethodHandleInfo.refKindIsValid(int)"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "java.lang.invoke.MethodHandleInfo.refKindName(int)"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "java.lang.invoke.MethodHandleInfo.referenceKindToString(int)"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "java.lang.invoke.MethodHandleInfo.toString(int,java.lang.Class<?>,java.lang.String,java.lang.invoke.MethodType)"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "java.lang.reflect.AnnotatedElement.getAnnotationsByType<T>(java.lang.Class<T>)"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "java.lang.reflect.AnnotatedElement.getDeclaredAnnotation<T>(java.lang.Class<T>)"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "java.lang.reflect.AnnotatedElement.getDeclaredAnnotationsByType<T>(java.lang.Class<T>)"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "java.lang.reflect.AnnotatedElement.isAnnotationPresent(java.lang.Class<?extendsjava.lang.annotation.Annotation>)"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "java.lang.reflect.Type.getTypeName()"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "java.nio.file.Path.of(java.lang.String,java.lang.String...)"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "java.nio.file.Path.of(java.net.URI)"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "java.security.KeyStore.Entry.getAttributes()"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "java.security.Principal.implies(javax.security.auth.Subject)"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "java.time.InstantSource.fixed(java.time.Instant)"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "java.time.InstantSource.millis()"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "java.time.InstantSource.offset(java.time.InstantSource,java.time.Duration)"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "java.time.InstantSource.system()"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "java.time.InstantSource.tick(java.time.InstantSource,java.time.Duration)"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "java.time.InstantSource.withZone(java.time.ZoneId)"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "java.time.chrono.ChronoLocalDate.adjustInto(java.time.temporal.Temporal)"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "java.time.chrono.ChronoLocalDate.atTime(java.time.LocalTime)"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "java.time.chrono.ChronoLocalDate.compareTo(java.time.chrono.ChronoLocalDate)"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "java.time.chrono.ChronoLocalDate.format(java.time.format.DateTimeFormatter)"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "java.time.chrono.ChronoLocalDate.from(java.time.temporal.TemporalAccessor)"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "java.time.chrono.ChronoLocalDate.getEra()"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "java.time.chrono.ChronoLocalDate.isAfter(java.time.chrono.ChronoLocalDate)"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "java.time.chrono.ChronoLocalDate.isBefore(java.time.chrono.ChronoLocalDate)"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "java.time.chrono.ChronoLocalDate.isEqual(java.time.chrono.ChronoLocalDate)"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "java.time.chrono.ChronoLocalDate.isLeapYear()"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "java.time.chrono.ChronoLocalDate.isSupported(java.time.temporal.TemporalField)"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "java.time.chrono.ChronoLocalDate.isSupported(java.time.temporal.TemporalUnit)"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "java.time.chrono.ChronoLocalDate.lengthOfYear()"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "java.time.chrono.ChronoLocalDate.minus(java.time.temporal.TemporalAmount)"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "java.time.chrono.ChronoLocalDate.minus(long,java.time.temporal.TemporalUnit)"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "java.time.chrono.ChronoLocalDate.plus(java.time.temporal.TemporalAmount)"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "java.time.chrono.ChronoLocalDate.plus(long,java.time.temporal.TemporalUnit)"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "java.time.chrono.ChronoLocalDate.query<R>(java.time.temporal.TemporalQuery<R>)"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "java.time.chrono.ChronoLocalDate.timeLineOrder()"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "java.time.chrono.ChronoLocalDate.toEpochDay()"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "java.time.chrono.ChronoLocalDate.with(java.time.temporal.TemporalAdjuster)"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "java.time.chrono.ChronoLocalDate.with(java.time.temporal.TemporalField,long)"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.adjustInto(java.time.temporal.Temporal)"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.compareTo(java.time.chrono.ChronoLocalDateTime<?>)"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.format(java.time.format.DateTimeFormatter)"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.from(java.time.temporal.TemporalAccessor)"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.getChronology()"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.isAfter(java.time.chrono.ChronoLocalDateTime<?>)"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.isBefore(java.time.chrono.ChronoLocalDateTime<?>)"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.isEqual(java.time.chrono.ChronoLocalDateTime<?>)"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.isSupported(java.time.temporal.TemporalUnit)"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.minus(java.time.temporal.TemporalAmount)"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.minus(long,java.time.temporal.TemporalUnit)"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.plus(java.time.temporal.TemporalAmount)"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.query<R>(java.time.temporal.TemporalQuery<R>)"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.timeLineOrder()"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.toEpochSecond(java.time.ZoneOffset)"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.toInstant(java.time.ZoneOffset)"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "java.time.chrono.ChronoLocalDateTime<D>.with(java.time.temporal.TemporalAdjuster)"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "java.time.chrono.ChronoPeriod.between(java.time.chrono.ChronoLocalDate,java.time.chrono.ChronoLocalDate)"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "java.time.chrono.ChronoPeriod.isNegative()"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "java.time.chrono.ChronoPeriod.isZero()"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "java.time.chrono.ChronoPeriod.negated()"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.compareTo(java.time.chrono.ChronoZonedDateTime<?>)"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.format(java.time.format.DateTimeFormatter)"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.from(java.time.temporal.TemporalAccessor)"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.get(java.time.temporal.TemporalField)"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.getChronology()"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.getLong(java.time.temporal.TemporalField)"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.isAfter(java.time.chrono.ChronoZonedDateTime<?>)"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.isBefore(java.time.chrono.ChronoZonedDateTime<?>)"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.isEqual(java.time.chrono.ChronoZonedDateTime<?>)"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.isSupported(java.time.temporal.TemporalUnit)"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.minus(java.time.temporal.TemporalAmount)"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.minus(long,java.time.temporal.TemporalUnit)"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.plus(java.time.temporal.TemporalAmount)"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.query<R>(java.time.temporal.TemporalQuery<R>)"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.range(java.time.temporal.TemporalField)"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.timeLineOrder()"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.toEpochSecond()"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.toInstant()"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.toLocalDate()"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.toLocalTime()"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "java.time.chrono.ChronoZonedDateTime<D>.with(java.time.temporal.TemporalAdjuster)"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "java.time.chrono.Chronology.date(java.time.chrono.Era,int,int,int)"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "java.time.chrono.Chronology.dateNow()"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "java.time.chrono.Chronology.dateNow(java.time.Clock)"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "java.time.chrono.Chronology.dateNow(java.time.ZoneId)"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "java.time.chrono.Chronology.dateYearDay(java.time.chrono.Era,int,int)"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "java.time.chrono.Chronology.epochSecond(int,int,int,int,int,int,java.time.ZoneOffset)"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "java.time.chrono.Chronology.epochSecond(java.time.chrono.Era,int,int,int,int,int,int,java.time.ZoneOffset)"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "java.time.chrono.Chronology.from(java.time.temporal.TemporalAccessor)"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "java.time.chrono.Chronology.getAvailableChronologies()"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "java.time.chrono.Chronology.getDisplayName(java.time.format.TextStyle,java.util.Locale)"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "java.time.chrono.Chronology.localDateTime(java.time.temporal.TemporalAccessor)"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "java.time.chrono.Chronology.of(java.lang.String)"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "java.time.chrono.Chronology.ofLocale(java.util.Locale)"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "java.time.chrono.Chronology.period(int,int,int)"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "java.time.chrono.Chronology.zonedDateTime(java.time.Instant,java.time.ZoneId)"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "java.time.chrono.Chronology.zonedDateTime(java.time.temporal.TemporalAccessor)"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "java.time.chrono.Era.adjustInto(java.time.temporal.Temporal)"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "java.time.chrono.Era.get(java.time.temporal.TemporalField)"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "java.time.chrono.Era.getDisplayName(java.time.format.TextStyle,java.util.Locale)"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "java.time.chrono.Era.getLong(java.time.temporal.TemporalField)"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "java.time.chrono.Era.isSupported(java.time.temporal.TemporalField)"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "java.time.chrono.Era.query<R>(java.time.temporal.TemporalQuery<R>)"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "java.time.chrono.Era.range(java.time.temporal.TemporalField)"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "java.time.temporal.Temporal.minus(java.time.temporal.TemporalAmount)"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "java.time.temporal.Temporal.minus(long,java.time.temporal.TemporalUnit)"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "java.time.temporal.Temporal.plus(java.time.temporal.TemporalAmount)"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "java.time.temporal.Temporal.with(java.time.temporal.TemporalAdjuster)"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "java.time.temporal.TemporalAccessor.get(java.time.temporal.TemporalField)"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "java.time.temporal.TemporalAccessor.query<R>(java.time.temporal.TemporalQuery<R>)"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "java.time.temporal.TemporalAccessor.range(java.time.temporal.TemporalField)"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "java.time.temporal.TemporalField.getDisplayName(java.util.Locale)"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "java.time.temporal.TemporalField.resolve(java.util.Map<java.time.temporal.TemporalField,java.lang.Long>,java.time.temporal.TemporalAccessor,java.time.format.ResolverStyle)"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "java.time.temporal.TemporalUnit.isSupportedBy(java.time.temporal.Temporal)"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "java.util.Collection<E>.parallelStream()"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "java.util.Collection<E>.removeIf(java.util.function.Predicate<?superE>)"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "java.util.Collection<E>.spliterator()"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "java.util.Collection<E>.stream()"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "java.util.Collection<E>.toArray<T>(java.util.function.IntFunction<T[]>)"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "java.util.Comparator<T>.comparing<T,U>(java.util.function.Function<?superT,?extendsU>)"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "java.util.Comparator<T>.comparing<T,U>(java.util.function.Function<?superT,?extendsU>,java.util.Comparator<?superU>)"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "java.util.Comparator<T>.comparingDouble<T>(java.util.function.ToDoubleFunction<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "java.util.Comparator<T>.comparingInt<T>(java.util.function.ToIntFunction<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "java.util.Comparator<T>.comparingLong<T>(java.util.function.ToLongFunction<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "java.util.Comparator<T>.naturalOrder<T>()"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "java.util.Comparator<T>.nullsFirst<T>(java.util.Comparator<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "java.util.Comparator<T>.nullsLast<T>(java.util.Comparator<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "java.util.Comparator<T>.reverseOrder<T>()"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "java.util.Comparator<T>.reversed()"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "java.util.Comparator<T>.thenComparing(java.util.Comparator<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "java.util.Comparator<T>.thenComparing<U>(java.util.function.Function<?superT,?extendsU>)"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "java.util.Comparator<T>.thenComparing<U>(java.util.function.Function<?superT,?extendsU>,java.util.Comparator<?superU>)"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "java.util.Comparator<T>.thenComparingDouble(java.util.function.ToDoubleFunction<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "java.util.Comparator<T>.thenComparingInt(java.util.function.ToIntFunction<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "java.util.Comparator<T>.thenComparingLong(java.util.function.ToLongFunction<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "java.util.Enumeration<E>.asIterator()"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "java.util.Iterator<E>.forEachRemaining(java.util.function.Consumer<?superE>)"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "java.util.Iterator<E>.remove()"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "java.util.List<E>.replaceAll(java.util.function.UnaryOperator<E>)"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "java.util.List<E>.sort(java.util.Comparator<?superE>)"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "java.util.List<E>.spliterator()"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "java.util.Map.Entry<K,V>.comparingByKey<K,V>()"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "java.util.Map.Entry<K,V>.comparingByKey<K,V>(java.util.Comparator<?superK>)"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "java.util.Map.Entry<K,V>.comparingByValue<K,V>()"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "java.util.Map.Entry<K,V>.comparingByValue<K,V>(java.util.Comparator<?superV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "java.util.Map<K,V>.compute(K,java.util.function.BiFunction<?superK,?superV,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "java.util.Map<K,V>.computeIfAbsent(K,java.util.function.Function<?superK,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "java.util.Map<K,V>.computeIfPresent(K,java.util.function.BiFunction<?superK,?superV,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "java.util.Map<K,V>.copyOf<K,V>(java.util.Map<?extendsK,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "java.util.Map<K,V>.entry<K,V>(K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "java.util.Map<K,V>.forEach(java.util.function.BiConsumer<?superK,?superV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "java.util.Map<K,V>.getOrDefault(java.lang.Object,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "java.util.Map<K,V>.merge(K,V,java.util.function.BiFunction<?superV,?superV,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "java.util.Map<K,V>.of<K,V>()"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "java.util.Map<K,V>.of<K,V>(K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "java.util.Map<K,V>.of<K,V>(K,V,K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "java.util.Map<K,V>.of<K,V>(K,V,K,V,K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "java.util.Map<K,V>.of<K,V>(K,V,K,V,K,V,K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "java.util.Map<K,V>.of<K,V>(K,V,K,V,K,V,K,V,K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "java.util.Map<K,V>.of<K,V>(K,V,K,V,K,V,K,V,K,V,K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "java.util.Map<K,V>.of<K,V>(K,V,K,V,K,V,K,V,K,V,K,V,K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "java.util.Map<K,V>.of<K,V>(K,V,K,V,K,V,K,V,K,V,K,V,K,V,K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "java.util.Map<K,V>.of<K,V>(K,V,K,V,K,V,K,V,K,V,K,V,K,V,K,V,K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "java.util.Map<K,V>.of<K,V>(K,V,K,V,K,V,K,V,K,V,K,V,K,V,K,V,K,V,K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "java.util.Map<K,V>.ofEntries<K,V>(java.util.Map.Entry<?extendsK,?extendsV>...)"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "java.util.Map<K,V>.putIfAbsent(K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "java.util.Map<K,V>.remove(java.lang.Object,java.lang.Object)"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "java.util.Map<K,V>.replace(K,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "java.util.Map<K,V>.replace(K,V,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "java.util.Map<K,V>.replaceAll(java.util.function.BiFunction<?superK,?superV,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "java.util.PrimitiveIterator.OfDouble.forEachRemaining(java.util.function.Consumer<?superjava.lang.Double>)"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "java.util.PrimitiveIterator.OfDouble.forEachRemaining(java.util.function.DoubleConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "java.util.PrimitiveIterator.OfDouble.next()"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "java.util.PrimitiveIterator.OfInt.forEachRemaining(java.util.function.Consumer<?superjava.lang.Integer>)"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "java.util.PrimitiveIterator.OfInt.forEachRemaining(java.util.function.IntConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "java.util.PrimitiveIterator.OfInt.next()"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "java.util.PrimitiveIterator.OfLong.forEachRemaining(java.util.function.Consumer<?superjava.lang.Long>)"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "java.util.PrimitiveIterator.OfLong.forEachRemaining(java.util.function.LongConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "java.util.PrimitiveIterator.OfLong.next()"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "java.util.Set<E>.spliterator()"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "java.util.SortedSet<E>.spliterator()"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "java.util.Spliterator.OfDouble.forEachRemaining(java.util.function.Consumer<?superjava.lang.Double>)"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "java.util.Spliterator.OfDouble.forEachRemaining(java.util.function.DoubleConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "java.util.Spliterator.OfDouble.tryAdvance(java.util.function.Consumer<?superjava.lang.Double>)"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "java.util.Spliterator.OfInt.forEachRemaining(java.util.function.Consumer<?superjava.lang.Integer>)"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "java.util.Spliterator.OfInt.forEachRemaining(java.util.function.IntConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "java.util.Spliterator.OfInt.tryAdvance(java.util.function.Consumer<?superjava.lang.Integer>)"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "java.util.Spliterator.OfLong.forEachRemaining(java.util.function.Consumer<?superjava.lang.Long>)"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "java.util.Spliterator.OfLong.forEachRemaining(java.util.function.LongConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "java.util.Spliterator.OfLong.tryAdvance(java.util.function.Consumer<?superjava.lang.Long>)"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "java.util.Spliterator.OfPrimitive<T,T_CONS,T_SPLITR>.forEachRemaining(T_CONS)"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "java.util.Spliterator<T>.forEachRemaining(java.util.function.Consumer<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "java.util.Spliterator<T>.getComparator()"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "java.util.Spliterator<T>.getExactSizeIfKnown()"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "java.util.Spliterator<T>.hasCharacteristics(int)"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "java.util.concurrent.CompletionStage<T>.exceptionallyAsync(java.util.function.Function<java.lang.Throwable,?extendsT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "java.util.concurrent.CompletionStage<T>.exceptionallyAsync(java.util.function.Function<java.lang.Throwable,?extendsT>,java.util.concurrent.Executor)"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "java.util.concurrent.CompletionStage<T>.exceptionallyCompose(java.util.function.Function<java.lang.Throwable,?extendsjava.util.concurrent.CompletionStage<T>>)"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "java.util.concurrent.CompletionStage<T>.exceptionallyComposeAsync(java.util.function.Function<java.lang.Throwable,?extendsjava.util.concurrent.CompletionStage<T>>)"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "java.util.concurrent.CompletionStage<T>.exceptionallyComposeAsync(java.util.function.Function<java.lang.Throwable,?extendsjava.util.concurrent.CompletionStage<T>>,java.util.concurrent.Executor)"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "java.util.concurrent.ConcurrentMap<K,V>.compute(K,java.util.function.BiFunction<?superK,?superV,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "java.util.concurrent.ConcurrentMap<K,V>.computeIfAbsent(K,java.util.function.Function<?superK,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "java.util.concurrent.ConcurrentMap<K,V>.computeIfPresent(K,java.util.function.BiFunction<?superK,?superV,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "java.util.concurrent.ConcurrentMap<K,V>.forEach(java.util.function.BiConsumer<?superK,?superV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "java.util.concurrent.ConcurrentMap<K,V>.getOrDefault(java.lang.Object,V)"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "java.util.concurrent.ConcurrentMap<K,V>.merge(K,V,java.util.function.BiFunction<?superV,?superV,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "java.util.concurrent.ConcurrentMap<K,V>.replaceAll(java.util.function.BiFunction<?superK,?superV,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "java.util.function.BiConsumer<T,U>.andThen(java.util.function.BiConsumer<?superT,?superU>)"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "java.util.function.BiFunction<T,U,R>.andThen<V>(java.util.function.Function<?superR,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "java.util.function.BiPredicate<T,U>.and(java.util.function.BiPredicate<?superT,?superU>)"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "java.util.function.BiPredicate<T,U>.negate()"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "java.util.function.BiPredicate<T,U>.or(java.util.function.BiPredicate<?superT,?superU>)"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "java.util.function.BinaryOperator<T>.maxBy<T>(java.util.Comparator<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "java.util.function.BinaryOperator<T>.minBy<T>(java.util.Comparator<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "java.util.function.Consumer<T>.andThen(java.util.function.Consumer<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "java.util.function.DoubleConsumer.andThen(java.util.function.DoubleConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "java.util.function.DoublePredicate.and(java.util.function.DoublePredicate)"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "java.util.function.DoublePredicate.negate()"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "java.util.function.DoublePredicate.or(java.util.function.DoublePredicate)"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "java.util.function.DoubleUnaryOperator.andThen(java.util.function.DoubleUnaryOperator)"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "java.util.function.DoubleUnaryOperator.compose(java.util.function.DoubleUnaryOperator)"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "java.util.function.DoubleUnaryOperator.identity()"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "java.util.function.Function<T,R>.andThen<V>(java.util.function.Function<?superR,?extendsV>)"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "java.util.function.Function<T,R>.compose<V>(java.util.function.Function<?superV,?extendsT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "java.util.function.Function<T,R>.identity<T>()"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "java.util.function.IntConsumer.andThen(java.util.function.IntConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "java.util.function.IntPredicate.and(java.util.function.IntPredicate)"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "java.util.function.IntPredicate.negate()"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "java.util.function.IntPredicate.or(java.util.function.IntPredicate)"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "java.util.function.IntUnaryOperator.andThen(java.util.function.IntUnaryOperator)"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "java.util.function.IntUnaryOperator.compose(java.util.function.IntUnaryOperator)"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "java.util.function.IntUnaryOperator.identity()"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "java.util.function.LongConsumer.andThen(java.util.function.LongConsumer)"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "java.util.function.LongPredicate.and(java.util.function.LongPredicate)"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "java.util.function.LongPredicate.negate()"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v2, "java.util.function.LongPredicate.or(java.util.function.LongPredicate)"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "java.util.function.LongUnaryOperator.andThen(java.util.function.LongUnaryOperator)"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "java.util.function.LongUnaryOperator.compose(java.util.function.LongUnaryOperator)"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "java.util.function.LongUnaryOperator.identity()"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "java.util.function.Predicate<T>.and(java.util.function.Predicate<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "java.util.function.Predicate<T>.isEqual<T>(java.lang.Object)"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v2, "java.util.function.Predicate<T>.negate()"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "java.util.function.Predicate<T>.not<T>(java.util.function.Predicate<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "java.util.function.Predicate<T>.or(java.util.function.Predicate<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "java.util.function.UnaryOperator<T>.identity<T>()"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "java.util.jar.Pack200.Packer.addPropertyChangeListener(java.beans.PropertyChangeListener)"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const-string v2, "java.util.jar.Pack200.Packer.removePropertyChangeListener(java.beans.PropertyChangeListener)"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "java.util.jar.Pack200.Unpacker.addPropertyChangeListener(java.beans.PropertyChangeListener)"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "java.util.jar.Pack200.Unpacker.removePropertyChangeListener(java.beans.PropertyChangeListener)"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v2, "java.util.stream.Collector<T,A,R>.of<T,A,R>(java.util.function.Supplier<A>,java.util.function.BiConsumer<A,T>,java.util.function.BinaryOperator<A>,java.util.function.Function<A,R>,java.util.stream.Collector.Characteristics...)"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string v2, "java.util.stream.Collector<T,A,R>.of<T,R>(java.util.function.Supplier<R>,java.util.function.BiConsumer<R,T>,java.util.function.BinaryOperator<R>,java.util.stream.Collector.Characteristics...)"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v2, "java.util.stream.DoubleStream.Builder.add(double)"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string v2, "java.util.stream.DoubleStream.builder()"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string v2, "java.util.stream.DoubleStream.concat(java.util.stream.DoubleStream,java.util.stream.DoubleStream)"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const-string v2, "java.util.stream.DoubleStream.empty()"

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string v2, "java.util.stream.DoubleStream.generate(java.util.function.DoubleSupplier)"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "java.util.stream.DoubleStream.iterate(double,java.util.function.DoubleUnaryOperator)"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v2, "java.util.stream.DoubleStream.of(double)"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string v2, "java.util.stream.DoubleStream.of(double...)"

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string v2, "java.util.stream.IntStream.Builder.add(int)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    const-string v2, "java.util.stream.IntStream.builder()"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string v2, "java.util.stream.IntStream.concat(java.util.stream.IntStream,java.util.stream.IntStream)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const-string v2, "java.util.stream.IntStream.empty()"

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    const-string v2, "java.util.stream.IntStream.generate(java.util.function.IntSupplier)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    const-string v2, "java.util.stream.IntStream.iterate(int,java.util.function.IntUnaryOperator)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const-string v2, "java.util.stream.IntStream.of(int)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    const-string v2, "java.util.stream.IntStream.of(int...)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const-string v2, "java.util.stream.IntStream.range(int,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    const-string v2, "java.util.stream.IntStream.rangeClosed(int,int)"

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    const-string v2, "java.util.stream.LongStream.Builder.add(long)"

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    const-string v2, "java.util.stream.LongStream.builder()"

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const-string v2, "java.util.stream.LongStream.concat(java.util.stream.LongStream,java.util.stream.LongStream)"

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    const-string v2, "java.util.stream.LongStream.empty()"

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    const-string v2, "java.util.stream.LongStream.generate(java.util.function.LongSupplier)"

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    const-string v2, "java.util.stream.LongStream.iterate(long,java.util.function.LongUnaryOperator)"

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    const-string v2, "java.util.stream.LongStream.of(long)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    const-string v2, "java.util.stream.LongStream.of(long...)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    const-string v2, "java.util.stream.LongStream.range(long,long)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    const-string v2, "java.util.stream.LongStream.rangeClosed(long,long)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    const-string v2, "java.util.stream.Stream.Builder<T>.add(T)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    const-string v2, "java.util.stream.Stream<T>.builder<T>()"

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    const-string v2, "java.util.stream.Stream<T>.concat<T>(java.util.stream.Stream<?extendsT>,java.util.stream.Stream<?extendsT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    const-string v2, "java.util.stream.Stream<T>.dropWhile(java.util.function.Predicate<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    const-string v2, "java.util.stream.Stream<T>.empty<T>()"

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    const-string v2, "java.util.stream.Stream<T>.generate<T>(java.util.function.Supplier<?extendsT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    const-string v2, "java.util.stream.Stream<T>.iterate<T>(T,java.util.function.Predicate<?superT>,java.util.function.UnaryOperator<T>)"

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    const-string v2, "java.util.stream.Stream<T>.iterate<T>(T,java.util.function.UnaryOperator<T>)"

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    const-string v2, "java.util.stream.Stream<T>.mapMulti<R>(java.util.function.BiConsumer<?superT,?superjava.util.function.Consumer<R>>)"

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    const-string v2, "java.util.stream.Stream<T>.mapMultiToDouble(java.util.function.BiConsumer<?superT,?superjava.util.function.DoubleConsumer>)"

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    const-string v2, "java.util.stream.Stream<T>.mapMultiToInt(java.util.function.BiConsumer<?superT,?superjava.util.function.IntConsumer>)"

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    const-string v2, "java.util.stream.Stream<T>.mapMultiToLong(java.util.function.BiConsumer<?superT,?superjava.util.function.LongConsumer>)"

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    const-string v2, "java.util.stream.Stream<T>.of<T>(T)"

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    const-string v2, "java.util.stream.Stream<T>.of<T>(T...)"

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    const-string v2, "java.util.stream.Stream<T>.ofNullable<T>(T)"

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    const-string v2, "java.util.stream.Stream<T>.takeWhile(java.util.function.Predicate<?superT>)"

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    const-string v2, "java.util.stream.Stream<T>.toList()"

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    const-string v2, "java.util.zip.Checksum.update(byte[])"

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    const-string v2, "java.util.zip.Checksum.update(java.nio.ByteBuffer)"

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    const-string v2, "javax.security.auth.Destroyable.destroy()"

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    const-string v2, "javax.security.auth.Destroyable.isDestroyed()"

    aput-object v2, v0, v1

    iput-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/DefaultProvider;->bootClassSign:[Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lio/github/zeroaicy/readclass/classInfo/DefaultProvider;->mDefaultMethods:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addDefaultMethod(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public hasDefaultMethod(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 486
    iget-object v0, p0, Lio/github/zeroaicy/readclass/classInfo/DefaultProvider;->mDefaultMethods:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
