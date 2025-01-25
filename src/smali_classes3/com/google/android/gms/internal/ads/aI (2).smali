.class public abstract Lcom/google/android/gms/internal/ads/aI;
.super Lcom/google/android/gms/internal/ads/my;

# interfaces
.implements Lcom/google/android/gms/internal/ads/_H;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/my;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_7a

    const/4 p1, 0x0

    return p1

    :pswitch_5  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/He;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/Ge;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/_H;->j6(Lcom/google/android/gms/internal/ads/Ge;)V

    goto :goto_75

    :pswitch_11  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/_H;->SI(Ljava/lang/String;)V

    goto :goto_75

    :pswitch_19  #0x9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_H;->Od()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_78

    :pswitch_24  #0x8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_H;->GT()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;Z)V

    goto :goto_78

    :pswitch_2f  #0x7
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_H;->AR()F

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_78

    :pswitch_3a  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/_H;->DW(Ljava/lang/String;Labcd/ox;)V

    goto :goto_75

    :pswitch_4a  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Labcd/ox$a;->j6(Landroid/os/IBinder;)Labcd/ox;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/_H;->j6(Labcd/ox;Ljava/lang/String;)V

    goto :goto_75

    :pswitch_5a  #0x4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/ny;->j6(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/_H;->EQ(Z)V

    goto :goto_75

    :pswitch_62  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/_H;->KD(Ljava/lang/String;)V

    goto :goto_75

    :pswitch_6a  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/_H;->j6(F)V

    goto :goto_75

    :pswitch_72  #0x1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/_H;->iW()V

    :goto_75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_78
    const/4 p1, 0x1

    return p1

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_72  #00000001
        :pswitch_6a  #00000002
        :pswitch_62  #00000003
        :pswitch_5a  #00000004
        :pswitch_4a  #00000005
        :pswitch_3a  #00000006
        :pswitch_2f  #00000007
        :pswitch_24  #00000008
        :pswitch_19  #00000009
        :pswitch_11  #0000000a
        :pswitch_5  #0000000b
    .end packed-switch
.end method
