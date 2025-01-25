.class public abstract Landroid/support/customtabs/CustomTabsService;
.super Landroid/app/Service;


# instance fields
.field private DW:Landroid/support/customtabs/r$a;

.field private final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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
    .registers 1

    iget-object p0, p0, Landroid/support/customtabs/CustomTabsService;->j6:Ljava/util/Map;

    return-object p0
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
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/support/customtabs/CustomTabsService;->j6:Ljava/util/Map;

    monitor-enter v1
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_4} :catch_1e

    :try_start_4
    invoke-virtual {p1}, Landroid/support/customtabs/p;->j6()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsService;->j6:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsService;->j6:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    const/4 p1, 0x1

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p1
    :try_end_1e
    .catch Ljava/util/NoSuchElementException; {:try_start_1d .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception p1

    return v0
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
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract j6(Landroid/support/customtabs/p;Landroid/os/Bundle;)Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    iget-object p1, p0, Landroid/support/customtabs/CustomTabsService;->DW:Landroid/support/customtabs/r$a;

    return-object p1
.end method
