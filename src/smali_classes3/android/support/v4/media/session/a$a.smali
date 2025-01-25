.class public abstract Landroid/support/v4/media/session/a$a;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/support/v4/media/session/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.support.v4.media.session.IMediaControllerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    const v0, 0x5f4e5446

    const-string v1, "android.support.v4.media.session.IMediaControllerCallback"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_e0

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_e4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_12  #0xc
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/support/v4/media/session/a;->VH(I)V

    return v2

    :pswitch_1d  #0xb
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_27

    const/4 v0, 0x1

    :cond_27
    invoke-interface {p0, v0}, Landroid/support/v4/media/session/a;->tp(Z)V

    return v2

    :pswitch_2b  #0xa
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_35

    const/4 v0, 0x1

    :cond_35
    invoke-interface {p0, v0}, Landroid/support/v4/media/session/a;->u7(Z)V

    return v2

    :pswitch_39  #0x9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/support/v4/media/session/a;->gn(I)V

    return v2

    :pswitch_44  #0x8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_56

    sget-object p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    :cond_56
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/a;->j6(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return v2

    :pswitch_5a  #0x7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6c

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/os/Bundle;

    :cond_6c
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/a;->v5(Landroid/os/Bundle;)V

    return v2

    :pswitch_70  #0x6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_82

    sget-object p1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    :cond_82
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/a;->j6(Ljava/lang/CharSequence;)V

    return v2

    :pswitch_86  #0x5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/support/v4/media/session/a;->DW(Ljava/util/List;)V

    return v2

    :pswitch_93  #0x4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a5

    sget-object p1, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/support/v4/media/MediaMetadataCompat;

    :cond_a5
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/a;->j6(Landroid/support/v4/media/MediaMetadataCompat;)V

    return v2

    :pswitch_a9  #0x3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_bb

    sget-object p1, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/support/v4/media/session/PlaybackStateCompat;

    :cond_bb
    invoke-interface {p0, v3}, Landroid/support/v4/media/session/a;->j6(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return v2

    :pswitch_bf  #0x2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/support/v4/media/session/a;->XG()V

    return v2

    :pswitch_c6  #0x1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_dc

    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    :cond_dc
    invoke-interface {p0, p1, v3}, Landroid/support/v4/media/session/a;->Hw(Ljava/lang/String;Landroid/os/Bundle;)V

    return v2

    :cond_e0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_c6  #00000001
        :pswitch_bf  #00000002
        :pswitch_a9  #00000003
        :pswitch_93  #00000004
        :pswitch_86  #00000005
        :pswitch_70  #00000006
        :pswitch_5a  #00000007
        :pswitch_44  #00000008
        :pswitch_39  #00000009
        :pswitch_2b  #0000000a
        :pswitch_1d  #0000000b
        :pswitch_12  #0000000c
    .end packed-switch
.end method
