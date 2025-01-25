.class Landroid/support/customtabs/k;
.super Landroid/support/customtabs/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/CustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Landroid/support/customtabs/CustomTabsService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsService;)V
    .registers 2

    iput-object p1, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    invoke-direct {p0}, Landroid/support/customtabs/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/support/customtabs/q;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 6

    iget-object v0, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/p;

    invoke-direct {v1, p1}, Landroid/support/customtabs/p;-><init>(Landroid/support/customtabs/q;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/p;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public j6(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsService;->j6(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public j6(J)Z
    .registers 4

    iget-object v0, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsService;->j6(J)Z

    move-result p1

    return p1
.end method

.method public j6(Landroid/support/customtabs/q;)Z
    .registers 7

    new-instance v0, Landroid/support/customtabs/p;

    invoke-direct {v0, p1}, Landroid/support/customtabs/p;-><init>(Landroid/support/customtabs/q;)V

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Landroid/support/customtabs/j;

    invoke-direct {v2, p0, v0}, Landroid/support/customtabs/j;-><init>(Landroid/support/customtabs/k;Landroid/support/customtabs/p;)V

    iget-object v3, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v3}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_31

    :try_start_12
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v4}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2e

    :try_start_27
    iget-object p1, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {p1, v0}, Landroid/support/customtabs/CustomTabsService;->DW(Landroid/support/customtabs/p;)Z

    move-result p1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2d} :catch_31

    return p1

    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    move-exception p1

    return v1
.end method

.method public j6(Landroid/support/customtabs/q;Landroid/net/Uri;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/p;

    invoke-direct {v1, p1}, Landroid/support/customtabs/p;-><init>(Landroid/support/customtabs/q;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/p;Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public j6(Landroid/support/customtabs/q;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/q;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/p;

    invoke-direct {v1, p1}, Landroid/support/customtabs/p;-><init>(Landroid/support/customtabs/q;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/p;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public j6(Landroid/support/customtabs/q;Landroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/p;

    invoke-direct {v1, p1}, Landroid/support/customtabs/p;-><init>(Landroid/support/customtabs/q;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/p;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
