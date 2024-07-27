.class public Landroid/support/customtabs/g;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroid/content/ComponentName;

.field private final j6:Landroid/support/customtabs/r;


# direct methods
.method constructor <init>(Landroid/support/customtabs/r;Landroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/customtabs/g;->j6:Landroid/support/customtabs/r;

    iput-object p2, p0, Landroid/support/customtabs/g;->DW:Landroid/content/ComponentName;

    return-void
.end method

.method public static j6(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/m;)Z
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x21

    invoke-virtual {p0, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public j6(Landroid/support/customtabs/a;)Landroid/support/customtabs/n;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Landroid/support/customtabs/f;

    invoke-direct {v1, p0, p1}, Landroid/support/customtabs/f;-><init>(Landroid/support/customtabs/g;Landroid/support/customtabs/a;)V

    :try_start_0
    iget-object v2, p0, Landroid/support/customtabs/g;->j6:Landroid/support/customtabs/r;

    invoke-interface {v2, v1}, Landroid/support/customtabs/r;->j6(Landroid/support/customtabs/q;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/customtabs/n;

    iget-object v2, p0, Landroid/support/customtabs/g;->j6:Landroid/support/customtabs/r;

    iget-object v3, p0, Landroid/support/customtabs/g;->DW:Landroid/content/ComponentName;

    invoke-direct {v0, v2, v1, v3}, Landroid/support/customtabs/n;-><init>(Landroid/support/customtabs/r;Landroid/support/customtabs/q;Landroid/content/ComponentName;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public j6(J)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/g;->j6:Landroid/support/customtabs/r;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/r;->j6(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
