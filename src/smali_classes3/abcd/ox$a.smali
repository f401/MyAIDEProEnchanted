.class public Labcd/ox$a;
.super Labcd/Dx;

# interfaces
.implements Labcd/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/ox$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-direct {p0, v0}, Labcd/Dx;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(Landroid/os/IBinder;)Labcd/ox;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Labcd/ox;

    if-eqz v1, :cond_11

    check-cast v0, Labcd/ox;

    return-object v0

    :cond_11
    new-instance v0, Labcd/ox$a$a;

    invoke-direct {v0, p0}, Labcd/ox$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
