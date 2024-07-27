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
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
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

    iget-object v0, p0, Labcd/jA;->DW:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public FH()Z
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/jA;->FH:Labcd/lA;

    invoke-interface {v0}, Labcd/lA;->j6()Labcd/mA;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/jA;->j6(Labcd/mA;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Hw()Z
    .registers 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/jA;->FH:Labcd/lA;

    sget-object v1, Labcd/kA;->DW:Labcd/kA;

    invoke-interface {v0, v1}, Labcd/lA;->j6(Labcd/kA;)Labcd/mA;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/jA;->j6(Labcd/mA;)V

    if-nez v0, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Failed to force reload of settings from Crashlytics."

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j6(Lio/fabric/sdk/android/Kit;Lio/fabric/sdk/android/services/common/v;Labcd/Jz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/common/l;)Labcd/jA;
    .registers 27

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Labcd/jA;->Hw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit p0

    :goto_0
    return-object p0

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Labcd/jA;->FH:Labcd/lA;

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->FH()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Lio/fabric/sdk/android/services/common/f;

    invoke-direct {v5}, Lio/fabric/sdk/android/services/common/f;-><init>()V

    invoke-virtual {v5, v4}, Lio/fabric/sdk/android/services/common/f;->Hw(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->Zo()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lio/fabric/sdk/android/services/common/C;

    invoke-direct {v15}, Lio/fabric/sdk/android/services/common/C;-><init>()V

    new-instance v16, Labcd/cA;

    invoke-direct/range {v16 .. v16}, Labcd/cA;-><init>()V

    new-instance v17, Labcd/aA;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Labcd/aA;-><init>(Lio/fabric/sdk/android/Kit;)V

    invoke-static {v4}, Lio/fabric/sdk/android/services/common/i;->FH(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v18, Labcd/dA;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v6, v3}, Labcd/dA;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;)V

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->VH()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->gn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->u7()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lio/fabric/sdk/android/services/common/v;->Hw()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v4}, Lio/fabric/sdk/android/services/common/i;->J8(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v12

    invoke-static {v10}, Lio/fabric/sdk/android/services/common/i;->j6([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11}, Lio/fabric/sdk/android/services/common/m;->j6(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/m;

    move-result-object v4

    invoke-virtual {v4}, Lio/fabric/sdk/android/services/common/m;->getId()I

    move-result v13

    new-instance v4, Labcd/pA;

    move-object/from16 v11, p5

    move-object/from16 v12, p4

    invoke-direct/range {v4 .. v14}, Labcd/pA;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Labcd/bA;

    move-object/from16 v6, p1

    move-object v7, v4

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Labcd/bA;-><init>(Lio/fabric/sdk/android/Kit;Labcd/pA;Lio/fabric/sdk/android/services/common/k;Labcd/oA;Labcd/Zz;Labcd/qA;Lio/fabric/sdk/android/services/common/l;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Labcd/jA;->FH:Labcd/lA;

    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Labcd/jA;->Hw:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
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
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Interrupted while waiting for settings data."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->DW(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
