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
    .registers 6

    const-class v0, Lcom/aide/engine/service/l;

    const-wide v2, 0x1bd72709e548b1bdL

    const-wide v4, -0x208fea312095dc8L    # -6.018164779481225E298

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x144f2d88d5d916f9L    # -5.530418387847543E210

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->DW(Ljava/lang/String;III)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x144f2d88d5d916f9L    # -5.530418387847543E210

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public DW(Lcom/aide/engine/SourceEntity;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xb3d595f91109220L
    .end annotation

    const-wide v2, -0x83f8d5eea868ab1L    # -6.788489980841153E268

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x83f8d5eea868ab1L    # -6.788489980841153E268

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x2cc59f6b04afac9dL
    .end annotation

    const-wide v2, -0x3613fa520f6931b0L    # -1.2798271808219988E48

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x3613fa520f6931b0L    # -1.2798271808219988E48

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->DW(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public DW(Ljava/lang/String;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0xc391dd8962d5374L
    .end annotation

    const-wide v8, -0x344ded4498df01cdL    # -4.431528889822576E56

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x344ded4498df01cdL    # -4.431528889822576E56

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->FH(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public DW(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x387659107883454cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1a4201e10f3c6d3bL

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aide/engine/c;->Zo(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x1a4201e10f3c6d3bL

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public DW(Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2154d36a06f33234L
    .end annotation

    const-wide v2, -0x7189737091698e71L    # -5.410681413570008E-239

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7189737091698e71L    # -5.410681413570008E-239

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, p2}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4bde53b0b6b33573L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x74fd22ca3836b900L    # 3.417785085987861E255

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->Hw(Ljava/lang/String;III)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x74fd22ca3836b900L    # 3.417785085987861E255

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x67aa41795c8c619dL
    .end annotation

    const-wide v2, -0x5ba09a12688b90cL    # -9.966564187767347E280

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x5ba09a12688b90cL    # -9.966564187767347E280

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    int-to-long v4, p2

    invoke-virtual {v0, p1, v4, v5}, Lcom/aide/engine/c;->j6(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(Ljava/lang/String;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1caef6e0d8fdab00L
    .end annotation

    const-wide v8, 0x3d8a681a5169b8b7L    # 3.0020887130725744E-12

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x3d8a681a5169b8b7L    # 3.0020887130725744E-12

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->j6(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x56bd826f5dfad820L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x29a6d2df520d4cd1L    # 4.85912417940527E-108

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aide/engine/c;->j6(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x29a6d2df520d4cd1L    # 4.85912417940527E-108

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public FH(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2411f6e858a275a0L
    .end annotation

    const-wide v2, 0x3d44571efa776a8fL    # 1.4452664091377322E-13

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3d44571efa776a8fL    # 1.4452664091377322E-13

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->DW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public Hw(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x23ca5399b2599eb9L
    .end annotation

    const-wide v2, 0x216ae2b5f119d730L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x216ae2b5f119d730L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->j6(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public Hw(Ljava/lang/String;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1b62135ff0e0f6e7L
    .end annotation

    const-wide v8, -0xbe6873fc73bcb24L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xbe6873fc73bcb24L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->DW(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public Hw(Ljava/lang/String;III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x4b55fbbe4ca28bbL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xabf9f8e9a642838L    # -6.147428916221431E256

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->j6(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, -0xabf9f8e9a642838L    # -6.147428916221431E256

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public Hw(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x7b9482b3a6d37ddL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x4da5cb52e95d494L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aide/engine/c;->v5(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x4da5cb52e95d494L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public I()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x41a7f8385ac50d80L
    .end annotation

    const-wide v2, 0x1348b476a8f82ec3L    # 8.958119341113154E-216

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1348b476a8f82ec3L    # 8.958119341113154E-216

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/engine/c;->gn()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Jl()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x21187f3620b9472dL
    .end annotation

    const-wide v2, -0x2c15b3e4ad49d00L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2c15b3e4ad49d00L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/engine/c;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x198e6a8b779c88bbL
    .end annotation

    const-wide v2, 0xe9ca050ef590378L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe9ca050ef590378L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/engine/c;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x172a3f24b7cec8e3L
    .end annotation

    const-wide v2, 0x67dbea8e3ac02d8L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x67dbea8e3ac02d8L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->FH(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public Zo(Ljava/lang/String;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x55597948b73d1dbL
    .end annotation

    const-wide v8, -0x37b4e1a576acf200L    # -1.845594167745308E40

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x37b4e1a576acf200L    # -1.845594167745308E40

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->Hw(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public Zo(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x19582e73dbb4fdb8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x2ca3eb58f9aaa1L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aide/engine/c;->FH(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x2ca3eb58f9aaa1L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public build()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x24e8fcfdd0f938a0L
    .end annotation

    const-wide v2, 0x2325a6581ee5e8d5L    # 2.272508656329834E-139

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2325a6581ee5e8d5L    # 2.272508656329834E-139

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/engine/c;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public cT()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3147ff7f200bf4d8L
    .end annotation

    const-wide v2, -0x4ffb2db2fad01077L    # -2.2477234706928292E-77

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4ffb2db2fad01077L    # -2.2477234706928292E-77

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/engine/c;->tp()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public e3()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1cb1d76957df27bL
    .end annotation

    const-wide v2, 0x7229719f4e30a20L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7229719f4e30a20L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->v5:Lcom/aide/engine/EngineSolution;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/engine/service/l;->v5:Lcom/aide/engine/EngineSolution;

    invoke-virtual {v0, v1}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/EngineSolution;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/engine/service/l;->v5:Lcom/aide/engine/EngineSolution;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public er()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1b7134a0ce97e613L
    .end annotation

    const-wide v2, 0x2efafb17ef2bf480L    # 2.2221663457620306E-82

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2efafb17ef2bf480L    # 2.2221663457620306E-82

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/engine/c;->Zo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public hK()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xeb25ca473a75d5cL
    .end annotation

    const-wide v2, -0x30dfe9268ac4e3d9L    # -1.4213627055182435E73

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x30dfe9268ac4e3d9L    # -1.4213627055182435E73

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/engine/c;->u7()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;IICI)Ljava/util/List;
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x19c9d478130de0a8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p4}, Ljava/lang/Character;-><init>(C)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x2862a81bdcf9281L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aide/engine/c;->j6(Ljava/lang/String;IICI)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x2862a81bdcf9281L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Character;

    invoke-direct {v8, p4}, Ljava/lang/Character;-><init>(C)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;III)Ljava/util/List;
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x94996a4fe6acb28L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x3d72aa7f63cb38a3L    # -4.0316333933049204E12

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->FH(Ljava/lang/String;III)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x3d72aa7f63cb38a3L    # -4.0316333933049204E12

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(IILjava/util/Map;Ljava/util/Map;)V
    .registers 19
    .annotation runtime Labcd/su;
        method = 0x7b358446804bf50L
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x2b76a0e4594cec91L    # 2.586407226916658E-99

    move-object v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v2, "Java"

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Labcd/id;->valueOf(Ljava/lang/String;)Labcd/id;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-boolean v2, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v2, :cond_1

    const-wide v4, 0x2b76a0e4594cec91L    # 2.586407226916658E-99

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object v6, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-static/range {v3 .. v10}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v3

    :cond_2
    :try_start_1
    const-string v2, "Java"

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v2, "JavaScript"

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Labcd/Md;->valueOf(Ljava/lang/String;)Labcd/Md;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v2, "JavaScript"

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v2}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, ""

    const/4 v7, 0x0

    new-array v9, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    new-array v10, v7, [Z

    move v7, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v2 .. v13}, Lcom/aide/engine/c;->j6(ZZZZILjava/lang/String;[Ljava/lang/String;[ZILjava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public j6(Lcom/aide/engine/EngineSolution;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x3c0b5d6ac0d67a98L
    .end annotation

    const-wide v2, -0x5b9a7e7660965e6bL

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5b9a7e7660965e6bL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/engine/service/l;->v5:Lcom/aide/engine/EngineSolution;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/EngineSolutionProject;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xf5cbe86db63f5f4L
    .end annotation

    const-wide v2, -0xc9ecb0689f50d0dL    # -6.015474331376675E247

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc9ecb0689f50d0dL    # -6.015474331376675E247

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->v5:Lcom/aide/engine/EngineSolution;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/service/l;->v5:Lcom/aide/engine/EngineSolution;

    invoke-virtual {v0, p1}, Lcom/aide/engine/EngineSolution;->j6(Lcom/aide/engine/EngineSolutionProject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(Lcom/aide/engine/SyntaxError;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x54a6281bf256bec0L
    .end annotation

    const-wide v2, -0x5f01a9ec9242c859L    # -9.267526424978544E-150

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x5f01a9ec9242c859L    # -9.267526424978544E-150

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/SyntaxError;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Lcom/aide/engine/service/m;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x22507a978ad45a80L
    .end annotation

    const-wide v2, -0x36b98e90dd009b9L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x36b98e90dd009b9L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    new-instance v1, Lcom/aide/engine/service/h;

    invoke-direct {v1, p0, p1}, Lcom/aide/engine/service/h;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/m;)V

    invoke-virtual {v0, v1}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/service/o;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3e9fb43c38e3474fL
    .end annotation

    const-wide v2, 0xe456c3732ff5708L    # 6.425516167885488E-240

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xe456c3732ff5708L    # 6.425516167885488E-240

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0, p1}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/o;)Lcom/aide/engine/service/o;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/service/p;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1fd3ccdd4118e591L
    .end annotation

    const-wide v2, -0x67540e96f47e0b0L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x67540e96f47e0b0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    new-instance v1, Lcom/aide/engine/service/g;

    invoke-direct {v1, p0, p1}, Lcom/aide/engine/service/g;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/p;)V

    invoke-virtual {v0, v1}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/h;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/service/q;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x35896d00789004c0L
    .end annotation

    const-wide v2, 0x76bceadf1cc9f99L    # 6.4253000721495325E-273

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x76bceadf1cc9f99L    # 6.4253000721495325E-273

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0, p1}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/q;)Lcom/aide/engine/service/q;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/service/r;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x7c83ade2674670L
    .end annotation

    const-wide v2, -0x534d9ed2e32ef29L    # -3.153954110778428E283

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x534d9ed2e32ef29L    # -3.153954110778428E283

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0, p1}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/r;)Lcom/aide/engine/service/r;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/service/s;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x89afdec72e6c280L
    .end annotation

    const-wide v2, 0x20d0c609e5d0377L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20d0c609e5d0377L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    new-instance v1, Lcom/aide/engine/service/i;

    invoke-direct {v1, p0, p1}, Lcom/aide/engine/service/i;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/s;)V

    invoke-virtual {v0, v1}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/n;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/service/t;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x126fdb5e39dc1dc8L
    .end annotation

    const-wide v2, -0x1db472c6167f56abL    # -3.173185673366764E165

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1db472c6167f56abL    # -3.173185673366764E165

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0, p1}, Lcom/aide/engine/service/CodeAnalysisEngineService;->j6(Lcom/aide/engine/service/CodeAnalysisEngineService;Lcom/aide/engine/service/t;)Lcom/aide/engine/service/t;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/service/v;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xbccea2f674bfa51L
    .end annotation

    const-wide v2, -0x1bf8e835a2616a50L    # -7.139480056488287E173

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1bf8e835a2616a50L    # -7.139480056488287E173

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    new-instance v1, Lcom/aide/engine/service/j;

    invoke-direct {v1, p0, p1}, Lcom/aide/engine/service/j;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/v;)V

    invoke-virtual {v0, v1}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/J;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/engine/service/w;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x193e3d8ea904c10L
    .end annotation

    const-wide v2, 0x5ef3bb7df96df8fL

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5ef3bb7df96df8fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    new-instance v1, Lcom/aide/engine/service/k;

    invoke-direct {v1, p0, p1}, Lcom/aide/engine/service/k;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/w;)V

    invoke-virtual {v0, v1}, Lcom/aide/engine/c;->j6(Lcom/aide/engine/Q;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x53e401047cf5d0cfL
    .end annotation

    const-wide v8, -0x274312ffa1c901c8L    # -2.9177191252878333E119

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x274312ffa1c901c8L    # -2.9177191252878333E119

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->Zo(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x5baf4da578c223L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x5d4904a7316bef80L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aide/engine/c;->DW(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x5d4904a7316bef80L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0xda92bceaa09c159L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x621c2e72340b448L

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    aput-object p7, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/aide/engine/c;->j6(Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;IILcom/aide/engine/SourceEntity;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x21bfc12a530e1d20L
    .end annotation

    const-wide v8, -0x1f143a64923daf9L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x1f143a64923daf9L

    move-object v2, p0

    move-object v3, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->j6(Ljava/lang/String;IILcom/aide/engine/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;IIZ)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x2d98500d66e92f91L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x31f23f828d9686c4L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/aide/engine/c;->j6(Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x31f23f828d9686c4L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;Lcom/aide/engine/SourceEntity;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1914198b88816c03L
    .end annotation

    const-wide v2, -0x107e4b0fb742cc40L    # -1.3422907263133844E229

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x107e4b0fb742cc40L    # -1.3422907263133844E229

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Lcom/aide/engine/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;Lcom/aide/engine/service/u;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x518eef212722fe0L
    .end annotation

    const-wide v2, 0x17b647ccbdb99b15L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x17b647ccbdb99b15L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    new-instance v1, Lcom/aide/engine/service/f;

    invoke-direct {v1, p0, p2}, Lcom/aide/engine/service/f;-><init>(Lcom/aide/engine/service/l;Lcom/aide/engine/service/u;)V

    invoke-virtual {v0, p1, v1}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Lcom/aide/engine/H;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x765aab16629b970L
    .end annotation

    const-wide v8, 0x1ad14954ba331221L    # 1.666358282038951E-179

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1ad14954ba331221L    # 1.666358282038951E-179

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1e89f2ad90b50d0L
    .end annotation

    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2361f528bbcf2fa5L    # -1.3975002442684984E138

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method

.method public kf()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x247ac3bae74560b7L
    .end annotation

    const-wide v2, 0x5cb7e356835340dcL    # 4.444864427937281E138

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5cb7e356835340dcL    # 4.444864427937281E138

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/engine/c;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public mb()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5be9524327f177c1L
    .end annotation

    const-wide v2, -0x68d66f068aa4da00L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x68d66f068aa4da00L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/engine/c;->EQ()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public sg()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x209f987d67fc8149L
    .end annotation

    const-wide v2, 0x1190f48361b7c998L    # 4.580620913994838E-224

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1190f48361b7c998L    # 4.580620913994838E-224

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/engine/c;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public shutdown()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2c84d7dcb18448d4L
    .end annotation

    const-wide v2, -0x40223caaed279015L    # -0.46504713859917385

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x40223caaed279015L    # -0.46504713859917385

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/engine/c;->VH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x17c8edf087da6810L
    .end annotation

    const-wide v2, -0x35c3d501a26a80b1L    # -4.1167495999234196E49

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x35c3d501a26a80b1L    # -4.1167495999234196E49

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/engine/c;->FH(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xf175a2c99ebc739L
    .end annotation

    const-wide v2, 0x1ac57fd3fdc3054cL

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ac57fd3fdc3054cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/engine/c;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(Ljava/lang/String;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4faaa0d8bf20760L
    .end annotation

    const-wide v8, -0x20aee7b2b619eb71L    # -1.3989595279067782E151

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x20aee7b2b619eb71L    # -1.3989595279067782E151

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/aide/engine/c;->v5(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public v5(Ljava/lang/String;IIII)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x3beadd5da4cd6bcL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x25691f11d9dd59e9L    # -2.4779255765597623E128

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/aide/engine/c;->Hw(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x25691f11d9dd59e9L    # -2.4779255765597623E128

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public v5(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x122aa9693ed841d0L
    .end annotation

    const-wide v2, -0x728f1139f51fb63L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/service/l;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x728f1139f51fb63L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/service/l;->Zo:Lcom/aide/engine/service/CodeAnalysisEngineService;

    invoke-static {v0}, Lcom/aide/engine/service/CodeAnalysisEngineService;->v5(Lcom/aide/engine/service/CodeAnalysisEngineService;)Lcom/aide/engine/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/aide/engine/c;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/service/l;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method
