.class Lcom/aide/engine/service/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/engine/M;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/engine/service/CodeAnalysisEngineService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0xf4dba8be6aa6228L
    .end annotation
.end field

.field final Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1bd72709e548b1bdL

    const-wide v2, -0x208bfe0aff2980bL  # -6.082296649759459E298

    const-class v4, Lcom/aide/engine/service/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aide/engine/service/e;->FH:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;JII)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x119834570bbeacf9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x10158e1a8797c2b0L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->FH(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/t;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_38

    if-eqz v0, :cond_37

    :try_start_25
    iget-object v0, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->FH(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/t;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/service/t;->DW(Ljava/lang/String;JII)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_32} :catch_33
    .catchall {:try_start_25 .. :try_end_32} :catchall_38

    goto :goto_37

    :catch_33
    move-exception v0

    :try_start_34
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    :cond_37
    :goto_37
    return-void

    :catchall_38
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v1, :cond_57

    const-wide v2, 0x10158e1a8797c2b0L

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    throw v0
.end method

.method public DW(Ljava/lang/String;JIIILjava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x6d94367af46927efL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIII",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x2

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x3

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x4

    aput-object p1, v0, p2

    const/4 p1, 0x5

    aput-object p7, v0, p1

    const-wide p1, -0x22da2d44ef9859b8L  # -5.197634852903569E140

    invoke-static {p1, p2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method public DW(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xbb4b4c22dff4c2cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x385b38fdbc6eed5fL  # 3.200003802895637E-37

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/r;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_23

    if-eqz v0, :cond_22

    :try_start_14
    iget-object v0, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/r;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/r;->j6(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_1e
    .catchall {:try_start_14 .. :try_end_1d} :catchall_23

    goto :goto_22

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    :cond_22
    :goto_22
    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x385b38fdbc6eed5fL  # 3.200003802895637E-37

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public FH(Ljava/lang/String;JII)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x21fd8338b33558c5L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5039cb45bab76200L  # -1.4982380955016625E-78

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    :cond_1d
    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, -0x5039cb45bab76200L  # -1.4982380955016625E-78

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2854cddaf30e990L
    .end annotation

    const-wide v0, 0x233b65c42de1c78fL  # 5.751661769954611E-139

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/r;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_23

    if-eqz v2, :cond_22

    :try_start_14
    iget-object v2, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/r;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/service/r;->Hw(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_1e
    .catchall {:try_start_14 .. :try_end_1d} :catchall_23

    goto :goto_22

    :catch_1e
    move-exception v2

    :try_start_1f
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    :cond_22
    :goto_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4c328f2181f1d3a1L
    .end annotation

    const-wide v0, 0x36bc492631cc5b90L  # 4.9545953370162664E-45

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public Zo(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xb9703d981840551L
    .end annotation

    const-wide v0, -0x44bbcb0dbd29ad60L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public j6(Lcom/aide/engine/SourceEntity;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xa3d10a7219af2fdL
    .end annotation

    const-wide v0, 0x148374e255c8a250L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/r;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_23

    if-eqz v2, :cond_22

    :try_start_14
    iget-object v2, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/r;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/service/r;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_1e
    .catchall {:try_start_14 .. :try_end_1d} :catchall_23

    goto :goto_22

    :catch_1e
    move-exception v2

    :try_start_1f
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    :cond_22
    :goto_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public j6(Ljava/lang/String;IIIIIIII)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x12306eac435f07bcL
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_54

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x2

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x3

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x4

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x5

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x6

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p8}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x7

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p9}, Ljava/lang/Integer;-><init>(I)V

    const/16 p2, 0x8

    aput-object p1, v0, p2

    const-wide p1, -0x711b1d2461f7ef5bL  # -6.414932581734231E-237

    invoke-static {p1, p2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_54
    return-void
.end method

.method public j6(Ljava/lang/String;IIIIZ)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0xff78b398423d277L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x2

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x3

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x4

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Boolean;

    invoke-direct {p1, p6}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-wide p1, 0x1fd7b5184b0f2fd8L  # 2.762779398147129E-155

    invoke-static {p1, p2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_3a
    return-void
.end method

.method public j6(Ljava/lang/String;IILcom/aide/engine/K;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xbf64b7279ba449L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x294c8717691b9648L  # 9.489828519179684E-110

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v1, :cond_35

    const-wide v2, 0x294c8717691b9648L  # 9.489828519179684E-110

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v0
.end method

.method public j6(Ljava/lang/String;J)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x806fbf45aedd595L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, -0x14bf34d10fa12fa0L  # -4.313333266133528E208

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    :cond_11
    return-void

    :catchall_12
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, -0x14bf34d10fa12fa0L  # -4.313333266133528E208

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public j6(Ljava/lang/String;JII)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x2ca67c29abe53df7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x6adf288c46a0080L  # -2.5000909651139383E276

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->Hw(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/o;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_38

    if-eqz v0, :cond_37

    :try_start_25
    iget-object v0, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->Hw(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/o;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/aide/engine/service/o;->j6(Ljava/lang/String;JII)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_32} :catch_33
    .catchall {:try_start_25 .. :try_end_32} :catchall_38

    goto :goto_37

    :catch_33
    move-exception v0

    :try_start_34
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    :cond_37
    :goto_37
    return-void

    :catchall_38
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v1, :cond_57

    const-wide v2, -0x6adf288c46a0080L  # -2.5000909651139383E276

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_57
    throw v0
.end method

.method public j6(Ljava/lang/String;JIIILcom/aide/engine/SourceEntity;Ljava/util/List;Ljava/lang/String;)V
    .registers 22
    .annotation runtime Labcd/su;
        method = 0x18f2ea954a1ec117L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIII",
            "Lcom/aide/engine/SourceEntity;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v1, p0

    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_45

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    new-instance v2, Ljava/lang/Long;

    move-wide v5, p2

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v7, p4

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v8, p5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v9, p6

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aput-object p7, v0, v2

    const/4 v2, 0x6

    aput-object p8, v0, v2

    const/4 v2, 0x7

    aput-object p9, v0, v2

    const-wide v2, -0x18da146a3b226e68L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4c

    :cond_45
    move-wide v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    :goto_4c
    iget-object v0, v1, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->Hw(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/o;

    move-result-object v0

    if-eqz v0, :cond_b7

    :try_start_54
    iget-object v0, v1, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->Hw(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/aide/engine/service/o;->k2()V

    iget-object v0, v1, Lcom/aide/engine/service/e;->FH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_66
    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/engine/SourceEntity;

    iget-object v3, v1, Lcom/aide/engine/service/e;->FH:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/aide/engine/service/e;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_66

    iget-object v2, v1, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->Hw(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/o;

    move-result-object v2

    iget-object v3, v1, Lcom/aide/engine/service/e;->FH:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/aide/engine/service/o;->Hw(Ljava/util/List;)V

    iget-object v2, v1, Lcom/aide/engine/service/e;->FH:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_66

    :cond_92
    iget-object v0, v1, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->Hw(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/o;

    move-result-object v0

    iget-object v2, v1, Lcom/aide/engine/service/e;->FH:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/aide/engine/service/o;->Hw(Ljava/util/List;)V

    iget-object v0, v1, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->Hw(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/o;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p9

    invoke-interface/range {v3 .. v11}, Lcom/aide/engine/service/o;->j6(Ljava/lang/String;JIIILcom/aide/engine/SourceEntity;Ljava/lang/String;)V
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_b2} :catch_b3

    goto :goto_b7

    :catch_b3
    move-exception v0

    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    :cond_b7
    :goto_b7
    return-void
.end method

.method public j6(Ljava/lang/String;JIIILjava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x124c0a1b3bfd26b0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JIII",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x2

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x3

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x4

    aput-object p1, v0, p2

    const/4 p1, 0x5

    aput-object p7, v0, p1

    const-wide p1, -0x460de50e8811b3d9L  # -1.4282521550764897E-29

    invoke-static {p1, p2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method public j6(Ljava/lang/String;JIILcom/aide/engine/SourceEntity;)V
    .registers 21
    .annotation runtime Labcd/su;
        method = -0x19038ece5e362db0L
    .end annotation

    move-object v10, p0

    move-wide/from16 v11, p2

    move/from16 v9, p4

    move/from16 v13, p5

    :try_start_7
    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_26

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v11, v12}, Ljava/lang/Long;-><init>(J)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v13}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x431ea01be230f351L  # -1.9289652686991707E-15

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v8, p6

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    iget-object v0, v10, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->FH(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/t;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_46

    if-eqz v0, :cond_45

    :try_start_2e
    iget-object v0, v10, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->FH(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/t;

    move-result-object v1

    move-object v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/aide/engine/service/t;->j6(Ljava/lang/String;JIILcom/aide/engine/SourceEntity;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_40} :catch_41
    .catchall {:try_start_2e .. :try_end_40} :catchall_46

    goto :goto_45

    :catch_41
    move-exception v0

    :try_start_42
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    :cond_45
    :goto_45
    return-void

    :catchall_46
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v1, :cond_67

    const-wide v2, -0x431ea01be230f351L  # -1.9289652686991707E-15

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v11, v12}, Ljava/lang/Long;-><init>(J)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v9}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_67
    throw v0
.end method

.method public j6(Ljava/lang/String;JII[I[ILjava/util/List;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x17a733e3c1ac769L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JII[I[I",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_33

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x2

    aput-object p1, v0, p2

    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const/4 p1, 0x4

    aput-object p6, v0, p1

    const/4 p1, 0x5

    aput-object p7, v0, p1

    const/4 p1, 0x6

    aput-object p8, v0, p1

    const-wide p1, -0x1add524ff89afd5cL

    invoke-static {p1, p2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_33
    return-void
.end method

.method public j6(Ljava/lang/String;JLjava/util/List;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x1e692fd37a301784L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_14

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p2, p3}, Ljava/lang/Long;-><init>(J)V

    const-wide v1, 0x12bff72e053d38ddL

    move-object v3, p0

    move-object v4, p1

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x12bff72e053d38ddL

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p2, p3}, Ljava/lang/Long;-><init>(J)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5ce3035b3eab83c0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, -0xe8b01f98a258461L  # -3.4174039683323925E238

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/r;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_23

    if-eqz v0, :cond_22

    :try_start_14
    iget-object v0, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/r;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/aide/engine/service/r;->j6(Ljava/lang/String;Ljava/util/List;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_1e
    .catchall {:try_start_14 .. :try_end_1d} :catchall_23

    goto :goto_22

    :catch_1e
    move-exception v0

    :try_start_1f
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    :cond_22
    :goto_22
    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v1, :cond_34

    const-wide v2, -0xe8b01f98a258461L  # -3.4174039683323925E238

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public j6(Ljava/util/List;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x33f0392a7f4a0bf8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aide/engine/SourceEntity;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x1d9665c30a0a9081L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public v5(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1232e04b446abf48L
    .end annotation

    const-wide v0, -0x237a909f503d5dddL  # -4.9855482425406065E137

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/r;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_23

    if-eqz v2, :cond_22

    :try_start_14
    iget-object v2, p0, Lcom/aide/engine/service/e;->Hw:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->DW(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/service/r;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/aide/engine/service/r;->Hw(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_1e
    .catchall {:try_start_14 .. :try_end_1d} :catchall_23

    goto :goto_22

    :catch_1e
    move-exception v2

    :try_start_1f
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    :cond_22
    :goto_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/e;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method
