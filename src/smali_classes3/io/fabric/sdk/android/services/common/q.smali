.class final Lio/fabric/sdk/android/services/common/q;
.super Lio/fabric/sdk/android/services/common/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/common/r;->j6(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:Ljava/util/concurrent/ExecutorService;

.field final FH:J

.field final Hw:Ljava/util/concurrent/TimeUnit;

.field final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/q;->j6:Ljava/lang/String;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/q;->DW:Ljava/util/concurrent/ExecutorService;

    iput-wide p3, p0, Lio/fabric/sdk/android/services/common/q;->FH:J

    iput-object p5, p0, Lio/fabric/sdk/android/services/common/q;->Hw:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/g;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 7

    const-string v0, "Fabric"

    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing shutdown hook for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/fabric/sdk/android/services/common/q;->j6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/q;->DW:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/q;->DW:Ljava/util/concurrent/ExecutorService;

    iget-wide v2, p0, Lio/fabric/sdk/android/services/common/q;->FH:J

    iget-object v4, p0, Lio/fabric/sdk/android/services/common/q;->Hw:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/fabric/sdk/android/services/common/q;->j6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " did not shut down in the allocated time. Requesting immediate shutdown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/q;->DW:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_4c} :catch_4d

    goto :goto_6a

    :catch_4d
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/fabric/sdk/android/services/common/q;->j6:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown."

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/q;->DW:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_6a
    :goto_6a
    return-void
.end method
