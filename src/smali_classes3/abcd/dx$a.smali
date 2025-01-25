.class public abstract Labcd/dx$a;
.super Landroid/os/Binder;

# interfaces
.implements Labcd/dx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/dx$a$a;
    }
.end annotation


# direct methods
.method public static j6(Landroid/os/IBinder;)Labcd/dx;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Labcd/dx;

    if-eqz v1, :cond_13

    check-cast v0, Labcd/dx;

    return-object v0

    :cond_13
    new-instance v0, Labcd/dx$a$a;

    invoke-direct {v0, p0}, Labcd/dx$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
