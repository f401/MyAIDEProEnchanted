.class public Lcom/crashlytics/android/Crashlytics;
.super Lio/fabric/sdk/android/Kit;

# interfaces
.implements Lio/fabric/sdk/android/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/fabric/sdk/android/k;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Crashlytics"


# instance fields
.field public final answers:Lcom/crashlytics/android/answers/b;

.field public final beta:Labcd/Bw;

.field public final core:Lcom/crashlytics/android/core/ca;

.field public final kits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lcom/crashlytics/android/answers/b;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/b;-><init>()V

    new-instance v1, Labcd/Bw;

    invoke-direct {v1}, Labcd/Bw;-><init>()V

    new-instance v2, Lcom/crashlytics/android/core/ca;

    invoke-direct {v2}, Lcom/crashlytics/android/core/ca;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/Crashlytics;-><init>(Lcom/crashlytics/android/answers/b;Labcd/Bw;Lcom/crashlytics/android/core/ca;)V

    return-void
.end method

.method constructor <init>(Lcom/crashlytics/android/answers/b;Labcd/Bw;Lcom/crashlytics/android/core/ca;)V
    .registers 6

    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics;->answers:Lcom/crashlytics/android/answers/b;

    iput-object p2, p0, Lcom/crashlytics/android/Crashlytics;->beta:Labcd/Bw;

    iput-object p3, p0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics;->kits:Ljava/util/Collection;

    return-void
.end method

.method private static checkInitialized()V
    .registers 2

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/crashlytics/android/Crashlytics;
    .registers 1

    const-class v0, Lcom/crashlytics/android/Crashlytics;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->getKit(Ljava/lang/Class;)Lio/fabric/sdk/android/Kit;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/Crashlytics;

    return-object v0
.end method

.method public static getPinningInfoProvider()Lcom/crashlytics/android/core/Da;
    .registers 1

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/ca;->getPinningInfoProvider()Lcom/crashlytics/android/core/Da;

    move-result-object v0

    return-object v0
.end method

.method private static isCrashlyticsCollectionEnabled()Z
    .registers 1

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/l;->j6()Z

    move-result v0

    return v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/core/ca;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/ca;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/ca;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setBool(Ljava/lang/String;Z)V
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/core/ca;->setBool(Ljava/lang/String;Z)V

    return-void
.end method

.method private static setCrashlyticsCollectionEnabled(Z)V
    .registers 2

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/fabric/sdk/android/services/common/l;->j6(Z)V

    return-void
.end method

.method public static setDouble(Ljava/lang/String;D)V
    .registers 4

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/core/ca;->setDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public static setFloat(Ljava/lang/String;F)V
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/core/ca;->setFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/core/ca;->setInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .registers 4

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0, p1, p2}, Lcom/crashlytics/android/core/ca;->setLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static setPinningInfoProvider(Lcom/crashlytics/android/core/Da;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p0

    const-string v0, "Crashlytics"

    const-string v1, "Use of Crashlytics.setPinningInfoProvider is deprecated"

    invoke-interface {p0, v0, v1}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0, p1}, Lcom/crashlytics/android/core/ca;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/ca;->setUserEmail(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/ca;->setUserIdentifier(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->checkInitialized()V

    invoke-static {}, Lcom/crashlytics/android/Crashlytics;->getInstance()Lcom/crashlytics/android/Crashlytics;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p0}, Lcom/crashlytics/android/core/ca;->setUserName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public crash()V
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/ca;->crash()V

    return-void
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/Crashlytics;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDebugMode()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Crashlytics"

    const-string v2, "Use of Crashlytics.getDebugMode is deprecated."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getFabric()Lio/fabric/sdk/android/Fabric;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isDebuggable()Z

    move-result v0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public getKits()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->kits:Ljava/util/Collection;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "2.10.0.33"

    return-object v0
.end method

.method public setDebugMode(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v0, "Crashlytics"

    const-string v1, "Use of Crashlytics.setDebugMode is deprecated."

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/crashlytics/android/core/ea;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/ca;->setListener(Lcom/crashlytics/android/core/ea;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public verifyPinning(Ljava/net/URL;)Z
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics;->core:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/ca;->verifyPinning(Ljava/net/URL;)Z

    move-result p1

    return p1
.end method
