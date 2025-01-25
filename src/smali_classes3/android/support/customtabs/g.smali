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

    if-nez v1, :cond_10

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    const/16 p1, 0x21

    invoke-virtual {p0, v0, p2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public j6(Landroid/support/customtabs/a;)Landroid/support/customtabs/n;
    .registers 5

    new-instance v0, Landroid/support/customtabs/f;

    invoke-direct {v0, p0, p1}, Landroid/support/customtabs/f;-><init>(Landroid/support/customtabs/g;Landroid/support/customtabs/a;)V

    const/4 p1, 0x0

    :try_start_6
    iget-object v1, p0, Landroid/support/customtabs/g;->j6:Landroid/support/customtabs/r;

    invoke-interface {v1, v0}, Landroid/support/customtabs/r;->j6(Landroid/support/customtabs/q;)Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_19

    if-nez v1, :cond_f

    return-object p1

    :cond_f
    new-instance p1, Landroid/support/customtabs/n;

    iget-object v1, p0, Landroid/support/customtabs/g;->j6:Landroid/support/customtabs/r;

    iget-object v2, p0, Landroid/support/customtabs/g;->DW:Landroid/content/ComponentName;

    invoke-direct {p1, v1, v0, v2}, Landroid/support/customtabs/n;-><init>(Landroid/support/customtabs/r;Landroid/support/customtabs/q;Landroid/content/ComponentName;)V

    goto :goto_1a

    :catch_19
    move-exception v0

    :goto_1a
    return-object p1
.end method

.method public j6(J)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/g;->j6:Landroid/support/customtabs/r;

    invoke-interface {v0, p1, p2}, Landroid/support/customtabs/r;->j6(J)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    const/4 p1, 0x0

    return p1
.end method
