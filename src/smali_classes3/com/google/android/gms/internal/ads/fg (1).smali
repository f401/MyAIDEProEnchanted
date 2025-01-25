.class public abstract Lcom/google/android/gms/internal/ads/fg;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/eg;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/eg;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/eg;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/eg;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/gg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/gg;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    packed-switch p1, :pswitch_data_72

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0xd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/eg;->u7(Labcd/ox;)V

    goto :goto_6d

    :pswitch_11  #0xc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/eg;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_6d

    :pswitch_25  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/eg;->ti()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto :goto_70

    :pswitch_30  #0xa
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/eg;->sT()V

    goto :goto_6d

    :pswitch_34  #0x9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/eg;->An()V

    goto :goto_6d

    :pswitch_38  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/eg;->onDestroy()V

    goto :goto_6d

    :pswitch_3c  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/eg;->u9()V

    goto :goto_6d

    :pswitch_40  #0x6
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/eg;->we(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->DW(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_70

    :pswitch_52  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/eg;->onPause()V

    goto :goto_6d

    :pswitch_56  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/eg;->onResume()V

    goto :goto_6d

    :pswitch_5a  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/eg;->IS()V

    goto :goto_6d

    :pswitch_5e  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/eg;->ct()V

    goto :goto_6d

    :pswitch_62  #0x1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/eg;->tp(Landroid/os/Bundle;)V

    :goto_6d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_70
    const/4 p1, 0x1

    return p1

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_62  #00000001
        :pswitch_5e  #00000002
        :pswitch_5a  #00000003
        :pswitch_56  #00000004
        :pswitch_52  #00000005
        :pswitch_40  #00000006
        :pswitch_3c  #00000007
        :pswitch_38  #00000008
        :pswitch_34  #00000009
        :pswitch_30  #0000000a
        :pswitch_25  #0000000b
        :pswitch_11  #0000000c
        :pswitch_5  #0000000d
    .end packed-switch
.end method
