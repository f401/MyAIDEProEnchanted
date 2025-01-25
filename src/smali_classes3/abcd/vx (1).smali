.class public abstract Labcd/vx;
.super Labcd/sx;

# interfaces
.implements Labcd/ux;


# direct methods
.method public static j6(Landroid/os/IBinder;)Labcd/ux;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Labcd/ux;

    if-eqz v1, :cond_11

    check-cast v0, Labcd/ux;

    return-object v0

    :cond_11
    new-instance v0, Labcd/wx;

    invoke-direct {v0, p0}, Labcd/wx;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
