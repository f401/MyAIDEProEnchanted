.class Lcom/aide/engine/service/l;
.super Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/service/CodeAnalysisEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field private v5:Lcom/aide/engine/EngineSolution;
    .annotation runtime Labcd/ru;
        field = 0x219e25f154a7d500L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x1bd72709e548b1bdL

    const-wide v2, -0x208fea312095dc8L  # -6.018164779481225E298

    const-class v4, Lcom/aide/engine/service/l;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/engine/service/CodeAnalysisEngineService;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-direct {p0}, Lcom/aide/engine/service/ICodeAnalysisEngineService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1ab49b863876120L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x144f2d88d5d916f9L  # -5.530418387847543E210

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->DW(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p1

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_47

    const-wide v2, -0x144f2d88d5d916f9L  # -5.530418387847543E210

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

    :cond_47
    throw v0
.end method

.method public DW(Lcom/aide/engine/SourceEntity;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb3d595f91109220L
    .end annotation

    const-wide v0, -0x83f8d5eea868ab1L  # -6.788489980841153E268

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public DW(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2cc59f6b04afac9dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3613fa520f6931b0L  # -1.2798271808219988E48

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->DW(Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x3613fa520f6931b0L  # -1.2798271808219988E48

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public DW(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xc391dd8962d5374L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x344ded4498df01cdL  # -4.431528889822576E56

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->FH(Ljava/lang/String;II)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0x344ded4498df01cdL  # -4.431528889822576E56

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public DW(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x387659107883454cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1a4201e10f3c6d3bL

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/aide/engine/c;->Zo(Ljava/lang/String;IIII)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x1a4201e10f3c6d3bL

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

    :cond_55
    throw v0
.end method

.method public DW(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2154d36a06f33234L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x7189737091698e71L  # -5.410681413570008E-239

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, p2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Ljava/util/Hashtable;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_2c

    const-wide v2, -0x7189737091698e71L  # -5.410681413570008E-239

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public FH(Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4bde53b0b6b33573L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x74fd22ca3836b900L  # 3.417785085987861E255

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->Hw(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p1

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_47

    const-wide v2, 0x74fd22ca3836b900L  # 3.417785085987861E255

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

    :cond_47
    throw v0
.end method

.method public FH(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x67aa41795c8c619dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5ba09a12688b90cL  # -9.966564187767347E280

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/aide/engine/c;->j6(Ljava/lang/String;J)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_31

    const-wide v2, -0x5ba09a12688b90cL  # -9.966564187767347E280

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v0
.end method

.method public FH(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x1caef6e0d8fdab00L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3d8a681a5169b8b7L  # 3.0020887130725744E-12

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->j6(Ljava/lang/String;II)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_3c

    const-wide v2, 0x3d8a681a5169b8b7L  # 3.0020887130725744E-12

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public FH(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x56bd826f5dfad820L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x29a6d2df520d4cd1L  # 4.85912417940527E-108

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/aide/engine/c;->j6(Ljava/lang/String;IIII)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x29a6d2df520d4cd1L  # 4.85912417940527E-108

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

    :cond_55
    throw v0
.end method

.method public FH(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2411f6e858a275a0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x3d44571efa776a8fL  # 1.4452664091377322E-13

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->DW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_27

    const-wide v2, 0x3d44571efa776a8fL  # 1.4452664091377322E-13

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public Hw(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x23ca5399b2599eb9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x216ae2b5f119d730L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->j6(Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x216ae2b5f119d730L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public Hw(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x1b62135ff0e0f6e7L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xbe6873fc73bcb24L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->DW(Ljava/lang/String;II)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0xbe6873fc73bcb24L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public Hw(Ljava/lang/String;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x4b55fbbe4ca28bbL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xabf9f8e9a642838L  # -6.147428916221431E256

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->j6(Ljava/lang/String;III)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_46

    const-wide v2, -0xabf9f8e9a642838L  # -6.147428916221431E256

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

    :cond_46
    throw v0
.end method

.method public Hw(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x7b9482b3a6d37ddL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x4da5cb52e95d494L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/aide/engine/c;->v5(Ljava/lang/String;IIII)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_55

    const-wide v2, -0x4da5cb52e95d494L

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

    :cond_55
    throw v0
.end method

.method public I()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x41a7f8385ac50d80L
    .end annotation

    const-wide v0, 0x1348b476a8f82ec3L  # 8.958119341113154E-216

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/engine/c;->gn()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Jl()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x21187f3620b9472dL
    .end annotation

    const-wide v0, -0x2c15b3e4ad49d00L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/engine/c;->Hw()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public VH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x198e6a8b779c88bbL
    .end annotation

    const-wide v0, 0xe9ca050ef590378L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/engine/c;->DW(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Zo(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x172a3f24b7cec8e3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x67dbea8e3ac02d8L

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->FH(Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x67dbea8e3ac02d8L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public Zo(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x55597948b73d1dbL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x37b4e1a576acf200L  # -1.845594167745308E40

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->Hw(Ljava/lang/String;II)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0x37b4e1a576acf200L  # -1.845594167745308E40

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public Zo(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x19582e73dbb4fdb8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2ca3eb58f9aaa1L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/aide/engine/c;->FH(Ljava/lang/String;IIII)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_55

    const-wide v2, 0x2ca3eb58f9aaa1L

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

    :cond_55
    throw v0
.end method

.method public build()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x24e8fcfdd0f938a0L
    .end annotation

    const-wide v0, 0x2325a6581ee5e8d5L  # 2.272508656329834E-139

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/engine/c;->DW()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public cT()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3147ff7f200bf4d8L
    .end annotation

    const-wide v0, -0x4ffb2db2fad01077L  # -2.2477234706928292E-77

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/engine/c;->tp()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public e3()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1cb1d76957df27bL
    .end annotation

    const-wide v0, 0x7229719f4e30a20L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->v5:Lcom/aide/engine/EngineSolution;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/engine/service/l;->v5:Lcom/aide/engine/EngineSolution;

    invoke-virtual {v2, v3}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/EngineSolution;)V

    :cond_1b
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/engine/service/l;->v5:Lcom/aide/engine/EngineSolution;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method public er()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1b7134a0ce97e613L
    .end annotation

    const-wide v0, 0x2efafb17ef2bf480L  # 2.2221663457620306E-82

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/engine/c;->Zo()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public hK()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xeb25ca473a75d5cL
    .end annotation

    const-wide v0, -0x30dfe9268ac4e3d9L  # -1.4213627055182435E73

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/engine/c;->u7()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public j6(Ljava/lang/String;IICI)Ljava/util/List;
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x19c9d478130de0a8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Character;

    invoke-direct {v7, p4}, Ljava/lang/Character;-><init>(C)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2862a81bdcf9281L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/aide/engine/c;->j6(Ljava/lang/String;IICI)Ljava/util/List;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_32

    return-object p1

    :catchall_32
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_56

    const-wide v2, 0x2862a81bdcf9281L

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

    :cond_56
    throw v0
.end method

.method public j6(Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x94996a4fe6acb28L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3d72aa7f63cb38a3L  # -4.0316333933049204E12

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->FH(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p1

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_47

    const-wide v2, -0x3d72aa7f63cb38a3L  # -4.0316333933049204E12

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

    :cond_47
    throw v0
.end method

.method public j6(IILjava/util/Map;Ljava/util/Map;)V
    .registers 21
    .annotation runtime Labcd/su;
        method = 0x7b358446804bf50L
    .end annotation

    move/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p4

    const-string v0, "JavaScript"

    const-string v8, "Java"

    :try_start_a
    sget-boolean v1, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v1, :cond_26

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v13}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v14}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2b76a0e4594cec91L  # 2.586407226916658E-99

    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Labcd/id;->valueOf(Ljava/lang/String;)Labcd/id;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_4e
    invoke-interface {v12, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Labcd/Md;->valueOf(Ljava/lang/String;)Labcd/Md;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_74
    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, ""

    const/4 v0, 0x0

    new-array v8, v0, [Ljava/lang/String;

    new-array v9, v0, [Z

    move/from16 v6, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v1 .. v12}, Lcom/aide/engine/c;->j6(ZZZZILjava/lang/String;[Ljava/lang/String;[ZILjava/util/Map;Ljava/util/Map;)V
    :try_end_93
    .catchall {:try_start_a .. :try_end_93} :catchall_94

    return-void

    :catchall_94
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_b2

    const-wide v2, 0x2b76a0e4594cec91L  # 2.586407226916658E-99

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v13}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v14}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b2
    goto :goto_b4

    :goto_b3
    throw v0

    :goto_b4
    goto :goto_b3
.end method

.method public j6(Lcom/aide/engine/EngineSolution;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3c0b5d6ac0d67a98L
    .end annotation

    const-wide v0, -0x5b9a7e7660965e6bL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/engine/service/l;->v5:Lcom/aide/engine/EngineSolution;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Lcom/aide/engine/EngineSolutionProject;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xf5cbe86db63f5f4L
    .end annotation

    const-wide v0, -0xc9ecb0689f50d0dL  # -6.015474331376675E247

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->v5:Lcom/aide/engine/EngineSolution;

    if-eqz v2, :cond_13

    invoke-virtual {v2, p1}, Lcom/aide/engine/EngineSolution;->j6(Lcom/aide/engine/EngineSolutionProject;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    :cond_13
    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(Lcom/aide/engine/SyntaxError;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x54a6281bf256bec0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5f01a9ec9242c859L  # -9.267526424978544E-150

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/SyntaxError;I)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x5f01a9ec9242c859L  # -9.267526424978544E-150

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public j6(Lcom/aide/engine/service/m;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x22507a978ad45a80L
    .end annotation

    const-wide v0, -0x36b98e90dd009b9L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    new-instance v3, Lcom/aide/engine/service/h;

    invoke-direct {v3, p0, p1}, Lcom/aide/engine/service/h;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/m;)V

    invoke-virtual {v2, v3}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/a;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/o;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3e9fb43c38e3474fL
    .end annotation

    const-wide v0, 0xe456c3732ff5708L  # 6.425516167885488E-240

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2, p1}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/o;)Lcom/aide/engine/service/o;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/p;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1fd3ccdd4118e591L
    .end annotation

    const-wide v0, -0x67540e96f47e0b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    new-instance v3, Lcom/aide/engine/service/g;

    invoke-direct {v3, p0, p1}, Lcom/aide/engine/service/g;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/p;)V

    invoke-virtual {v2, v3}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/h;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/q;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x35896d00789004c0L
    .end annotation

    const-wide v0, 0x76bceadf1cc9f99L  # 6.4253000721495325E-273

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2, p1}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/q;)Lcom/aide/engine/service/q;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/r;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x7c83ade2674670L
    .end annotation

    const-wide v0, -0x534d9ed2e32ef29L  # -3.153954110778428E283

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2, p1}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/r;)Lcom/aide/engine/service/r;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/s;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x89afdec72e6c280L
    .end annotation

    const-wide v0, 0x20d0c609e5d0377L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    new-instance v3, Lcom/aide/engine/service/i;

    invoke-direct {v3, p0, p1}, Lcom/aide/engine/service/i;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/s;)V

    invoke-virtual {v2, v3}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/n;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/t;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x126fdb5e39dc1dc8L
    .end annotation

    const-wide v0, -0x1db472c6167f56abL  # -3.173185673366764E165

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2, p1}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/t;)Lcom/aide/engine/service/t;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/v;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xbccea2f674bfa51L
    .end annotation

    const-wide v0, -0x1bf8e835a2616a50L  # -7.139480056488287E173

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    new-instance v3, Lcom/aide/engine/service/j;

    invoke-direct {v3, p0, p1}, Lcom/aide/engine/service/j;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/v;)V

    invoke-virtual {v2, v3}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/J;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public j6(Lcom/aide/engine/service/w;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x193e3d8ea904c10L
    .end annotation

    const-wide v0, 0x5ef3bb7df96df8fL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    new-instance v3, Lcom/aide/engine/service/k;

    invoke-direct {v3, p0, p1}, Lcom/aide/engine/service/k;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/w;)V

    invoke-virtual {v2, v3}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/Q;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public j6(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x53e401047cf5d0cfL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x274312ffa1c901c8L  # -2.9177191252878333E119

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->Zo(Ljava/lang/String;II)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0x274312ffa1c901c8L  # -2.9177191252878333E119

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public j6(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x5baf4da578c223L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x5d4904a7316bef80L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/aide/engine/c;->DW(Ljava/lang/String;IIII)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_55

    const-wide v2, -0x5d4904a7316bef80L

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

    :cond_55
    throw v0
.end method

.method public j6(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .registers 19
    .annotation runtime Labcd/su;
        method = -0xda92bceaa09c159L
    .end annotation

    move-object v0, p0

    sget-boolean v1, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v1, :cond_3f

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Ljava/lang/Integer;

    move v5, p2

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move v6, p3

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move v7, p4

    invoke-direct {v2, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    move/from16 v8, p5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aput-object p6, v1, v2

    const/4 v2, 0x6

    aput-object p7, v1, v2

    const-wide v2, 0x621c2e72340b448L

    invoke-static {v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_44

    :cond_3f
    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    :goto_44
    iget-object v1, v0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v1}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/aide/engine/c;->j6(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;IILcom/aide/engine/SourceEntity;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x21bfc12a530e1d20L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1f143a64923daf9L

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->j6(Ljava/lang/String;IILcom/aide/engine/SourceEntity;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x1f143a64923daf9L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public j6(Ljava/lang/String;IIZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2d98500d66e92f91L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x31f23f828d9686c4L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->j6(Ljava/lang/String;IIZ)V
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_46

    const-wide v2, 0x31f23f828d9686c4L

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

    :cond_46
    throw v0
.end method

.method public j6(Ljava/lang/String;Lcom/aide/engine/SourceEntity;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1914198b88816c03L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x107e4b0fb742cc40L  # -1.3422907263133844E229

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Lcom/aide/engine/SourceEntity;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_27

    const-wide v2, -0x107e4b0fb742cc40L  # -1.3422907263133844E229

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public j6(Ljava/lang/String;Lcom/aide/engine/service/u;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x518eef212722fe0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x17b647ccbdb99b15L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    new-instance v1, Lcom/aide/engine/service/f;

    invoke-direct {v1, p0, p2}, Lcom/aide/engine/service/f;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/u;)V

    invoke-virtual {v0, p1, v1}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Lcom/aide/engine/H;)V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_2c

    const-wide v2, 0x17b647ccbdb99b15L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x765aab16629b970L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1ad14954ba331221L  # 1.666358282038951E-179

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x1ad14954ba331221L  # 1.666358282038951E-179

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x1e89f2ad90b50d0L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_35

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-wide v1, -0x2361f528bbcf2fa5L  # -1.3975002442684984E138

    invoke-static {v1, v2, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_35
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method public kf()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x247ac3bae74560b7L
    .end annotation

    const-wide v0, 0x5cb7e356835340dcL  # 4.444864427937281E138

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/engine/c;->FH()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public mb()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5be9524327f177c1L
    .end annotation

    const-wide v0, -0x68d66f068aa4da00L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/engine/c;->EQ()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public sg()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x209f987d67fc8149L
    .end annotation

    const-wide v0, 0x1190f48361b7c998L  # 4.580620913994838E-224

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/engine/c;->v5()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public shutdown()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2c84d7dcb18448d4L
    .end annotation

    const-wide v0, -0x40223caaed279015L  # -0.46504713859917385

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/engine/c;->VH()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public tp(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x17c8edf087da6810L
    .end annotation

    const-wide v0, -0x35c3d501a26a80b1L  # -4.1167495999234196E49

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/engine/c;->FH(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public u7(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xf175a2c99ebc739L
    .end annotation

    const-wide v0, 0x1ac57fd3fdc3054cL

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aide/engine/c;->j6(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public v5(Ljava/lang/String;II)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x4faaa0d8bf20760L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x20aee7b2b619eb71L  # -1.3989595279067782E151

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->v5(Ljava/lang/String;II)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_3c

    const-wide v2, -0x20aee7b2b619eb71L  # -1.3989595279067782E151

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    throw v0
.end method

.method public v5(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x3beadd5da4cd6bcL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_22

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x25691f11d9dd59e9L  # -2.4779255765597623E128

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/aide/engine/c;->Hw(Ljava/lang/String;IIII)V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_55

    const-wide v2, -0x25691f11d9dd59e9L  # -2.4779255765597623E128

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

    :cond_55
    throw v0
.end method

.method public v5(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x122aa9693ed841d0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x728f1139f51fb63L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_27

    const-wide v2, -0x728f1139f51fb63L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method
