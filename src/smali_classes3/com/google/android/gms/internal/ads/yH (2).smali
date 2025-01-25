.class public abstract Lcom/google/android/gms/internal/ads/yH;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/xH;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_2a

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/xH;->pN()V

    goto :goto_24

    :pswitch_9  #0x6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/xH;->J0()V

    goto :goto_24

    :pswitch_d  #0x5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/xH;->Gj()V

    goto :goto_24

    :pswitch_11  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/xH;->QO()V

    goto :goto_24

    :pswitch_15  #0x3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/xH;->Cz()V

    goto :goto_24

    :pswitch_19  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/xH;->Zo(I)V

    goto :goto_24

    :pswitch_21  #0x1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/xH;->a5()V

    :goto_24
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_21  #00000001
        :pswitch_19  #00000002
        :pswitch_15  #00000003
        :pswitch_11  #00000004
        :pswitch_d  #00000005
        :pswitch_9  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method
