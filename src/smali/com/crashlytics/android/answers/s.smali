.class Lcom/crashlytics/android/answers/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/answers/G;


# instance fields
.field private final DW:Labcd/Jz;

.field EQ:Lcom/crashlytics/android/answers/t;

.field private final FH:Landroid/content/Context;

.field private final Hw:Lcom/crashlytics/android/answers/D;

.field J0:Z

.field volatile J8:I

.field QX:Z

.field final VH:Lcom/crashlytics/android/answers/J;

.field Ws:Z

.field private final Zo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final gn:Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;

.field private final j6:Lio/fabric/sdk/android/Kit;

.field tp:Lio/fabric/sdk/android/services/common/f;

.field u7:Labcd/yz;

.field private final v5:Ljava/util/concurrent/ScheduledExecutorService;

.field we:Z


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/D;Labcd/Jz;Lcom/crashlytics/android/answers/J;Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;)V
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/answers/s;->Zo:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lio/fabric/sdk/android/services/common/f;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/f;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/answers/s;->tp:Lio/fabric/sdk/android/services/common/f;

    new-instance v0, Lcom/crashlytics/android/answers/x;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/x;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/answers/s;->EQ:Lcom/crashlytics/android/answers/t;

    iput-boolean v2, p0, Lcom/crashlytics/android/answers/s;->we:Z

    iput-boolean v2, p0, Lcom/crashlytics/android/answers/s;->J0:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/crashlytics/android/answers/s;->J8:I

    iput-boolean v1, p0, Lcom/crashlytics/android/answers/s;->Ws:Z

    iput-boolean v1, p0, Lcom/crashlytics/android/answers/s;->QX:Z

    iput-object p1, p0, Lcom/crashlytics/android/answers/s;->j6:Lio/fabric/sdk/android/Kit;

    iput-object p2, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    iput-object p3, p0, Lcom/crashlytics/android/answers/s;->v5:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p4, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    iput-object p5, p0, Lcom/crashlytics/android/answers/s;->DW:Labcd/Jz;

    iput-object p6, p0, Lcom/crashlytics/android/answers/s;->VH:Lcom/crashlytics/android/answers/J;

    iput-object p7, p0, Lcom/crashlytics/android/answers/s;->gn:Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Zo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    const-string v1, "Cancelling time-based rollover because no events are currently being generated."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Zo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Zo:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public FH()V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->u7:Labcd/yz;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    const-string v1, "skipping files send because we don\'t yet know the target endpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    const-string v2, "Sending all files"

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0}, Labcd/uz;->Hw()Ljava/util/List;

    move-result-object v0

    :goto_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "attempt to send batch of %d files"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crashlytics/android/answers/s;->u7:Labcd/yz;

    invoke-interface {v2, v0}, Labcd/yz;->j6(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v3, v0}, Labcd/uz;->j6(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-nez v2, :cond_4

    :cond_3
    :goto_2
    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0}, Labcd/uz;->DW()V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0}, Labcd/uz;->Hw()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send batch of analytics files to server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public Hw()V
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0}, Labcd/uz;->j6()V

    return-void
.end method

.method j6(JJ)V
    .registers 14

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Zo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    new-instance v1, Labcd/Bz;

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    invoke-direct {v1, v0, p0}, Labcd/Bz;-><init>(Landroid/content/Context;Labcd/xz;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling time based file roll over every "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    iget-object v7, p0, Lcom/crashlytics/android/answers/s;->Zo:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->v5:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    const-string v2, "Failed to schedule time based file roll over"

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public j6(Labcd/Tz;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Lcom/crashlytics/android/answers/E;

    iget-object v1, p0, Lcom/crashlytics/android/answers/s;->j6:Lio/fabric/sdk/android/Kit;

    iget-object v3, p1, Labcd/Tz;->j6:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/answers/s;->DW:Labcd/Jz;

    iget-object v2, p0, Lcom/crashlytics/android/answers/s;->tp:Lio/fabric/sdk/android/services/common/f;

    iget-object v5, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lio/fabric/sdk/android/services/common/f;->Hw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/answers/E;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/crashlytics/android/answers/n;->j6(Lcom/crashlytics/android/answers/E;)Lcom/crashlytics/android/answers/n;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/answers/s;->u7:Labcd/yz;

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/D;->j6(Labcd/Tz;)V

    iget-boolean v0, p1, Labcd/Tz;->Zo:Z

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/s;->Ws:Z

    iget-boolean v0, p1, Labcd/Tz;->VH:Z

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/s;->QX:Z

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Firebase analytics forwarding "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/s;->Ws:Z

    const-string v1, "enabled"

    if-eqz v0, :cond_1

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Answers"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Firebase analytics including purchase events "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/s;->QX:Z

    if-eqz v0, :cond_2

    const-string v0, "enabled"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Answers"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Labcd/Tz;->gn:Z

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/s;->we:Z

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Custom event tracking "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/s;->we:Z

    if-eqz v0, :cond_3

    const-string v0, "enabled"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Answers"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Labcd/Tz;->u7:Z

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/s;->J0:Z

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Predefined event tracking "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/s;->J0:Z

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Answers"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Labcd/Tz;->EQ:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Event sampling enabled"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/crashlytics/android/answers/C;

    iget v1, p1, Labcd/Tz;->EQ:I

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/C;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/answers/s;->EQ:Lcom/crashlytics/android/answers/t;

    :cond_0
    iget v0, p1, Labcd/Tz;->DW:I

    iput v0, p0, Lcom/crashlytics/android/answers/s;->J8:I

    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/crashlytics/android/answers/s;->J8:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/crashlytics/android/answers/s;->j6(JJ)V

    return-void

    :cond_1
    const-string v0, "disabled"

    goto/16 :goto_0

    :cond_2
    const-string v0, "disabled"

    goto :goto_1

    :cond_3
    const-string v0, "disabled"

    goto :goto_2

    :cond_4
    const-string v0, "disabled"

    goto :goto_3
.end method

.method public j6(Lcom/crashlytics/android/answers/I$a;)V
    .registers 7

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->VH:Lcom/crashlytics/android/answers/J;

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/answers/I$a;->j6(Lcom/crashlytics/android/answers/J;)Lcom/crashlytics/android/answers/I;

    move-result-object v1

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/s;->we:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->VH:Lcom/crashlytics/android/answers/I$b;

    iget-object v2, v1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Custom events tracking disabled - skipping event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "Answers"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/crashlytics/android/answers/s;->J0:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->gn:Lcom/crashlytics/android/answers/I$b;

    iget-object v2, v1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Predefined events tracking disabled - skipping event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "Answers"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->EQ:Lcom/crashlytics/android/answers/t;

    invoke-interface {v0, v1}, Lcom/crashlytics/android/answers/t;->j6(Lcom/crashlytics/android/answers/I;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping filtered event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "Answers"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0, v1}, Labcd/uz;->j6(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/s;->v5()V

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->VH:Lcom/crashlytics/android/answers/I$b;

    iget-object v2, v1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->gn:Lcom/crashlytics/android/answers/I$b;

    iget-object v2, v1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_2
    const-string v2, "purchase"

    iget-object v3, v1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/crashlytics/android/answers/s;->Ws:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_5

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/s;->QX:Z

    if-eqz v0, :cond_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->gn:Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;->j6(Lcom/crashlytics/android/answers/I;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to map event to Firebase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "Answers"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "Answers"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public j6()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0}, Labcd/uz;->VH()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    const-string v2, "Failed to roll file over."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v5()V
    .registers 5

    iget v0, p0, Lcom/crashlytics/android/answers/s;->J8:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/crashlytics/android/answers/s;->J8:I

    int-to-long v0, v0

    iget v2, p0, Lcom/crashlytics/android/answers/s;->J8:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/crashlytics/android/answers/s;->j6(JJ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
