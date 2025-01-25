.class public abstract Lcom/google/android/gms/internal/ads/bb;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ab;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/ab;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/ab;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/ab;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/cb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cb;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_6a

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0xb
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ab;->et()Labcd/ox;

    move-result-object p1

    goto :goto_52

    :pswitch_a  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ab;->yS(Labcd/ox;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto :goto_67

    :pswitch_1d  #0x9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ab;->sv()Labcd/ox;

    move-result-object p1

    goto :goto_52

    :pswitch_22  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ab;->destroy()V

    goto :goto_36

    :pswitch_26  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ab;->getVideoController()Lcom/google/android/gms/internal/ads/kI;

    move-result-object p1

    goto :goto_52

    :pswitch_2b  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ab;->EQ()V

    goto :goto_36

    :pswitch_2f  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ab;->cn(Ljava/lang/String;)V

    :goto_36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_67

    :pswitch_3a  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ab;->vJ()Ljava/lang/String;

    move-result-object p1

    goto :goto_61

    :pswitch_3f  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/ab;->oa()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_67

    :pswitch_4a  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ab;->vy(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ga;

    move-result-object p1

    :goto_52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_67

    :pswitch_59  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/ab;->U2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_67
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_59  #00000001
        :pswitch_4a  #00000002
        :pswitch_3f  #00000003
        :pswitch_3a  #00000004
        :pswitch_2f  #00000005
        :pswitch_2b  #00000006
        :pswitch_26  #00000007
        :pswitch_22  #00000008
        :pswitch_1d  #00000009
        :pswitch_a  #0000000a
        :pswitch_5  #0000000b
    .end packed-switch
.end method
