.class public final Labcd/wx;
.super Labcd/rx;

# interfaces
.implements Labcd/ux;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-direct {p0, p1, v0}, Labcd/rx;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final J0(Z)Z
    .registers 3

    invoke-virtual {p0}, Labcd/rx;->v5()Landroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Labcd/tx;->j6(Landroid/os/Parcel;Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Labcd/rx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1}, Labcd/tx;->j6(Landroid/os/Parcel;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Labcd/rx;->v5()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/rx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final j6()Z
    .registers 3

    const/4 v0, 0x6

    invoke-virtual {p0}, Labcd/rx;->v5()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Labcd/rx;->j6(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Labcd/tx;->j6(Landroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
