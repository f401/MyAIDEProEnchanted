.class public Labcd/jA;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/jA$a;
    }
.end annotation


# instance fields
.field private final DW:Ljava/util/concurrent/CountDownLatch;

.field private FH:Labcd/lA;

.field private Hw:Z

.field private final j6:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Labcd/mA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Labcd/jA;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Labcd/jA;->DW:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/jA;->Hw:Z

    return-void
.end method

.method synthetic constructor <init>(Labcd/iA;)V
    .registers 2

    invoke-direct {p0}, Labcd/jA;-><init>()V

    return-void
.end method

.method public static DW()Labcd/jA;
    .registers 1

    invoke-static {}, Labcd/jA$a;->j6()Labcd/jA;

    move-result-object v0

    return-object v0
.end method

.method private j6(Labcd/mA;)V
    .registers 3

    iget-object v0, p0, Labcd/jA;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Labcd/jA;->DW:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public FH()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Labcd/jA;->FH:Labcd/lA;

    invoke-interface {v0}, Labcd/lA;->j6()Labcd/mA;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/jA;->j6(Labcd/mA;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_11

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Hw()Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Labcd/jA;->FH:Labcd/lA;

    sget-object v1, Labcd/kA;->DW:Labcd/kA;

    invoke-interface {v0, v1}, Labcd/lA;->j6(Labcd/kA;)Labcd/mA;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/jA;->j6(Labcd/mA;)V

    if-nez v0, :cond_1a

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to force reload of settings from Crashlytics."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_21

    :cond_1a
    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    monitor-exit p0

    return v0

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6(Lio/fabric/sdk/android/Kit;Lio/fabric/sdk/android/services/common/v;Labcd/Jz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/common/l;)Labcd/jA;
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_5
    iget-boolean v2, v1, Labcd/jA;->Hw:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_8d

    if-eqz v2, :cond_b

    monitor-exit p0

    return-object v1

    :cond_b
    :try_start_b
    iget-object v2, v1, Labcd/jA;->FH:Labcd/lA;

    const/4 v10, 0x1

    if-nez v2, :cond_89

    invoke-virtual/range {p1 .. p1}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->FH()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lio/fabric/sdk/android/services/common/f;

    invoke-direct {v4}, Lio/fabric/sdk/android/services/common/f;-><init>()V

    invoke-virtual {v4, v2}, Lio/fabric/sdk/android/services/common/f;->Hw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->Zo()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/fabric/sdk/android/services/common/C;

    invoke-direct {v5}, Lio/fabric/sdk/android/services/common/C;-><init>()V

    new-instance v6, Labcd/cA;

    invoke-direct {v6}, Labcd/cA;-><init>()V

    new-instance v7, Labcd/aA;

    invoke-direct {v7, v0}, Labcd/aA;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v11, v13

    invoke-static {v8, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Labcd/dA;

    move-object/from16 v9, p3

    move-object/from16 v11, p6

    invoke-direct {v8, v0, v11, v3, v9}, Labcd/dA;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;)V

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->VH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->gn()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->u7()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->Hw()Ljava/lang/String;

    move-result-object v16

    new-array v9, v10, [Ljava/lang/String;

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->J8(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v13

    invoke-static {v9}, Lio/fabric/sdk/android/services/common/i;->j6([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static {v4}, Lio/fabric/sdk/android/services/common/m;->j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/m;

    move-result-object v2

    invoke-virtual {v2}, Lio/fabric/sdk/android/services/common/m;->getId()I

    move-result v20

    new-instance v4, Labcd/pA;

    move-object v11, v4

    move-object v13, v3

    move-object/from16 v18, p5

    move-object/from16 v19, p4

    invoke-direct/range {v11 .. v21}, Labcd/pA;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v11, Labcd/bA;

    move-object v2, v11

    move-object/from16 v3, p1

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Labcd/bA;-><init>(Lio/fabric/sdk/android/Kit;Labcd/pA;Lio/fabric/sdk/android/services/common/k;Labcd/oA;Labcd/Zz;Labcd/qA;Lio/fabric/sdk/android/services/common/l;)V

    iput-object v11, v1, Labcd/jA;->FH:Labcd/lA;

    :cond_89
    iput-boolean v10, v1, Labcd/jA;->Hw:Z
    :try_end_8b
    .catchall {:try_start_b .. :try_end_8b} :catchall_8d

    monitor-exit p0

    return-object v1

    :catchall_8d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6()Labcd/mA;
    .registers 4

    :try_start_0
    iget-object v0, p0, Labcd/jA;->DW:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v0, p0, Labcd/jA;->j6:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/mA;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Interrupted while waiting for settings data."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->DW(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
