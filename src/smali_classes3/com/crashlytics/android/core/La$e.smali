.class Lcom/crashlytics/android/core/La$e;
.super Lio/fabric/sdk/android/services/common/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/La;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final DW:Lcom/crashlytics/android/core/La$d;

.field final FH:Lcom/crashlytics/android/core/La;

.field private final j6:F


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/La;FLcom/crashlytics/android/core/La$d;)V
    .registers 4

    iput-object p1, p0, Lcom/crashlytics/android/core/La$e;->FH:Lcom/crashlytics/android/core/La;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/g;-><init>()V

    iput p2, p0, Lcom/crashlytics/android/core/La$e;->j6:F

    iput-object p3, p0, Lcom/crashlytics/android/core/La$e;->DW:Lcom/crashlytics/android/core/La$d;

    return-void
.end method

.method private DW()V
    .registers 9

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting report processing in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/crashlytics/android/core/La$e;->j6:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " second(s)..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/crashlytics/android/core/La$e;->j6:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3a

    const/high16 v1, 0x447a0000  # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    :try_start_2d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_3a

    :catch_31
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/crashlytics/android/core/La$e;->FH:Lcom/crashlytics/android/core/La;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/La;->DW()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/core/La$e;->FH:Lcom/crashlytics/android/core/La;

    invoke-static {v1}, Lcom/crashlytics/android/core/La;->j6(Lcom/crashlytics/android/core/La;)Lcom/crashlytics/android/core/La$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/crashlytics/android/core/La$b;->j6()Z

    move-result v1

    if-eqz v1, :cond_4d

    return-void

    :cond_4d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_91

    iget-object v1, p0, Lcom/crashlytics/android/core/La$e;->DW:Lcom/crashlytics/android/core/La$d;

    invoke-interface {v1}, Lcom/crashlytics/android/core/La$d;->j6()Z

    move-result v1

    if-nez v1, :cond_91

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User declined to send. Removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Report(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/core/Ka;

    invoke-interface {v1}, Lcom/crashlytics/android/core/Ka;->remove()V

    goto :goto_80

    :cond_90
    return-void

    :cond_91
    const/4 v1, 0x0

    :cond_92
    :goto_92
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12a

    iget-object v3, p0, Lcom/crashlytics/android/core/La$e;->FH:Lcom/crashlytics/android/core/La;

    invoke-static {v3}, Lcom/crashlytics/android/core/La;->j6(Lcom/crashlytics/android/core/La;)Lcom/crashlytics/android/core/La$b;

    move-result-object v3

    invoke-interface {v3}, Lcom/crashlytics/android/core/La$b;->j6()Z

    move-result v3

    if-eqz v3, :cond_a5

    return-void

    :cond_a5
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " report(s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ca
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_dc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/crashlytics/android/core/Ka;

    iget-object v4, p0, Lcom/crashlytics/android/core/La$e;->FH:Lcom/crashlytics/android/core/La;

    invoke-virtual {v4, v3}, Lcom/crashlytics/android/core/La;->j6(Lcom/crashlytics/android/core/Ka;)Z

    goto :goto_ca

    :cond_dc
    iget-object v0, p0, Lcom/crashlytics/android/core/La$e;->FH:Lcom/crashlytics/android/core/La;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/La;->DW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_92

    invoke-static {}, Lcom/crashlytics/android/core/La;->j6()[S

    move-result-object v3

    invoke-static {}, Lcom/crashlytics/android/core/La;->j6()[S

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget-short v3, v3, v4

    int-to-long v3, v3

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Report submisson: scheduling delayed retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    :try_start_11b
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_11e
    .catch Ljava/lang/InterruptedException; {:try_start_11b .. :try_end_11e} :catch_122

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_92

    :catch_122
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_12a
    return-void
.end method


# virtual methods
.method public j6()V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/core/La$e;->DW()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_10

    :catch_4
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "An unexpected error occurred while attempting to upload crash reports."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    iget-object v0, p0, Lcom/crashlytics/android/core/La$e;->FH:Lcom/crashlytics/android/core/La;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/La;->j6(Lcom/crashlytics/android/core/La;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
