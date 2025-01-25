.class public Landroid/support/v4/media/session/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static DW(Ljava/lang/Object;)I
    .registers 1

    invoke-static {p0}, Landroid/support/v4/media/session/c$c;->j6(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/c$c;->j6(Landroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method

.method private static j6(Landroid/media/AudioAttributes;)I
    .registers 4

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 p0, 0x7

    return p0

    :cond_a
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_14

    const/4 p0, 0x6

    return p0

    :cond_14
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_2a

    return v0

    :pswitch_1d  #0xd
    return v1

    :pswitch_1e  #0x6
    const/4 p0, 0x2

    return p0

    :pswitch_20  #0x5, 0x7, 0x8, 0x9, 0xa
    const/4 p0, 0x5

    return p0

    :pswitch_22  #0x4
    return v2

    :pswitch_23  #0x3
    const/16 p0, 0x8

    return p0

    :pswitch_26  #0x2
    const/4 p0, 0x0

    return p0

    :pswitch_28  #0x1, 0xb, 0xc, 0xe
    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_28  #00000001
        :pswitch_26  #00000002
        :pswitch_23  #00000003
        :pswitch_22  #00000004
        :pswitch_20  #00000005
        :pswitch_1e  #00000006
        :pswitch_20  #00000007
        :pswitch_20  #00000008
        :pswitch_20  #00000009
        :pswitch_20  #0000000a
        :pswitch_28  #0000000b
        :pswitch_28  #0000000c
        :pswitch_1d  #0000000d
        :pswitch_28  #0000000e
    .end packed-switch
.end method

.method public static j6(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .registers 1

    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method
