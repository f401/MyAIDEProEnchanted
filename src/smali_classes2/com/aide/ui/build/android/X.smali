.class public Lcom/aide/ui/build/android/X;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    .annotation runtime Labcd/ru;
        field = 0x18b43f84e86b0381L
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    .annotation runtime Labcd/ru;
        field = 0x5afeb1cbe50ec4d3L
    .end annotation
.end field

.field private Zo:Landroid/content/ServiceConnection;
    .annotation runtime Labcd/ru;
        field = -0x1cd7c370c702103L
    .end annotation
.end field

.field private v5:Ljava/util/Queue;
    .annotation runtime Labcd/ru;
        field = 0x3613fb84a77d4314L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/android/X;

    const-wide v1, 0xd9b2feebc3101dbL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x6a99a03defbf6a79L  # 3.2137859751339224E205

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/build/android/X;->v5:Ljava/util/Queue;

    new-instance v3, Lcom/aide/ui/build/android/S;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/android/S;-><init>(Lcom/aide/ui/build/android/X;)V

    iput-object v3, p0, Lcom/aide/ui/build/android/X;->Zo:Landroid/content/ServiceConnection;
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/X;->FH:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    return-object p0
.end method

.method private DW(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x574b70080e3b480L
    .end annotation

    const-wide v0, -0xaaffbe0568c593L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/android/U;

    invoke-direct {v2, p0, p1}, Lcom/aide/ui/build/android/U;-><init>(Lcom/aide/ui/build/android/X;Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-object v2

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method static synthetic FH(Lcom/aide/ui/build/android/X;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/X;->v5:Ljava/util/Queue;

    return-object p0
.end method

.method private FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x427939e0bf253e8fL
    .end annotation

    const-wide v0, 0x25c187b62287d420L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/android/T;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/android/T;-><init>(Lcom/aide/ui/build/android/X;)V

    invoke-static {v2}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method static synthetic Hw(Lcom/aide/ui/build/android/X;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/X;->Zo:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/android/X;->Hw:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/X;Lcom/aide/ui/build/packagingservice/IExternalPackagingService;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/android/X;->Hw:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    return-object p1
.end method

.method private j6(Ljava/lang/Runnable;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x28174faf4ecaf08L
    .end annotation

    const-wide v0, -0x19e31894ebf00a91L  # -7.676000333066158E183

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/android/X;->Hw:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    if-nez v2, :cond_36

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getExternalPackagingServiceClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/aide/ui/build/android/X;->Zo:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "Could not bind to service"

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    return-void

    :cond_30
    iget-object v2, p0, Lcom/aide/ui/build/android/X;->v5:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_36
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3a

    :goto_39
    return-void

    :catchall_3a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v3, :cond_42

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method

.method static synthetic v5(Lcom/aide/ui/build/android/X;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/X;->FH()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, -0x1cf459e3f1f7a734L  # -1.30432224746631E169

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/build/android/W;

    invoke-direct {v2, p0}, Lcom/aide/ui/build/android/W;-><init>(Lcom/aide/ui/build/android/X;)V

    invoke-direct {p0, v2}, Lcom/aide/ui/build/android/X;->j6(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x21f454d13b0278fdL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_18

    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/aide/ui/build/android/X;->FH:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;->j6(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13
    .catchall {:try_start_c .. :try_end_12} :catchall_18

    goto :goto_17

    :catch_13
    move-exception v2

    :try_start_14
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    :goto_17
    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public j6(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    .registers 6

    const-wide v0, 0x19b46987f532d070L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/build/android/X;->DW(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/build/android/X;->FH:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    iget-object v3, p0, Lcom/aide/ui/build/android/X;->Hw:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1f

    if-eqz v3, :cond_1e

    :try_start_16
    invoke-interface {v3, v2}, Lcom/aide/ui/build/packagingservice/IExternalPackagingService;->j6(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1a
    .catchall {:try_start_16 .. :try_end_19} :catchall_1f

    goto :goto_1e

    :catch_1a
    move-exception v2

    :try_start_1b
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    :cond_1e
    :goto_1e
    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public j6(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 36

    move-object/from16 v15, p0

    invoke-static/range {p4 .. p4}, Lio/github/zeroaicy/aide/CompileOnlyJar;->filterCompileOnlyJar([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    sget-boolean v0, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v0, :cond_64

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const/4 v1, 0x6

    aput-object p7, v0, v1

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    const/16 v1, 0xa

    aput-object p11, v0, v1

    const/16 v1, 0xb

    aput-object p12, v0, v1

    const/16 v1, 0xc

    aput-object p13, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    move/from16 v14, p14

    invoke-direct {v1, v14}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Boolean;

    move/from16 v13, p15

    invoke-direct {v1, v13}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Boolean;

    move/from16 v12, p16

    invoke-direct {v1, v12}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-wide v1, -0x6a391b45ea1b8b94L  # -9.127344927042216E-204

    invoke-static {v1, v2, v15, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_6a

    :cond_64
    move/from16 v14, p14

    move/from16 v13, p15

    move/from16 v12, p16

    :goto_6a
    new-instance v11, Lcom/aide/ui/build/android/V;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v18, v11

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    invoke-direct/range {v0 .. v17}, Lcom/aide/ui/build/android/V;-><init>(Lcom/aide/ui/build/android/X;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/aide/ui/build/android/X;->j6(Ljava/lang/Runnable;)V

    return-void
.end method
