.class public abstract Lcom/google/android/gms/internal/ads/kj;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/jj;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/jj;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/jj;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/jj;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/lj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/lj;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_4a

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/jj;->Mz()V

    goto :goto_44

    :pswitch_9  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/jj;->DW(I)V

    goto :goto_44

    :pswitch_11  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/jj;->ca()V

    goto :goto_44

    :pswitch_15  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1d

    const/4 p1, 0x0

    goto :goto_31

    :cond_1d
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardItem"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/_i;

    if-eqz p4, :cond_2b

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/_i;

    goto :goto_31

    :cond_2b
    new-instance p2, Lcom/google/android/gms/internal/ads/bj;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/bj;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_31
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/jj;->j6(Lcom/google/android/gms/internal/ads/_i;)V

    goto :goto_44

    :pswitch_35  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/jj;->x9()V

    goto :goto_44

    :pswitch_39  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/jj;->g3()V

    goto :goto_44

    :pswitch_3d  #0x2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/jj;->Qq()V

    goto :goto_44

    :pswitch_41  #0x1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/jj;->jw()V

    :goto_44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_41  #00000001
        :pswitch_3d  #00000002
        :pswitch_39  #00000003
        :pswitch_35  #00000004
        :pswitch_15  #00000005
        :pswitch_11  #00000006
        :pswitch_9  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method
