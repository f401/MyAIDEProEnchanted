.class public abstract Landroidj/support/v4/media/session/IMediaSession$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroidj/support/v4/media/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidj.support.v4.media.session.IMediaSession"

.field static final TRANSACTION_addQueueItem:I = 0x29

.field static final TRANSACTION_addQueueItemAt:I = 0x2a

.field static final TRANSACTION_adjustVolume:I = 0xb

.field static final TRANSACTION_fastForward:I = 0x16

.field static final TRANSACTION_getExtras:I = 0x1f

.field static final TRANSACTION_getFlags:I = 0x9

.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final TRANSACTION_getMetadata:I = 0x1b

.field static final TRANSACTION_getPackageName:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x1c

.field static final TRANSACTION_getQueue:I = 0x1d

.field static final TRANSACTION_getQueueTitle:I = 0x1e

.field static final TRANSACTION_getRatingType:I = 0x20

.field static final TRANSACTION_getRepeatMode:I = 0x25

.field static final TRANSACTION_getTag:I = 0x7

.field static final TRANSACTION_getVolumeAttributes:I = 0xa

.field static final TRANSACTION_isCaptioningEnabled:I = 0x2d

.field static final TRANSACTION_isShuffleModeEnabled:I = 0x26

.field static final TRANSACTION_isTransportControlEnabled:I = 0x5

.field static final TRANSACTION_next:I = 0x14

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0xd

.field static final TRANSACTION_playFromMediaId:I = 0xe

.field static final TRANSACTION_playFromSearch:I = 0xf

.field static final TRANSACTION_playFromUri:I = 0x10

.field static final TRANSACTION_prepare:I = 0x21

.field static final TRANSACTION_prepareFromMediaId:I = 0x22

.field static final TRANSACTION_prepareFromSearch:I = 0x23

.field static final TRANSACTION_prepareFromUri:I = 0x24

.field static final TRANSACTION_previous:I = 0x15

.field static final TRANSACTION_rate:I = 0x19

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_removeQueueItem:I = 0x2b

.field static final TRANSACTION_removeQueueItemAt:I = 0x2c

.field static final TRANSACTION_rewind:I = 0x17

.field static final TRANSACTION_seekTo:I = 0x18

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1a

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setCaptioningEnabled:I = 0x2e

.field static final TRANSACTION_setRepeatMode:I = 0x27

.field static final TRANSACTION_setShuffleModeEnabled:I = 0x28

.field static final TRANSACTION_setVolumeTo:I = 0xc

.field static final TRANSACTION_skipToQueueItem:I = 0x11

.field static final TRANSACTION_stop:I = 0x13

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p0, p0, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidj/support/v4/media/session/IMediaSession;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Landroidj/support/v4/media/session/IMediaSession;

    if-eqz v1, :cond_13

    check-cast v0, Landroidj/support/v4/media/session/IMediaSession;

    goto :goto_3

    :cond_13
    new-instance v0, Landroidj/support/v4/media/session/IMediaSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_488

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    :sswitch_b
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto :goto_a

    :sswitch_12
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Landroidj/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    :goto_38
    invoke-virtual {p0, v4, v1, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidj/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_a

    :cond_40
    move-object v1, v2

    goto :goto_2a

    :cond_42
    move-object v0, v2

    goto :goto_38

    :sswitch_44
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_66

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    :goto_57
    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_68

    move v0, v3

    :goto_61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto :goto_a

    :cond_66
    move-object v0, v2

    goto :goto_57

    :cond_68
    move v0, v1

    goto :goto_61

    :sswitch_6a
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidj/support/v4/media/session/IMediaControllerCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->registerCallbackListener(Landroidj/support/v4/media/session/IMediaControllerCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_a

    :sswitch_7f
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidj/support/v4/media/session/IMediaControllerCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->unregisterCallbackListener(Landroidj/support/v4/media/session/IMediaControllerCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_95
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->isTransportControlEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a4

    move v1, v3

    :cond_a4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_aa
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_bc
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_ce
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_e5

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    move v0, v3

    goto/16 :goto_a

    :cond_e5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_eb
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getFlags()J

    move-result-wide v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_fd
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getVolumeAttributes()Landroidj/support/v4/media/session/ParcelableVolumeInfo;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_114

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v3}, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    move v0, v3

    goto/16 :goto_a

    :cond_114
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_11a
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroidj/support/v4/media/session/IMediaSession$Stub;->adjustVolume(IILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_134
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroidj/support/v4/media/session/IMediaSession$Stub;->setVolumeTo(IILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_14e
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getMetadata()Landroidj/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_165

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v3}, Landroidj/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V

    move v0, v3

    goto/16 :goto_a

    :cond_165
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_16b
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getPlaybackState()Landroidj/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_182

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v3}, Landroidj/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V

    move v0, v3

    goto/16 :goto_a

    :cond_182
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_188
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getQueue()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_19a
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1b1

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v0, p3, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    move v0, v3

    goto/16 :goto_a

    :cond_1b1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_1b7
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1ce

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    move v0, v3

    goto/16 :goto_a

    :cond_1ce
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_1d4
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getRatingType()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_1e6
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->isCaptioningEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1f5

    move v1, v3

    :cond_1f5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_1fb
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->getRepeatMode()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_20d
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->isShuffleModeEnabled()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_21c

    move v1, v3

    :cond_21c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v3

    goto/16 :goto_a

    :sswitch_222
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23e

    sget-object v0, Landroidj/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    :goto_235
    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->addQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :cond_23e
    move-object v0, v2

    goto :goto_235

    :sswitch_240
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_260

    sget-object v0, Landroidj/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    :goto_253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/media/session/IMediaSession$Stub;->addQueueItemAt(Landroidj/support/v4/media/MediaDescriptionCompat;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :cond_260
    move-object v0, v2

    goto :goto_253

    :sswitch_262
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_27e

    sget-object v0, Landroidj/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaDescriptionCompat;

    :goto_275
    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->removeQueueItem(Landroidj/support/v4/media/MediaDescriptionCompat;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :cond_27e
    move-object v0, v2

    goto :goto_275

    :sswitch_280
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->removeQueueItemAt(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_292
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->prepare()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_2a0
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c0

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_2b7
    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :cond_2c0
    move-object v0, v2

    goto :goto_2b7

    :sswitch_2c2
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_2d9
    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :cond_2e2
    move-object v0, v2

    goto :goto_2d9

    :sswitch_2e4
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_30f

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    :goto_2f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_311

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_306
    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :cond_30f
    move-object v1, v2

    goto :goto_2f8

    :cond_311
    move-object v0, v2

    goto :goto_306

    :sswitch_313
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->play()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_321
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_341

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_338
    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :cond_341
    move-object v0, v2

    goto :goto_338

    :sswitch_343
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_363

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_35a
    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :cond_363
    move-object v0, v2

    goto :goto_35a

    :sswitch_365
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_390

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    :goto_379
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_392

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_387
    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :cond_390
    move-object v1, v2

    goto :goto_379

    :cond_392
    move-object v0, v2

    goto :goto_387

    :sswitch_394
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/media/session/IMediaSession$Stub;->skipToQueueItem(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_3a6
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->pause()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_3b4
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->stop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_3c2
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->next()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_3d0
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->previous()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_3de
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->fastForward()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_3ec
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->rewind()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_3fa
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/media/session/IMediaSession$Stub;->seekTo(J)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_40c
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_428

    sget-object v0, Landroidj/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/RatingCompat;

    :goto_41f
    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->rate(Landroidj/support/v4/media/RatingCompat;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :cond_428
    move-object v0, v2

    goto :goto_41f

    :sswitch_42a
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_436

    move v1, v3

    :cond_436
    invoke-virtual {p0, v1}, Landroidj/support/v4/media/session/IMediaSession$Stub;->setCaptioningEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_43f
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->setRepeatMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_451
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45d

    move v1, v3

    :cond_45d
    invoke-virtual {p0, v1}, Landroidj/support/v4/media/session/IMediaSession$Stub;->setShuffleModeEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :sswitch_466
    const-string v0, "androidj.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_486

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_47d
    invoke-virtual {p0, v1, v0}, Landroidj/support/v4/media/session/IMediaSession$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_a

    :cond_486
    move-object v0, v2

    goto :goto_47d

    :sswitch_data_488
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_44
        0x3 -> :sswitch_6a
        0x4 -> :sswitch_7f
        0x5 -> :sswitch_95
        0x6 -> :sswitch_aa
        0x7 -> :sswitch_bc
        0x8 -> :sswitch_ce
        0x9 -> :sswitch_eb
        0xa -> :sswitch_fd
        0xb -> :sswitch_11a
        0xc -> :sswitch_134
        0xd -> :sswitch_313
        0xe -> :sswitch_321
        0xf -> :sswitch_343
        0x10 -> :sswitch_365
        0x11 -> :sswitch_394
        0x12 -> :sswitch_3a6
        0x13 -> :sswitch_3b4
        0x14 -> :sswitch_3c2
        0x15 -> :sswitch_3d0
        0x16 -> :sswitch_3de
        0x17 -> :sswitch_3ec
        0x18 -> :sswitch_3fa
        0x19 -> :sswitch_40c
        0x1a -> :sswitch_466
        0x1b -> :sswitch_14e
        0x1c -> :sswitch_16b
        0x1d -> :sswitch_188
        0x1e -> :sswitch_19a
        0x1f -> :sswitch_1b7
        0x20 -> :sswitch_1d4
        0x21 -> :sswitch_292
        0x22 -> :sswitch_2a0
        0x23 -> :sswitch_2c2
        0x24 -> :sswitch_2e4
        0x25 -> :sswitch_1fb
        0x26 -> :sswitch_20d
        0x27 -> :sswitch_43f
        0x28 -> :sswitch_451
        0x29 -> :sswitch_222
        0x2a -> :sswitch_240
        0x2b -> :sswitch_262
        0x2c -> :sswitch_280
        0x2d -> :sswitch_1e6
        0x2e -> :sswitch_42a
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
