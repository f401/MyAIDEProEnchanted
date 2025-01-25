.class public abstract Lcom/google/android/gms/internal/ads/lI;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/kI;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/kI;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/kI;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/kI;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/mI;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/mI;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_7a

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0xc
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kI;->Nh()Z

    move-result p1

    goto :goto_5e

    :pswitch_a  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kI;->xg()Lcom/google/android/gms/internal/ads/nI;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_77

    :pswitch_15  #0xa
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kI;->iK()Z

    move-result p1

    goto :goto_5e

    :pswitch_1a  #0x9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kI;->PH()F

    move-result p1

    goto :goto_48

    :pswitch_1f  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_27

    const/4 p1, 0x0

    goto :goto_3b

    :cond_27
    const-string p2, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/nI;

    if-eqz p4, :cond_35

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/nI;

    goto :goto_3b

    :cond_35
    new-instance p2, Lcom/google/android/gms/internal/ads/pI;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/pI;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_3b
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/kI;->j6(Lcom/google/android/gms/internal/ads/nI;)V

    goto :goto_74

    :pswitch_3f  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kI;->BR()F

    move-result p1

    goto :goto_48

    :pswitch_44  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kI;->Za()F

    move-result p1

    :goto_48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_77

    :pswitch_4f  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kI;->Q6()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_77

    :pswitch_5a  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kI;->dW()Z

    move-result p1

    :goto_5e
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto :goto_77

    :pswitch_65  #0x3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/kI;->we(Z)V

    goto :goto_74

    :pswitch_6d  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kI;->pause()V

    goto :goto_74

    :pswitch_71  #0x1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/kI;->k1()V

    :goto_74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_77
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_71  #00000001
        :pswitch_6d  #00000002
        :pswitch_65  #00000003
        :pswitch_5a  #00000004
        :pswitch_4f  #00000005
        :pswitch_44  #00000006
        :pswitch_3f  #00000007
        :pswitch_1f  #00000008
        :pswitch_1a  #00000009
        :pswitch_15  #0000000a
        :pswitch_a  #0000000b
        :pswitch_5  #0000000c
    .end packed-switch
.end method
