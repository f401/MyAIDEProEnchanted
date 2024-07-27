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

    move-result v0

    return v0
.end method

.method public j6(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    iget-object v0, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsService;->j6(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public j6(J)Z
    .registers 4

    iget-object v0, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v0, p1, p2}, Landroid/support/customtabs/CustomTabsService;->j6(J)Z

    move-result v0

    return v0
.end method

.method public j6(Landroid/support/customtabs/q;)Z
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Landroid/support/customtabs/p;

    invoke-direct {v1, p1}, Landroid/support/customtabs/p;-><init>(Landroid/support/customtabs/q;)V

    :try_start_0
    new-instance v2, Landroid/support/customtabs/j;

    invoke-direct {v2, p0, v1}, Landroid/support/customtabs/j;-><init>(Landroid/support/customtabs/k;Landroid/support/customtabs/p;)V

    iget-object v3, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v3}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v4, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    invoke-static {v4}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/CustomTabsService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    invoke-virtual {v2, v1}, Landroid/support/customtabs/CustomTabsService;->DW(Landroid/support/customtabs/p;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    :goto_0
    return v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public j6(Landroid/support/customtabs/q;Landroid/net/Uri;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/p;

    invoke-direct {v1, p1}, Landroid/support/customtabs/p;-><init>(Landroid/support/customtabs/q;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/p;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public j6(Landroid/support/customtabs/q;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/customtabs/q;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/p;

    invoke-direct {v1, p1}, Landroid/support/customtabs/p;-><init>(Landroid/support/customtabs/q;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/p;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public j6(Landroid/support/customtabs/q;Landroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    new-instance v1, Landroid/support/customtabs/p;

    invoke-direct {v1, p1}, Landroid/support/customtabs/p;-><init>(Landroid/support/customtabs/q;)V

    invoke-virtual {v0, v1, p2}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/p;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
