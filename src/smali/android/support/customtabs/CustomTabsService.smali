.class public abstract Landroid/support/customtabs/CustomTabsService;
.super Landroid/app/Service;


# instance fields
.field private DW:Landroid/support/customtabs/r$a;

.field private final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsService;->j6:Ljava/util/Map;

    new-instance v0, Landroid/support/customtabs/k;

    invoke-direct {v0, p0}, Landroid/support/customtabs/k;-><init>(Landroid/support/customtabs/CustomTabsService;)V

    iput-object v0, p0, Landroid/support/customtabs/CustomTabsService;->DW:Landroid/support/customtabs/r$a;

    return-void
.end method

.method static synthetic j6(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService;->j6:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected abstract DW(Landroid/support/customtabs/p;)Z
.end method

.method protected abstract j6(Landroid/support/customtabs/p;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method protected abstract j6(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method protected abstract j6(J)Z
.end method

.method protected j6(Landroid/support/customtabs/p;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/support/customtabs/CustomTabsService;->j6:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Landroid/support/customtabs/p;->j6()Landroid/os/IBinder;

    move-result-object v3

    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService;->j6:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService;->j6:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method protected abstract j6(Landroid/support/customtabs/p;Landroid/net/Uri;)Z
.end method

.method protected abstract j6(Landroid/support/customtabs/p;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/p;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract j6(Landroid/support/customtabs/p;Landroid/os/Bundle;)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/support/customtabs/CustomTabsService;->DW:Landroid/support/customtabs/r$a;

    return-object v0
.end method
