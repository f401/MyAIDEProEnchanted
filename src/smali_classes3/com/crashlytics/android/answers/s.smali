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
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
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
    .registers 9

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/s;->we:Z

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/s;->J0:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/crashlytics/android/answers/s;->J8:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/s;->Ws:Z

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/s;->QX:Z

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

    if-eqz v0, :cond_21

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

    :cond_21
    return-void
.end method

.method public FH()V
    .registers 9

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->u7:Labcd/yz;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    const-string v1, "skipping files send because we don\'t yet know the target endpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    const-string v1, "Sending all files"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0}, Labcd/uz;->Hw()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1b
    :try_start_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_72

    iget-object v3, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "attempt to send batch of %d files"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/crashlytics/android/answers/s;->u7:Labcd/yz;

    invoke-interface {v3, v0}, Labcd/yz;->j6(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v4, v0}, Labcd/uz;->j6(Ljava/util/List;)V

    :cond_4d
    if-nez v3, :cond_50

    goto :goto_72

    :cond_50
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0}, Labcd/uz;->Hw()Ljava/util/List;

    move-result-object v0
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_56} :catch_57

    goto :goto_1b

    :catch_57
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send batch of analytics files to server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_72
    :goto_72
    if-nez v2, :cond_79

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0}, Labcd/uz;->DW()V

    :cond_79
    return-void
.end method

.method public Hw()V
    .registers 2

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0}, Labcd/uz;->j6()V

    return-void
.end method

.method j6(JJ)V
    .registers 13

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Zo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_47

    new-instance v2, Labcd/Bz;

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    invoke-direct {v2, v0, p0}, Labcd/Bz;-><init>(Landroid/content/Context;Labcd/xz;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling time based file roll over every "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_2f
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Zo:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/crashlytics/android/answers/s;->v5:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, p1

    move-wide v5, p3

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2f .. :try_end_3e} :catch_3f

    goto :goto_47

    :catch_3f
    move-exception p1

    iget-object p2, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    const-string p3, "Failed to schedule time based file roll over"

    invoke-static {p2, p3, p1}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public j6(Labcd/Tz;Ljava/lang/String;)V
    .registers 10

    new-instance v6, Lcom/crashlytics/android/answers/E;

    iget-object v1, p0, Lcom/crashlytics/android/answers/s;->j6:Lio/fabric/sdk/android/Kit;

    iget-object v3, p1, Labcd/Tz;->j6:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/answers/s;->DW:Labcd/Jz;

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->tp:Lio/fabric/sdk/android/services/common/f;

    iget-object v2, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lio/fabric/sdk/android/services/common/f;->Hw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/answers/E;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/crashlytics/android/answers/n;->j6(Lcom/crashlytics/android/answers/E;)Lcom/crashlytics/android/answers/n;

    move-result-object p2

    iput-object p2, p0, Lcom/crashlytics/android/answers/s;->u7:Labcd/yz;

    iget-object p2, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {p2, p1}, Lcom/crashlytics/android/answers/D;->j6(Labcd/Tz;)V

    iget-boolean p2, p1, Labcd/Tz;->Zo:Z

    iput-boolean p2, p0, Lcom/crashlytics/android/answers/s;->Ws:Z

    iget-boolean p2, p1, Labcd/Tz;->VH:Z

    iput-boolean p2, p0, Lcom/crashlytics/android/answers/s;->QX:Z

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Firebase analytics forwarding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/crashlytics/android/answers/s;->Ws:Z

    const-string v2, "disabled"

    const-string v3, "enabled"

    if-eqz v1, :cond_40

    move-object v1, v3

    goto :goto_41

    :cond_40
    move-object v1, v2

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Answers"

    invoke-interface {p2, v1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Firebase analytics including purchase events "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/crashlytics/android/answers/s;->QX:Z

    if-eqz v4, :cond_61

    move-object v4, v3

    goto :goto_62

    :cond_61
    move-object v4, v2

    :goto_62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p1, Labcd/Tz;->gn:Z

    iput-boolean p2, p0, Lcom/crashlytics/android/answers/s;->we:Z

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Custom event tracking "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/crashlytics/android/answers/s;->we:Z

    if-eqz v4, :cond_84

    move-object v4, v3

    goto :goto_85

    :cond_84
    move-object v4, v2

    :goto_85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p2, p1, Labcd/Tz;->u7:Z

    iput-boolean p2, p0, Lcom/crashlytics/android/answers/s;->J0:Z

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Predefined event tracking "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/crashlytics/android/answers/s;->J0:Z

    if-eqz v4, :cond_a6

    move-object v2, v3

    :cond_a6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Labcd/Tz;->EQ:I

    const/4 v0, 0x1

    if-le p2, v0, :cond_c7

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p2

    const-string v0, "Event sampling enabled"

    invoke-interface {p2, v1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/crashlytics/android/answers/C;

    iget v0, p1, Labcd/Tz;->EQ:I

    invoke-direct {p2, v0}, Lcom/crashlytics/android/answers/C;-><init>(I)V

    iput-object p2, p0, Lcom/crashlytics/android/answers/s;->EQ:Lcom/crashlytics/android/answers/t;

    :cond_c7
    iget p1, p1, Labcd/Tz;->DW:I

    iput p1, p0, Lcom/crashlytics/android/answers/s;->J8:I

    iget p1, p0, Lcom/crashlytics/android/answers/s;->J8:I

    int-to-long p1, p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/crashlytics/android/answers/s;->j6(JJ)V

    return-void
.end method

.method public j6(Lcom/crashlytics/android/answers/I$a;)V
    .registers 7

    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->VH:Lcom/crashlytics/android/answers/J;

    invoke-virtual {p1, v0}, Lcom/crashlytics/android/answers/I$a;->j6(Lcom/crashlytics/android/answers/J;)Lcom/crashlytics/android/answers/I;

    move-result-object p1

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/s;->we:Z

    const-string v1, "Answers"

    if-nez v0, :cond_2f

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->VH:Lcom/crashlytics/android/answers/I$b;

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Custom events tracking disabled - skipping event: "

    :goto_21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2f
    iget-boolean v0, p0, Lcom/crashlytics/android/answers/s;->J0:Z

    if-nez v0, :cond_49

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->gn:Lcom/crashlytics/android/answers/I$b;

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Predefined events tracking disabled - skipping event: "

    goto :goto_21

    :cond_49
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->EQ:Lcom/crashlytics/android/answers/t;

    invoke-interface {v0, p1}, Lcom/crashlytics/android/answers/t;->j6(Lcom/crashlytics/android/answers/I;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping filtered event: "

    goto :goto_21

    :cond_5d
    :try_start_5d
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0, p1}, Labcd/uz;->j6(Ljava/lang/Object;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_62} :catch_63

    goto :goto_7c

    :catch_63
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7c
    invoke-virtual {p0}, Lcom/crashlytics/android/answers/s;->v5()V

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->VH:Lcom/crashlytics/android/answers/I$b;

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    sget-object v0, Lcom/crashlytics/android/answers/I$b;->gn:Lcom/crashlytics/android/answers/I$b;

    iget-object v2, p1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    goto :goto_96

    :cond_94
    const/4 v0, 0x0

    goto :goto_97

    :cond_96
    :goto_96
    const/4 v0, 0x1

    :goto_97
    const-string v2, "purchase"

    iget-object v3, p1, Lcom/crashlytics/android/answers/I;->VH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/crashlytics/android/answers/s;->Ws:Z

    if-eqz v3, :cond_cc

    if-nez v0, :cond_a6

    goto :goto_cc

    :cond_a6
    if-eqz v2, :cond_ad

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/s;->QX:Z

    if-nez v0, :cond_ad

    return-void

    :cond_ad
    :try_start_ad
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->gn:Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsApiAdapter;->j6(Lcom/crashlytics/android/answers/I;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b2} :catch_b3

    goto :goto_cc

    :catch_b3
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to map event to Firebase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, p1, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_cc
    :goto_cc
    return-void
.end method

.method public j6()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/s;->Hw:Lcom/crashlytics/android/answers/D;

    invoke-virtual {v0}, Labcd/uz;->VH()Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/answers/s;->FH:Landroid/content/Context;

    const-string v2, "Failed to roll file over."

    invoke-static {v1, v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public v5()V
    .registers 5

    iget v0, p0, Lcom/crashlytics/android/answers/s;->J8:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_13

    iget v0, p0, Lcom/crashlytics/android/answers/s;->J8:I

    int-to-long v0, v0

    iget v2, p0, Lcom/crashlytics/android/answers/s;->J8:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/crashlytics/android/answers/s;->j6(JJ)V

    :cond_13
    return-void
.end method
