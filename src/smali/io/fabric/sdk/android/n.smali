.class Lio/fabric/sdk/android/n;
.super Lio/fabric/sdk/android/Kit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private DW:Landroid/content/pm/PackageManager;

.field private final EQ:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/lang/String;

.field private Hw:Landroid/content/pm/PackageInfo;

.field private VH:Ljava/lang/String;

.field private Zo:Ljava/lang/String;

.field private gn:Ljava/lang/String;

.field private final j6:Labcd/Jz;

.field private final tp:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/l;",
            ">;>;"
        }
    .end annotation
.end field

.field private u7:Ljava/lang/String;

.field private v5:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/l;",
            ">;>;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    new-instance v0, Labcd/Ez;

    invoke-direct {v0}, Labcd/Ez;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/n;->j6:Labcd/Jz;

    iput-object p1, p0, Lio/fabric/sdk/android/n;->tp:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lio/fabric/sdk/android/n;->EQ:Ljava/util/Collection;

    return-void
.end method

.method private DW(Ljava/lang/String;Labcd/Wz;Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Labcd/Wz;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/l;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/fA;->j6(Landroid/content/Context;Ljava/lang/String;)Labcd/fA;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lio/fabric/sdk/android/n;->j6(Labcd/fA;Ljava/util/Collection;)Labcd/Vz;

    move-result-object v0

    new-instance v1, Labcd/_z;

    invoke-virtual {p0}, Lio/fabric/sdk/android/n;->Zo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Labcd/Wz;->FH:Ljava/lang/String;

    iget-object v4, p0, Lio/fabric/sdk/android/n;->j6:Labcd/Jz;

    invoke-direct {v1, p0, v2, v3, v4}, Labcd/_z;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;)V

    invoke-virtual {v1, v0}, Labcd/_z;->j6(Labcd/Vz;)Z

    move-result v0

    return v0
.end method

.method private FH(Ljava/lang/String;Labcd/Wz;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Labcd/Wz;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/l;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Labcd/fA;->j6(Landroid/content/Context;Ljava/lang/String;)Labcd/fA;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3}, Lio/fabric/sdk/android/n;->j6(Labcd/Wz;Labcd/fA;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method private VH()Labcd/mA;
    .registers 9

    :try_start_0
    invoke-static {}, Labcd/jA;->DW()Labcd/jA;

    move-result-object v0

    iget-object v2, p0, Lio/fabric/sdk/android/Kit;->idManager:Lio/fabric/sdk/android/services/common/v;

    iget-object v3, p0, Lio/fabric/sdk/android/n;->j6:Labcd/Jz;

    iget-object v4, p0, Lio/fabric/sdk/android/n;->v5:Ljava/lang/String;

    iget-object v5, p0, Lio/fabric/sdk/android/n;->Zo:Ljava/lang/String;

    invoke-virtual {p0}, Lio/fabric/sdk/android/n;->Zo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Labcd/jA;->j6(Lio/fabric/sdk/android/Kit;Lio/fabric/sdk/android/services/common/v;Labcd/Jz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/common/l;)Labcd/jA;

    invoke-virtual {v0}, Labcd/jA;->FH()Z

    invoke-static {}, Labcd/jA;->DW()Labcd/jA;

    move-result-object v0

    invoke-virtual {v0}, Labcd/jA;->j6()Labcd/mA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error dealing with settings"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(Labcd/fA;Ljava/util/Collection;)Labcd/Vz;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/fA;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/l;",
            ">;)",
            "Labcd/Vz;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/fabric/sdk/android/services/common/f;

    invoke-direct {v1}, Lio/fabric/sdk/android/services/common/f;-><init>()V

    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/common/f;->Hw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->J8(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->j6([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lio/fabric/sdk/android/n;->VH:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/m;->j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/m;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/m;->getId()I

    move-result v7

    new-instance v0, Labcd/Vz;

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdManager()Lio/fabric/sdk/android/services/common/v;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/v;->FH()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/fabric/sdk/android/n;->Zo:Ljava/lang/String;

    iget-object v4, p0, Lio/fabric/sdk/android/n;->v5:Ljava/lang/String;

    iget-object v6, p0, Lio/fabric/sdk/android/n;->gn:Ljava/lang/String;

    iget-object v8, p0, Lio/fabric/sdk/android/n;->u7:Ljava/lang/String;

    const-string v9, "0"

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Labcd/Vz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Labcd/fA;Ljava/util/Collection;)V

    return-object v0
.end method

.method private j6(Labcd/Wz;Labcd/fA;Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Wz;",
            "Labcd/fA;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/l;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lio/fabric/sdk/android/n;->j6(Labcd/fA;Ljava/util/Collection;)Labcd/Vz;

    move-result-object v0

    new-instance v1, Labcd/rA;

    invoke-virtual {p0}, Lio/fabric/sdk/android/n;->Zo()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Labcd/Wz;->FH:Ljava/lang/String;

    iget-object v4, p0, Lio/fabric/sdk/android/n;->j6:Labcd/Jz;

    invoke-direct {v1, p0, v2, v3, v4}, Labcd/rA;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;)V

    invoke-virtual {v1, v0}, Labcd/rA;->j6(Labcd/Vz;)Z

    move-result v0

    return v0
.end method

.method private j6(Ljava/lang/String;Labcd/Wz;Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Labcd/Wz;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/l;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "new"

    iget-object v1, p2, Labcd/Wz;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lio/fabric/sdk/android/n;->DW(Ljava/lang/String;Labcd/Wz;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Labcd/jA;->DW()Labcd/jA;

    move-result-object v0

    invoke-virtual {v0}, Labcd/jA;->Hw()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Failed to create app with Crashlytics service."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "configured"

    iget-object v1, p2, Labcd/Wz;->DW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Labcd/jA;->DW()Labcd/jA;

    move-result-object v0

    invoke-virtual {v0}, Labcd/jA;->Hw()Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p2, Labcd/Wz;->Zo:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Server says an update is required - forcing a full App update."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lio/fabric/sdk/android/n;->FH(Ljava/lang/String;Labcd/Wz;Ljava/util/Collection;)Z

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method Zo()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Boolean;
    .registers 5

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lio/fabric/sdk/android/n;->VH()Labcd/mA;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/n;->tp:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/n;->tp:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    :goto_0
    iget-object v3, p0, Lio/fabric/sdk/android/n;->EQ:Ljava/util/Collection;

    invoke-virtual {p0, v0, v3}, Lio/fabric/sdk/android/n;->j6(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;

    iget-object v2, v2, Labcd/mA;->j6:Labcd/Wz;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lio/fabric/sdk/android/n;->j6(Ljava/lang/String;Labcd/Wz;Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Error performing auto configuration."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/fabric/sdk/android/n;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "io.fabric.sdk.android:fabric"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.4.8.32"

    return-object v0
.end method

.method j6(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/l;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/Kit;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/l;",
            ">;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/fabric/sdk/android/l;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v5, "binary"

    invoke-direct {v3, v4, v0, v5}, Lio/fabric/sdk/android/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method protected onPreExecute()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdManager()Lio/fabric/sdk/android/services/common/v;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/v;->Zo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/n;->VH:Ljava/lang/String;

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/n;->DW:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/n;->FH:Ljava/lang/String;

    iget-object v1, p0, Lio/fabric/sdk/android/n;->DW:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lio/fabric/sdk/android/n;->FH:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/n;->Hw:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lio/fabric/sdk/android/n;->Hw:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/n;->v5:Ljava/lang/String;

    iget-object v1, p0, Lio/fabric/sdk/android/n;->Hw:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const-string v1, "0.0"

    :goto_0
    :try_start_1
    iput-object v1, p0, Lio/fabric/sdk/android/n;->Zo:Ljava/lang/String;

    iget-object v1, p0, Lio/fabric/sdk/android/n;->DW:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/n;->gn:Ljava/lang/String;

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/fabric/sdk/android/n;->u7:Ljava/lang/String;

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lio/fabric/sdk/android/n;->Hw:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed init"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
