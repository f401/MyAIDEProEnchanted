.class public abstract Lcom/google/android/gms/internal/ads/La;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ka;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Ka;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Ka;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/Ka;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/Ma;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Ma;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_54

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ka;->v5(Labcd/ox;)V

    goto :goto_4f

    :pswitch_11  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ka;->FH(Labcd/ox;I)V

    goto :goto_4f

    :pswitch_21  #0x4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ka;->destroy()V

    goto :goto_4f

    :pswitch_25  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ka;->Hw(Labcd/ox;)V

    goto :goto_4f

    :pswitch_31  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/Ka;->lg(Ljava/lang/String;)Labcd/ox;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_52

    :pswitch_40  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ka;->j6(Ljava/lang/String;Labcd/ox;)V

    :goto_4f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_52
    const/4 p1, 0x1

    return p1

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_40  #00000001
        :pswitch_31  #00000002
        :pswitch_25  #00000003
        :pswitch_21  #00000004
        :pswitch_11  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method
