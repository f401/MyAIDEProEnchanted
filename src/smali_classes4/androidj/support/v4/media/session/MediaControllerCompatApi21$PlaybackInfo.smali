.class public Landroidj/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/media/session/MediaControllerCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaybackInfo"
.end annotation


# static fields
.field private static final FLAG_SCO:I = 0x4

.field private static final STREAM_BLUETOOTH_SCO:I = 0x6

.field private static final STREAM_SYSTEM_ENFORCED:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .registers 2

    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentVolume(Ljava/lang/Object;)I
    .registers 2

    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    return v0
.end method

.method public static getLegacyAudioStream(Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0}, Landroidj/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getAudioAttributes(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-static {v0}, Landroidj/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public static getMaxVolume(Ljava/lang/Object;)I
    .registers 2

    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v0

    return v0
.end method

.method public static getPlaybackType(Ljava/lang/Object;)I
    .registers 2

    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    return v0
.end method

.method public static getVolumeControl(Ljava/lang/Object;)I
    .registers 2

    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v0

    return v0
.end method

.method private static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .registers 5

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x3

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_d

    const/4 v0, 0x7

    :goto_c
    :pswitch_c  #0x1, 0xb, 0xc, 0xe
    return v0

    :cond_d
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v2, :cond_17

    const/4 v0, 0x6

    goto :goto_c

    :cond_17
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    packed-switch v3, :pswitch_data_2c

    goto :goto_c

    :pswitch_1f  #0x2
    const/4 v0, 0x0

    goto :goto_c

    :pswitch_21  #0xd
    move v0, v1

    goto :goto_c

    :pswitch_23  #0x3
    const/16 v0, 0x8

    goto :goto_c

    :pswitch_26  #0x4
    move v0, v2

    goto :goto_c

    :pswitch_28  #0x6
    const/4 v0, 0x2

    goto :goto_c

    :pswitch_2a  #0x5, 0x7, 0x8, 0x9, 0xa
    const/4 v0, 0x5

    goto :goto_c

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_c  #00000001
        :pswitch_1f  #00000002
        :pswitch_23  #00000003
        :pswitch_26  #00000004
        :pswitch_2a  #00000005
        :pswitch_28  #00000006
        :pswitch_2a  #00000007
        :pswitch_2a  #00000008
        :pswitch_2a  #00000009
        :pswitch_2a  #0000000a
        :pswitch_c  #0000000b
        :pswitch_c  #0000000c
        :pswitch_21  #0000000d
        :pswitch_c  #0000000e
    .end packed-switch
.end method
