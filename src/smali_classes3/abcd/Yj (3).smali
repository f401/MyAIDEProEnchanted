.class Labcd/Yj;
.super Lcom/aide/engine/service/p$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ck;->gn()V
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
.field final v5:Labcd/ck;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x650845e636406143L  # 4.91803584000971E178

    const-wide v2, 0x43fa83a9df0e9280L  # 3.0568919078760088E19

    const-class v4, Labcd/Yj;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ck;)V
    .registers 2

    iput-object p1, p0, Labcd/Yj;->v5:Labcd/ck;

    invoke-direct {p0}, Lcom/aide/engine/service/p$a;-><init>()V

    return-void
.end method


# virtual methods
.method public FH(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2f2d2684eeb83750L
    .end annotation

    const-wide v0, 0x143676330356d2acL  # 2.668861166051258E-211

    :try_start_5
    sget-boolean v2, Labcd/Yj;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Yj;->v5:Labcd/ck;

    invoke-static {v2, p1}, Labcd/ck;->DW(Labcd/ck;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Yj;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public OW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2e2ed741096e54cfL
    .end annotation

    const-wide v0, 0x73f9648f76b8885L

    :try_start_5
    sget-boolean v2, Labcd/Yj;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Yj;->v5:Labcd/ck;

    invoke-static {v2}, Labcd/ck;->j6(Labcd/ck;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Yj;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public QX(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1a8b66dba90502a1L
    .end annotation

    const-wide v0, 0x4d933cb154d54c7fL  # 5.06475267650714E65

    :try_start_5
    sget-boolean v2, Labcd/Yj;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Yj;->v5:Labcd/ck;

    invoke-static {v2, p1}, Labcd/ck;->j6(Labcd/ck;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Yj;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public aj()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x6685fdec17bbefL
    .end annotation

    const-wide v0, 0x10799d09e0e4b059L  # 2.639678814520551E-229

    :try_start_5
    sget-boolean v2, Labcd/Yj;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Yj;->v5:Labcd/ck;

    invoke-static {v2}, Labcd/ck;->DW(Labcd/ck;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Labcd/Yj;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6(Ljava/lang/String;[Lcom/aide/engine/SyntaxError;Z)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0xcf773c6a05bf251L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Yj;->FH:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0x26bec2f6520084b1L  # 4.653398880295338E-122

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    iget-object v0, p0, Labcd/Yj;->v5:Labcd/ck;

    invoke-static {v0, p1, p2, p3}, Labcd/ck;->j6(Labcd/ck;Ljava/lang/String;[Lcom/aide/engine/SyntaxError;Z)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Labcd/Yj;->Hw:Z

    if-eqz v1, :cond_30

    const-wide v2, 0x26bec2f6520084b1L  # 4.653398880295338E-122

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method
