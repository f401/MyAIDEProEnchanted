.class public abstract Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroidj/support/v4/media/session/IMediaControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/IMediaControllerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidj.support.v4.media.session.IMediaControllerCallback"

.field static final TRANSACTION_onCaptioningEnabledChanged:I = 0xb

.field static final TRANSACTION_onEvent:I = 0x1

.field static final TRANSACTION_onExtrasChanged:I = 0x7

.field static final TRANSACTION_onMetadataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3

.field static final TRANSACTION_onQueueChanged:I = 0x5

.field static final TRANSACTION_onQueueTitleChanged:I = 0x6

.field static final TRANSACTION_onRepeatModeChanged:I = 0x9

.field static final TRANSACTION_onSessionDestroyed:I = 0x2

.field static final TRANSACTION_onShuffleModeChanged:I = 0xa

.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidj/support/v4/media/session/IMediaControllerCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    if-eqz v1, :cond_13

    check-cast v0, Landroidj/support/v4/media/session/IMediaControllerCallback;

    goto :goto_3

    :cond_13
    new-instance v0, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_f8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    :sswitch_b
    const-string v0, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_a

    :sswitch_12
    const-string v2, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_29
    invoke-virtual {p0, v2, v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v1

    goto :goto_a

    :sswitch_2e
    const-string v0, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->onSessionDestroyed()V

    move v0, v1

    goto :goto_a

    :sswitch_38
    const-string v2, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b

    sget-object v0, Landroidj/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/PlaybackStateCompat;

    :cond_4b
    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->onPlaybackStateChanged(Landroidj/support/v4/media/session/PlaybackStateCompat;)V

    move v0, v1

    goto :goto_a

    :sswitch_50
    const-string v2, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_63

    sget-object v0, Landroidj/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/MediaMetadataCompat;

    :cond_63
    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->onMetadataChanged(Landroidj/support/v4/media/MediaMetadataCompat;)V

    move v0, v1

    goto :goto_a

    :sswitch_68
    const-string v0, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroidj/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueChanged(Ljava/util/List;)V

    move v0, v1

    goto :goto_a

    :sswitch_78
    const-string v2, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8b

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    :cond_8b
    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_a

    :sswitch_91
    const-string v2, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_a4
    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V

    move v0, v1

    goto/16 :goto_a

    :sswitch_aa
    const-string v2, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_bd

    sget-object v0, Landroidj/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/media/session/ParcelableVolumeInfo;

    :cond_bd
    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->onVolumeInfoChanged(Landroidj/support/v4/media/session/ParcelableVolumeInfo;)V

    move v0, v1

    goto/16 :goto_a

    :sswitch_c3
    const-string v0, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->onRepeatModeChanged(I)V

    move v0, v1

    goto/16 :goto_a

    :sswitch_d2
    const-string v0, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e4

    move v0, v1

    :goto_de
    invoke-virtual {p0, v0}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->onShuffleModeChanged(Z)V

    move v0, v1

    goto/16 :goto_a

    :cond_e4
    move v0, v2

    goto :goto_de

    :sswitch_e6
    const-string v0, "androidj.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f2

    move v2, v1

    :cond_f2
    invoke-virtual {p0, v2}, Landroidj/support/v4/media/session/IMediaControllerCallback$Stub;->onCaptioningEnabledChanged(Z)V

    move v0, v1

    goto/16 :goto_a

    :sswitch_data_f8
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_38
        0x4 -> :sswitch_50
        0x5 -> :sswitch_68
        0x6 -> :sswitch_78
        0x7 -> :sswitch_91
        0x8 -> :sswitch_aa
        0x9 -> :sswitch_c3
        0xa -> :sswitch_d2
        0xb -> :sswitch_e6
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
