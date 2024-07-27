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
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0xd9b2feebc3101dbL

    const-class v0, Lcom/aide/ui/build/android/X;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x6a99a03defbf6a79L    # 3.2137859751339224E205

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6a99a03defbf6a79L    # 3.2137859751339224E205

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/build/android/X;->v5:Ljava/util/Queue;

    new-instance v0, Lcom/aide/ui/build/android/S;

    invoke-direct {v0, p0}, Lcom/aide/ui/build/android/S;-><init>(Lcom/aide/ui/build/android/X;)V

    iput-object v0, p0, Lcom/aide/ui/build/android/X;->Zo:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/build/android/X;->FH:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    return-object v0
.end method

.method private DW(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x574b70080e3b480L
    .end annotation

    const-wide v2, -0xaaffbe0568c593L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xaaffbe0568c593L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/android/U;

    invoke-direct {v0, p0, p1}, Lcom/aide/ui/build/android/U;-><init>(Lcom/aide/ui/build/android/X;Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic FH(Lcom/aide/ui/build/android/X;)Ljava/util/Queue;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/build/android/X;->v5:Ljava/util/Queue;

    return-object v0
.end method

.method private FH()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x427939e0bf253e8fL
    .end annotation

    const-wide v2, 0x25c187b62287d420L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x25c187b62287d420L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/android/T;

    invoke-direct {v0, p0}, Lcom/aide/ui/build/android/T;-><init>(Lcom/aide/ui/build/android/X;)V

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic Hw(Lcom/aide/ui/build/android/X;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/build/android/X;->Zo:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/build/android/X;)Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/build/android/X;->Hw:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    return-object v0
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

    const-wide v4, -0x19e31894ebf00a91L    # -7.676000333066158E183

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19e31894ebf00a91L    # -7.676000333066158E183

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/android/X;->Hw:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/aide/ui/build/packagingservice/ExternalPackagingService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/aide/ui/build/android/X;->Zo:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Could not bind to service"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/build/android/X;->v5:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic v5(Lcom/aide/ui/build/android/X;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/build/android/X;->FH()V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0x1cf459e3f1f7a734L    # -1.30432224746631E169

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1cf459e3f1f7a734L    # -1.30432224746631E169

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/build/android/W;

    invoke-direct {v0, p0}, Lcom/aide/ui/build/android/W;-><init>(Lcom/aide/ui/build/android/X;)V

    invoke-direct {p0, v0}, Lcom/aide/ui/build/android/X;->j6(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, 0x21f454d13b0278fdL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x21f454d13b0278fdL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/android/X;->FH:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;->j6(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    .registers 6

    const-wide v2, 0x19b46987f532d070L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19b46987f532d070L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/build/android/X;->DW(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/build/android/X;->FH:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    iget-object v0, p0, Lcom/aide/ui/build/android/X;->Hw:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/build/android/X;->Hw:Lcom/aide/ui/build/packagingservice/IExternalPackagingService;

    iget-object v1, p0, Lcom/aide/ui/build/android/X;->FH:Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;

    invoke-interface {v0, v1}, Lcom/aide/ui/build/packagingservice/IExternalPackagingService;->j6(Lcom/aide/ui/build/packagingservice/IExternalPackagingServiceListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/android/X;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .registers 37

    invoke-static/range {p4 .. p4}, Lio/github/zeroaicy/aide/CompileOnlyJar;->filterCompileOnlyJar([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    sget-boolean v2, Lcom/aide/ui/build/android/X;->j6:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x6a391b45ea1b8b94L    # -9.127344927042216E-204

    const/16 v4, 0x10

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object v7, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    const/4 v5, 0x6

    aput-object p7, v4, v5

    const/4 v5, 0x7

    aput-object p8, v4, v5

    const/16 v5, 0x8

    aput-object p9, v4, v5

    const/16 v5, 0x9

    aput-object p10, v4, v5

    const/16 v5, 0xa

    aput-object p11, v4, v5

    const/16 v5, 0xb

    aput-object p12, v4, v5

    const/16 v5, 0xc

    aput-object p13, v4, v5

    const/16 v5, 0xd

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p14

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/16 v5, 0xe

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p15

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/16 v5, 0xf

    new-instance v6, Ljava/lang/Boolean;

    move/from16 v0, p16

    invoke-direct {v6, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Lcom/aide/ui/build/android/V;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    invoke-direct/range {v2 .. v19}, Lcom/aide/ui/build/android/V;-><init>(Lcom/aide/ui/build/android/X;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/aide/ui/build/android/X;->j6(Ljava/lang/Runnable;)V

    return-void
.end method
