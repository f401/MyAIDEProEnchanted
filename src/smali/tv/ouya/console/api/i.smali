.class public Ltv/ouya/console/api/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/ouya/console/api/i$a;,
        Ltv/ouya/console/api/i$b;,
        Ltv/ouya/console/api/i$c;
    }
.end annotation


# static fields
.field private static final DW:[Ljava/lang/String;

.field private static FH:Ltv/ouya/console/api/i;

.field private static Hw:Z

.field private static final j6:[Ljava/lang/String;


# instance fields
.field private VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Labcd/bQ;

.field private gn:Z

.field private tp:Ltv/ouya/console/api/i$b;

.field private u7:Ljava/lang/String;

.field private v5:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v2

    sput-object v0, Ltv/ouya/console/api/i;->j6:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "property_name"

    aput-object v1, v0, v2

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Ltv/ouya/console/api/i;->DW:[Ljava/lang/String;

    new-instance v0, Ltv/ouya/console/api/i;

    invoke-direct {v0}, Ltv/ouya/console/api/i;-><init>()V

    sput-object v0, Ltv/ouya/console/api/i;->FH:Ltv/ouya/console/api/i;

    sput-boolean v2, Ltv/ouya/console/api/i;->Hw:Z

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/i;->VH:Ljava/util/List;

    const-string v0, "OUYAF"

    const-string v1, "ODK version number: 62"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic DW(Ltv/ouya/console/api/i;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/i;->u7:Ljava/lang/String;

    return-object v0
.end method

.method public static FH()Ltv/ouya/console/api/i;
    .registers 1

    sget-object v0, Ltv/ouya/console/api/i;->FH:Ltv/ouya/console/api/i;

    return-object v0
.end method

.method static synthetic j6(Ltv/ouya/console/api/i;)Labcd/bQ;
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/i;->Zo:Labcd/bQ;

    return-object v0
.end method

.method private j6(Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0}, Ltv/ouya/console/api/i;->j6()V

    iget-object v0, p0, Ltv/ouya/console/api/i;->Zo:Labcd/bQ;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ltv/ouya/console/api/i;->VH:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public DW()Ltv/ouya/console/api/i$b;
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Ltv/ouya/console/api/i;->tp:Ltv/ouya/console/api/i$b;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ltv/ouya/console/api/i;->Hw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltv/ouya/console/api/i;->v5:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "tv.ouya.DEVICE_INFO_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ltv/ouya/console/api/i$b;

    const-string v1, "unknown"

    sget-object v2, Ltv/ouya/console/api/i$a;->FH:Ltv/ouya/console/api/i$a;

    invoke-direct {v0, v4, v1, v2}, Ltv/ouya/console/api/i$b;-><init>(ZLjava/lang/String;Ltv/ouya/console/api/i$a;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "SUPPORTED_DEVICE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "DEVICE_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEVICE_ENUM"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Ltv/ouya/console/api/i$a;->FH:Ltv/ouya/console/api/i$a;

    :try_start_0
    invoke-static {v3}, Ltv/ouya/console/api/i$a;->valueOf(Ljava/lang/String;)Ltv/ouya/console/api/i$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    new-instance v3, Ltv/ouya/console/api/i$b;

    invoke-direct {v3, v1, v2, v0}, Ltv/ouya/console/api/i$b;-><init>(ZLjava/lang/String;Ltv/ouya/console/api/i$a;)V

    iput-object v3, p0, Ltv/ouya/console/api/i;->tp:Ltv/ouya/console/api/i$b;

    :cond_1
    iget-object v0, p0, Ltv/ouya/console/api/i;->tp:Ltv/ouya/console/api/i$b;

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error looking up deviceEnum for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "OUYAF"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must call OuyaFacade.init first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Hw()Z
    .registers 2

    iget-object v0, p0, Ltv/ouya/console/api/i;->v5:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Zo()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Ltv/ouya/console/api/i;->v5:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ltv/ouya/console/api/i;->Zo:Labcd/bQ;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v3, p0, Ltv/ouya/console/api/i;->Zo:Labcd/bQ;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/ouya/console/api/i;->gn:Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tv.ouya.ODK_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package_name"

    iget-object v2, p0, Ltv/ouya/console/api/i;->v5:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ltv/ouya/console/api/i;->v5:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-object v3, p0, Ltv/ouya/console/api/i;->v5:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method j6()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Ltv/ouya/console/api/i;->v5:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "OUYAF"

    const-string v1, "Dropping request because connect has been shut down"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Ltv/ouya/console/api/i;->gn:Z

    if-nez v0, :cond_0

    const-string v0, "inAppPurchase"

    const-string v1, "Binding to IapService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "tv.ouya"

    const-string v2, "tv.ouya.console.service.iap.IapService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ltv/ouya/console/api/i;->v5:Landroid/content/Context;

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, Ltv/ouya/console/api/i;->gn:Z

    goto :goto_0
.end method

.method public j6(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Ltv/ouya/console/api/i;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/i;->v5:Landroid/content/Context;

    iput-object p2, p0, Ltv/ouya/console/api/i;->u7:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "tv.ouya.ODK_INITIALIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Ltv/ouya/console/api/i;->v5:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public j6(Ltv/ouya/console/api/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/k",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ltv/ouya/console/api/i$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ltv/ouya/console/api/i$c;-><init>(Ltv/ouya/console/api/i;Ltv/ouya/console/api/k;Ltv/ouya/console/api/h;)V

    invoke-direct {p0, v0}, Ltv/ouya/console/api/i;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string v0, "inAppPurchase"

    const-string v1, "Successfully bound to IapService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Labcd/bQ$a;->j6(Landroid/os/IBinder;)Labcd/bQ;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/i;->Zo:Labcd/bQ;

    :goto_0
    iget-object v0, p0, Ltv/ouya/console/api/i;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltv/ouya/console/api/i;->VH:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/ouya/console/api/i;->Zo:Labcd/bQ;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltv/ouya/console/api/i;->gn:Z

    return-void
.end method

.method public v5()Z
    .registers 2

    invoke-virtual {p0}, Ltv/ouya/console/api/i;->DW()Ltv/ouya/console/api/i$b;

    move-result-object v0

    invoke-virtual {v0}, Ltv/ouya/console/api/i$b;->j6()Z

    move-result v0

    return v0
.end method
