.class public abstract Lcom/google/firebase/iid/zzb;
.super Landroid/app/Service;


# instance fields
.field private DW:Landroid/os/Binder;

.field private final FH:Ljava/lang/Object;

.field private Hw:I

.field final j6:Ljava/util/concurrent/ExecutorService;

.field private v5:I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Firebase-"

    if-eqz v1, :cond_1c

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_1c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_21
    new-instance v1, Labcd/mx;

    invoke-direct {v1, v0}, Labcd/mx;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/zzb;->j6:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/zzb;->FH:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/iid/zzb;->v5:I

    return-void
.end method

.method private final Hw(Landroid/content/Intent;)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-static {p1}, Landroid/support/v4/content/WakefulBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    :cond_5
    iget-object p1, p0, Lcom/google/firebase/iid/zzb;->FH:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    iget v0, p0, Lcom/google/firebase/iid/zzb;->v5:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/firebase/iid/zzb;->v5:I

    if-nez v0, :cond_15

    iget v0, p0, Lcom/google/firebase/iid/zzb;->Hw:I

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopSelfResult(I)Z

    :cond_15
    monitor-exit p1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method static synthetic j6(Lcom/google/firebase/iid/zzb;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzb;->Hw(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public DW(Landroid/content/Intent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public abstract FH(Landroid/content/Intent;)V
.end method

.method protected j6(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2

    return-object p1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string p1, "EnhancedIntentService"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "EnhancedIntentService"

    const-string v0, "Service received bind request"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object p1, p0, Lcom/google/firebase/iid/zzb;->DW:Landroid/os/Binder;

    if-nez p1, :cond_1c

    new-instance p1, Lcom/google/firebase/iid/E;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/E;-><init>(Lcom/google/firebase/iid/zzb;)V

    iput-object p1, p0, Lcom/google/firebase/iid/zzb;->DW:Landroid/os/Binder;

    :cond_1c
    iget-object p1, p0, Lcom/google/firebase/iid/zzb;->DW:Landroid/os/Binder;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object p1

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    iget-object p2, p0, Lcom/google/firebase/iid/zzb;->FH:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iput p3, p0, Lcom/google/firebase/iid/zzb;->Hw:I

    iget p3, p0, Lcom/google/firebase/iid/zzb;->v5:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/firebase/iid/zzb;->v5:I

    monitor-exit p2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2d

    invoke-virtual {p0, p1}, Lcom/google/firebase/iid/zzb;->j6(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x2

    if-nez p2, :cond_17

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzb;->Hw(Landroid/content/Intent;)V

    return p3

    :cond_17
    invoke-virtual {p0, p2}, Lcom/google/firebase/iid/zzb;->DW(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-direct {p0, p1}, Lcom/google/firebase/iid/zzb;->Hw(Landroid/content/Intent;)V

    return p3

    :cond_21
    iget-object p3, p0, Lcom/google/firebase/iid/zzb;->j6:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/firebase/iid/B;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/firebase/iid/B;-><init>(Lcom/google/firebase/iid/zzb;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x3

    return p1

    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit p2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method
