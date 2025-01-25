.class Lcom/crashlytics/android/answers/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/answers/q$a;
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/crashlytics/android/answers/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile FH:Z

.field final Hw:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/concurrent/ScheduledExecutorService;

.field v5:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/answers/q;->DW:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/q;->FH:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/crashlytics/android/answers/q;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/q;->v5:Z

    iput-object p1, p0, Lcom/crashlytics/android/answers/q;->j6:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private FH()V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/answers/q;->DW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/q$a;

    invoke-interface {v1}, Lcom/crashlytics/android/answers/q$a;->j6()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic j6(Lcom/crashlytics/android/answers/q;)V
    .registers 1

    invoke-direct {p0}, Lcom/crashlytics/android/answers/q;->FH()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/q;->v5:Z

    iget-object v1, p0, Lcom/crashlytics/android/answers/q;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_11

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_11
    return-void
.end method

.method public j6()V
    .registers 7

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/q;->FH:Z

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/q;->v5:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/q;->v5:Z

    :try_start_b
    iget-object v0, p0, Lcom/crashlytics/android/answers/q;->Hw:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/crashlytics/android/answers/q;->j6:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/crashlytics/android/answers/p;

    invoke-direct {v2, p0}, Lcom/crashlytics/android/answers/p;-><init>(Lcom/crashlytics/android/answers/q;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Labcd/XG$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_b .. :try_end_20} :catch_21

    goto :goto_2d

    :catch_21
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to schedule background detector"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public j6(Lcom/crashlytics/android/answers/q$a;)V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/answers/q;->DW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/crashlytics/android/answers/q;->FH:Z

    return-void
.end method
