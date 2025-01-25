.class Landroid/support/customtabs/o;
.super Landroid/support/customtabs/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/p;-><init>(Landroid/support/customtabs/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Landroid/support/customtabs/p;


# direct methods
.method constructor <init>(Landroid/support/customtabs/p;)V
    .registers 2

    iput-object p1, p0, Landroid/support/customtabs/o;->j6:Landroid/support/customtabs/p;

    invoke-direct {p0}, Landroid/support/customtabs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/o;->j6:Landroid/support/customtabs/p;

    invoke-static {v0}, Landroid/support/customtabs/p;->j6(Landroid/support/customtabs/p;)Landroid/support/customtabs/q;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/q;->FH(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p1

    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method

.method public j6(ILandroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/o;->j6:Landroid/support/customtabs/p;

    invoke-static {v0}, Landroid/support/customtabs/p;->j6(Landroid/support/customtabs/p;)Landroid/support/customtabs/q;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/q;->DW(ILandroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p1

    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method

.method public j6(Landroid/os/Bundle;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/o;->j6:Landroid/support/customtabs/p;

    invoke-static {v0}, Landroid/support/customtabs/p;->j6(Landroid/support/customtabs/p;)Landroid/support/customtabs/q;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/customtabs/q;->VH(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p1

    const-string p1, "CustomTabsSessionToken"

    const-string v0, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method

.method public j6(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/o;->j6:Landroid/support/customtabs/p;

    invoke-static {v0}, Landroid/support/customtabs/p;->j6(Landroid/support/customtabs/p;)Landroid/support/customtabs/q;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/q;->DW(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p1

    const-string p1, "CustomTabsSessionToken"

    const-string p2, "RemoteException during ICustomTabsCallback transaction"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void
.end method
