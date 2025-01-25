.class public Labcd/Xj;
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
.field private FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;
    .annotation runtime Labcd/ru;
        field = 0x2841a17408a7b383L
    .end annotation
.end field

.field private Hw:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation runtime Labcd/ru;
        field = -0x2238ac178216c630L
    .end annotation
.end field

.field private Zo:Landroid/content/ServiceConnection;
    .annotation runtime Labcd/ru;
        field = 0xcc9856ff7843279L
    .end annotation
.end field

.field private v5:Z
    .annotation runtime Labcd/ru;
        field = 0x445384f92bf3f494L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Xj;

    const-wide v1, 0xd208e29057b8e3fL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2819f4b63084d637L  # -2.714317400363844E115

    :try_start_6
    sget-boolean v3, Labcd/Xj;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Labcd/Xj;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    iput-boolean v3, p0, Labcd/Xj;->v5:Z

    new-instance v3, Labcd/Tj;

    invoke-direct {v3, p0}, Labcd/Tj;-><init>(Labcd/Xj;)V

    iput-object v3, p0, Labcd/Xj;->Zo:Landroid/content/ServiceConnection;
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v3

    sget-boolean v4, Labcd/Xj;->DW:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method static synthetic j6(Labcd/Xj;Lcom/aide/engine/service/ICodeAnalysisEngineService;)Lcom/aide/engine/service/ICodeAnalysisEngineService;
    .registers 2

    iput-object p1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    return-object p1
.end method

.method static synthetic j6(Labcd/Xj;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/Xj;->v5:Z

    return p0
.end method


# virtual methods
.method public DW(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x159225c22a9ff6ebL  # 9.043980526459618E-205

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/Xj;->Hw:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_21

    :try_start_12
    iget-object v1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v1, :cond_18

    const/4 p1, -0x1

    return p1

    :cond_18
    invoke-interface {v1, p1, p2, v0}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1c
    .catchall {:try_start_12 .. :try_end_1b} :catchall_21

    goto :goto_20

    :catch_1c
    move-exception v1

    :try_start_1d
    invoke-static {v1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    :goto_20
    return v0

    :catchall_21
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_32

    const-wide v2, 0x159225c22a9ff6ebL  # 9.043980526459618E-205

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v0
.end method

.method public DW(Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x4c4cdb36a9dbb388L  # 3.622678973799444E59

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2d

    :cond_1d
    const/4 v0, 0x0

    :try_start_1e
    iget-object v1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v1, :cond_23

    return-object v0

    :cond_23
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_2d

    return-object p1

    :catch_28
    move-exception v1

    :try_start_29
    invoke-static {v1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    return-object v0

    :catchall_2d
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0x4c4cdb36a9dbb388L  # 3.622678973799444E59

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method public DW()V
    .registers 5

    const-wide v0, -0xc6b5dd097f3cc14L  # -5.770721202448301E248

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->build()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public DW(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x1a051a4fe4561130L

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->VH(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public DW(Ljava/lang/String;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xfad28cd69fc7bd1L  # -1.1700158654864887E233

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_1f

    :cond_11
    :try_start_11
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1a
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    goto :goto_1e

    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    :goto_1e
    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, -0xfad28cd69fc7bd1L  # -1.1700158654864887E233

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public DW(Ljava/lang/String;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xe6d5f2cf82ae445L  # -1.2130199247517217E239

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_26

    :cond_18
    :try_start_18
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-interface {v0, p1, p2, p3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Hw(Ljava/lang/String;II)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21
    .catchall {:try_start_18 .. :try_end_20} :catchall_26

    goto :goto_25

    :catch_21
    move-exception v0

    :try_start_22
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    :goto_25
    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, -0xe6d5f2cf82ae445L  # -1.2130199247517217E239

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public DW(Ljava/lang/String;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x594aa2d57be40c77L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_35

    :cond_22
    :try_start_22
    iget-object v1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v1, :cond_27

    return-void

    :cond_27
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;IIII)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2f} :catch_30
    .catchall {:try_start_22 .. :try_end_2f} :catchall_35

    goto :goto_34

    :catch_30
    move-exception v0

    :try_start_31
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    :goto_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x594aa2d57be40c77L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public EQ()V
    .registers 5

    const-wide v0, -0x642230e0358ba88L  # -2.646856677751276E278

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->hK()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public FH(Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x14cb0be851b14ca4L  # 1.645372768432575E-208

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2d

    :cond_1d
    const/4 v0, 0x0

    :try_start_1e
    iget-object v1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v1, :cond_23

    return-object v0

    :cond_23
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_2d

    return-object p1

    :catch_28
    move-exception v1

    :try_start_29
    invoke-static {v1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    return-object v0

    :catchall_2d
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, 0x14cb0be851b14ca4L  # 1.645372768432575E-208

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method public FH()V
    .registers 8

    const-wide v0, 0x251a0e85129abf10L  # 5.873562509787369E-130

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-static {}, Lcom/aide/ui/aa;->ei()I

    move-result v3

    invoke-static {}, Lcom/aide/ui/aa;->P8()I

    move-result v4

    invoke-static {}, Lcom/aide/ui/aa;->U2()Ljava/util/Map;

    move-result-object v5

    invoke-static {}, Lcom/aide/ui/aa;->Zo()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(IILjava/util/Map;Ljava/util/Map;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_24} :catch_25
    .catchall {:try_start_c .. :try_end_24} :catchall_2a

    goto :goto_29

    :catch_25
    move-exception v2

    :try_start_26
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    :goto_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public FH(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x46e59f26d4eead78L  # 3.508319178929786E33

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->tp(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public FH(Ljava/lang/String;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x360be9b0a161846fL  # -1.834837534058163E48

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_1f

    :cond_11
    :try_start_11
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Zo(Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1a
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    goto :goto_1e

    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    :goto_1e
    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, -0x360be9b0a161846fL  # -1.834837534058163E48

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public FH(Ljava/lang/String;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x10e6e853577d2b90L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_26

    :cond_18
    :try_start_18
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-interface {v0, p1, p2, p3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Ljava/lang/String;II)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21
    .catchall {:try_start_18 .. :try_end_20} :catchall_26

    goto :goto_25

    :catch_21
    move-exception v0

    :try_start_22
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    :goto_25
    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, -0x10e6e853577d2b90L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public FH(Ljava/lang/String;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x11dc9edc1f095c70L  # -3.50258225967917E222

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_35

    :cond_22
    :try_start_22
    iget-object v1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v1, :cond_27

    return-void

    :cond_27
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Zo(Ljava/lang/String;IIII)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2f} :catch_30
    .catchall {:try_start_22 .. :try_end_2f} :catchall_35

    goto :goto_34

    :catch_30
    move-exception v0

    :try_start_31
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    :goto_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x11dc9edc1f095c70L  # -3.50258225967917E222

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public FH(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x14672f563c7d5300L  # -2.03954293521371E210

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->FH(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v0

    :try_start_16
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x14672f563c7d5300L  # -2.03954293521371E210

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public Hw(Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1ae478f81fa6ea99L  # -1.1154847672335937E179

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2d

    :cond_1d
    const/4 v0, 0x0

    :try_start_1e
    iget-object v1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v1, :cond_23

    return-object v0

    :cond_23
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->FH(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28
    .catchall {:try_start_1e .. :try_end_27} :catchall_2d

    return-object p1

    :catch_28
    move-exception v1

    :try_start_29
    invoke-static {v1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    return-object v0

    :catchall_2d
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, -0x1ae478f81fa6ea99L  # -1.1154847672335937E179

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    throw v0
.end method

.method protected Hw()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x19a52691aea8ed68L
    .end annotation

    const-wide v0, -0x1e59d9d722006130L

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_82

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-nez v2, :cond_42

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Labcd/FileSystemUtils;->getInternalCacheDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/enginecache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3a

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_3a
    iget-object v3, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    const v4, 0x5f5e100

    invoke-interface {v3, v2, v4}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->FH(Ljava/lang/String;I)V

    :cond_42
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    new-instance v3, Labcd/Wj;

    invoke-direct {v3, p0}, Labcd/Wj;-><init>(Labcd/Xj;)V

    invoke-interface {v2, v3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/q;)V

    invoke-virtual {p0}, Labcd/Xj;->FH()V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_4f} :catch_50
    .catchall {:try_start_c .. :try_end_4f} :catchall_82

    goto :goto_54

    :catch_50
    move-exception v2

    :try_start_51
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :goto_54
    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ck;->gn()V

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->v5()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->XL()V

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/build/d;->Zo()V

    invoke-static {}, Lcom/aide/ui/U;->P8()Labcd/ol;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ol;->j6()V

    invoke-static {}, Lcom/aide/ui/U;->nw()Labcd/ul;

    move-result-object v2

    invoke-virtual {v2}, Labcd/ul;->DW()V

    invoke-virtual {p0}, Labcd/Xj;->VH()V
    :try_end_81
    .catchall {:try_start_51 .. :try_end_81} :catchall_82

    return-void

    :catchall_82
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_8a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8a
    throw v2
.end method

.method public Hw(Ljava/lang/String;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x15bac2759325f3ffL  # 5.334364305778926E-204

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_26

    :cond_18
    :try_start_18
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-interface {v0, p1, p2, p3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Zo(Ljava/lang/String;II)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21
    .catchall {:try_start_18 .. :try_end_20} :catchall_26

    goto :goto_25

    :catch_21
    move-exception v0

    :try_start_22
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    :goto_25
    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, 0x15bac2759325f3ffL  # 5.334364305778926E-204

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public Hw(Ljava/lang/String;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1a8eae23f05e1898L  # -4.491789427876942E180

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_35

    :cond_22
    :try_start_22
    iget-object v1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v1, :cond_27

    return-void

    :cond_27
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->v5(Ljava/lang/String;IIII)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2f} :catch_30
    .catchall {:try_start_22 .. :try_end_2f} :catchall_35

    goto :goto_34

    :catch_30
    move-exception v0

    :try_start_31
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    :goto_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0x1a8eae23f05e1898L  # -4.491789427876942E180

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public J0()V
    .registers 5

    const-wide v0, -0xb333ea54a755f5L

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->mb()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public J8()V
    .registers 5

    const-wide v0, 0x2ae007c64ad8918fL  # 3.578615265732211E-102

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1b

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Labcd/Xj;->Zo:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16
    .catchall {:try_start_c .. :try_end_15} :catchall_1b

    goto :goto_1a

    :catch_16
    move-exception v2

    :try_start_17
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    :goto_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, -0x1a68a3e018b29f37L  # -2.423302756599397E181

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->sg()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public Zo()V
    .registers 5

    const-wide v0, -0x1ad170952669d29fL  # -2.4767602715292444E179

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Jl()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public Zo(Ljava/lang/String;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x30b3011a39c2cc65L  # 4.201584474299299E-74

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_26

    :cond_18
    :try_start_18
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-interface {v0, p1, p2, p3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;II)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21
    .catchall {:try_start_18 .. :try_end_20} :catchall_26

    goto :goto_25

    :catch_21
    move-exception v0

    :try_start_22
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    :goto_25
    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, 0x30b3011a39c2cc65L  # 4.201584474299299E-74

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public Zo(Ljava/lang/String;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xc32cec3d4ef5708L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_35

    :cond_22
    :try_start_22
    iget-object v1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v1, :cond_27

    return-void

    :cond_27
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Ljava/lang/String;IIII)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2f} :catch_30
    .catchall {:try_start_22 .. :try_end_2f} :catchall_35

    goto :goto_34

    :catch_30
    move-exception v0

    :try_start_31
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    :goto_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, 0xc32cec3d4ef5708L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public gn()V
    .registers 5

    const-wide v0, -0x147d8952a26fab0dL  # -7.587574609885183E209

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->er()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Ljava/lang/String;IICI)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IICI)",
            "Ljava/util/List<",
            "Lcom/aide/engine/Modification;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p4}, Ljava/lang/Character;-><init>(C)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x45eeb3c8afbbe294L  # -5.458197713002292E-29

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_37

    :cond_22
    const/4 v0, 0x0

    :try_start_23
    iget-object v1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v1, :cond_28

    return-object v0

    :cond_28
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;IICI)Ljava/util/List;

    move-result-object p1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_31} :catch_32
    .catchall {:try_start_23 .. :try_end_31} :catchall_37

    return-object p1

    :catch_32
    move-exception v1

    :try_start_33
    invoke-static {v1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    return-object v0

    :catchall_37
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_5b

    const-wide v2, -0x45eeb3c8afbbe294L  # -5.458197713002292E-29

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Character;

    invoke-direct {v8, p4}, Ljava/lang/Character;-><init>(C)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v0
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0x39458461e49f9040L  # -5.3713664541215545E32

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Labcd/Xj;->Zo:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "Could not bind to engine service"

    invoke-static {v2}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_2a

    :cond_29
    return-void

    :catchall_2a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_32

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public j6(Lcom/aide/engine/EngineSolution;)V
    .registers 7

    const-wide v0, -0x12da17bd51bb68cL  # -7.87310417014404E302

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_37

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/EngineSolution;)V

    iget-object v2, p1, Lcom/aide/engine/EngineSolution;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/EngineSolutionProject;

    iget-object v4, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    invoke-interface {v4, v3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/EngineSolutionProject;)V

    goto :goto_1a

    :cond_2c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    invoke-interface {v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->e3()V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_31} :catch_32
    .catchall {:try_start_c .. :try_end_31} :catchall_37

    goto :goto_36

    :catch_32
    move-exception v2

    :try_start_33
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    :goto_36
    return-void

    :catchall_37
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_3f

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v2

    :goto_41
    goto :goto_40
.end method

.method public j6(Lcom/aide/engine/SourceEntity;)V
    .registers 6

    const-wide v0, 0x2ad3bb0411703cfcL

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Lcom/aide/engine/SourceEntity;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/engine/SyntaxError;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x43e009d37e114b18L  # -4.331606773475015E-19

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_1f

    :cond_11
    :try_start_11
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/SyntaxError;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1a
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    goto :goto_1e

    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    :goto_1e
    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, -0x43e009d37e114b18L  # -4.331606773475015E-19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public j6(Lcom/aide/engine/service/m;)V
    .registers 6

    const-wide v0, 0x33ae7bae5133a350L  # 9.48484875574426E-60

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/m;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/o;)V
    .registers 6

    const-wide v0, 0x1597d1048b3126dL

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/o;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/p;)V
    .registers 6

    const-wide v0, 0x4631387de581ef03L  # 1.364362122838718E30

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/p;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/r;)V
    .registers 6

    const-wide v0, -0x22d327c2a7d59bc4L  # -6.869953676870137E140

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/r;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/s;)V
    .registers 6

    const-wide v0, -0xdecd04e0e28b210L  # -3.19836462822681E241

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/s;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/t;)V
    .registers 6

    const-wide v0, -0x431e02d46609544L

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/t;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/v;)V
    .registers 6

    const-wide v0, -0xb68b6f2374947bL

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/v;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/w;)V
    .registers 6

    const-wide v0, -0x12a3f394d460aa00L  # -6.18823317042354E218

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Lcom/aide/engine/service/w;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x96548517120b2e3L

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2, p1}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->u7(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Ljava/lang/String;I)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x82f82538adab55L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_1f

    :cond_11
    :try_start_11
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_16

    return-void

    :cond_16
    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Hw(Ljava/lang/String;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_19} :catch_1a
    .catchall {:try_start_11 .. :try_end_19} :catchall_1f

    goto :goto_1e

    :catch_1a
    move-exception v0

    :try_start_1b
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    :goto_1e
    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x82f82538adab55L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public j6(Ljava/lang/String;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x14301750da0ec50L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_26

    :cond_18
    :try_start_18
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-interface {v0, p1, p2, p3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->FH(Ljava/lang/String;II)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21
    .catchall {:try_start_18 .. :try_end_20} :catchall_26

    goto :goto_25

    :catch_21
    move-exception v0

    :try_start_22
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    :goto_25
    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, -0x14301750da0ec50L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public j6(Ljava/lang/String;III)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1b744f3426fbad1dL  # 2.00474629234357E-176

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2b

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_22

    return-void

    :cond_22
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Hw(Ljava/lang/String;III)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_26
    .catchall {:try_start_1d .. :try_end_25} :catchall_2b

    goto :goto_2a

    :catch_26
    move-exception v0

    :try_start_27
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    :goto_2a
    return-void

    :catchall_2b
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_4a

    const-wide v2, 0x1b744f3426fbad1dL  # 2.00474629234357E-176

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v0
.end method

.method public j6(Ljava/lang/String;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x26e85d86d599b840L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_35

    :cond_22
    :try_start_22
    iget-object v1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v1, :cond_27

    return-void

    :cond_27
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->FH(Ljava/lang/String;IIII)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2f} :catch_30
    .catchall {:try_start_22 .. :try_end_2f} :catchall_35

    goto :goto_34

    :catch_30
    move-exception v0

    :try_start_31
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    :goto_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, 0x26e85d86d599b840L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public j6(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .registers 19

    move-object v1, p0

    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    new-instance v2, Ljava/lang/Integer;

    move v5, p2

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    move v6, p3

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    move v7, p4

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v8, p5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object p6, v0, v2

    const/4 v2, 0x6

    aput-object p7, v0, v2

    const-wide v2, -0x32740e7e9a5892b3L  # -3.6784768221624105E65

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_44

    :cond_3f
    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    :goto_44
    :try_start_44
    iget-object v3, v1, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v3, :cond_49

    return-void

    :cond_49
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :goto_5b
    return-void
.end method

.method public j6(Ljava/lang/String;IILcom/aide/engine/SourceEntity;)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x24af5b61232c904L

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_27

    :cond_19
    :try_start_19
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;IILcom/aide/engine/SourceEntity;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_21} :catch_22
    .catchall {:try_start_19 .. :try_end_21} :catchall_27

    goto :goto_26

    :catch_22
    move-exception v0

    :try_start_23
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    :goto_26
    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x24af5b61232c904L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public j6(Ljava/lang/String;IIZ)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x1267b93ccd1dace1L  # -8.56961720529448E219

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_2b

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_22

    return-void

    :cond_22
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;IIZ)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_26
    .catchall {:try_start_1d .. :try_end_25} :catchall_2b

    goto :goto_2a

    :catch_26
    move-exception v0

    :try_start_27
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    :goto_2a
    return-void

    :catchall_2b
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_4a

    const-wide v2, -0x1267b93ccd1dace1L  # -8.56961720529448E219

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v0
.end method

.method public j6(Ljava/lang/String;Lcom/aide/engine/SourceEntity;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x52d88aecaa50333L  # -4.290527733433095E283

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;Lcom/aide/engine/SourceEntity;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v0

    :try_start_16
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x52d88aecaa50333L  # -4.290527733433095E283

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public j6(Ljava/lang/String;Lcom/aide/engine/service/u;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x385ec7f86f08b464L  # 3.6183049772874653E-37

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;Lcom/aide/engine/service/u;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v0

    :try_start_16
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x385ec7f86f08b464L  # 3.6183049772874653E-37

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x37c455fb267fd900L  # 4.6688852859924305E-40

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->v5(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v0

    :try_start_16
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x37c455fb267fd900L  # 4.6688852859924305E-40

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 17

    move-object v1, p0

    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_3c

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    new-instance v2, Ljava/lang/Integer;

    move v6, p3

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    move v7, p4

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    move v8, p5

    invoke-direct {v2, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v9, p6

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-wide v2, 0x3bb725f6c4148468L  # 4.9018424731259396E-21

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_41

    :cond_3c
    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    :goto_41
    :try_start_41
    iget-object v3, v1, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v3, :cond_46

    return-void

    :cond_46
    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->j6(Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :goto_55
    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x52d16a4742acf1a8L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_11

    return-void

    :cond_11
    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->DW(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v0

    :try_start_16
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x52d16a4742acf1a8L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public tp()V
    .registers 5

    const-wide v0, 0x10de768b7034cfe8L  # 2.009263459036512E-227

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->I()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public u7()V
    .registers 5

    const-wide v0, -0xede631fe75f6df0L  # -8.960141563942693E236

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1d

    :cond_c
    const/4 v2, 0x1

    :try_start_d
    iput-boolean v2, p0, Labcd/Xj;->v5:Z

    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_14

    return-void

    :cond_14
    invoke-interface {v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->shutdown()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18
    .catchall {:try_start_d .. :try_end_17} :catchall_1d

    goto :goto_1c

    :catch_18
    move-exception v2

    :try_start_19
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    :goto_1c
    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public v5()V
    .registers 5

    const-wide v0, -0x630765de600aea1L

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->kf()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public v5(Ljava/lang/String;II)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x14e9fbb66317bed9L  # -7.068547843849342E207

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_26

    :cond_18
    :try_start_18
    iget-object v0, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-interface {v0, p1, p2, p3}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->v5(Ljava/lang/String;II)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_20} :catch_21
    .catchall {:try_start_18 .. :try_end_20} :catchall_26

    goto :goto_25

    :catch_21
    move-exception v0

    :try_start_22
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    :goto_25
    return-void

    :catchall_26
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_40

    const-wide v2, -0x14e9fbb66317bed9L  # -7.068547843849342E207

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_40
    throw v0
.end method

.method public v5(Ljava/lang/String;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Xj;->j6:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xe6a0384499edc15L  # -1.4316866896497931E239

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_35

    :cond_22
    :try_start_22
    iget-object v1, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v1, :cond_27

    return-void

    :cond_27
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->Hw(Ljava/lang/String;IIII)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2f} :catch_30
    .catchall {:try_start_22 .. :try_end_2f} :catchall_35

    goto :goto_34

    :catch_30
    move-exception v0

    :try_start_31
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    :goto_34
    return-void

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/Xj;->DW:Z

    if-eqz v1, :cond_59

    const-wide v2, -0xe6a0384499edc15L  # -1.4316866896497931E239

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    throw v0
.end method

.method public we()V
    .registers 5

    const-wide v0, -0x29ecf47338a84ea0L  # -4.3679949164849294E106

    :try_start_5
    sget-boolean v2, Labcd/Xj;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    :cond_c
    :try_start_c
    iget-object v2, p0, Labcd/Xj;->FH:Lcom/aide/engine/service/ICodeAnalysisEngineService;

    if-nez v2, :cond_11

    return-void

    :cond_11
    invoke-interface {v2}, Lcom/aide/engine/service/ICodeAnalysisEngineService;->cT()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15
    .catchall {:try_start_c .. :try_end_14} :catchall_1a

    goto :goto_19

    :catch_15
    move-exception v2

    :try_start_16
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1a

    :goto_19
    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Labcd/Xj;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method
