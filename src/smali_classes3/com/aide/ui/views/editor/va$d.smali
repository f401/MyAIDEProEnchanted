.class abstract Lcom/aide/ui/views/editor/va$d;
.super Lcom/aide/ui/views/editor/va$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "d"
.end annotation


# static fields
.field private static Zo:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field VH:I
    .annotation runtime Labcd/ru;
        field = 0x22655beb842d0910L
    .end annotation
.end field

.field gn:I
    .annotation runtime Labcd/ru;
        field = -0x1d10f5d13b307de0L
    .end annotation
.end field

.field final u7:Lcom/aide/ui/views/editor/va;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/va$d;

    const-wide v1, -0x3ce5b2d38f7d995bL  # -1.8508006639927452E15

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method protected constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x658a6bcc6b6d7874L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$d;->v5:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3b40c2c40ab5ba43L  # 2.7728424009270165E-23

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$d;->u7:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    iput p3, p0, Lcom/aide/ui/views/editor/va$d;->VH:I

    iput p4, p0, Lcom/aide/ui/views/editor/va$d;->gn:I
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$d;->Zo:Z

    if-eqz v1, :cond_3e

    const-wide v2, 0x3b40c2c40ab5ba43L  # 2.7728424009270165E-23

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method protected constructor <init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$d;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6b0b9c3edee531fbL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$d;->v5:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x290befad31342310L  # 5.808172504834693E-111

    invoke-static {v2, v3, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$d;->u7:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, v1}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    iget v0, p2, Lcom/aide/ui/views/editor/va$d;->VH:I

    iput v0, p0, Lcom/aide/ui/views/editor/va$d;->VH:I

    iget v0, p2, Lcom/aide/ui/views/editor/va$d;->gn:I

    iput v0, p0, Lcom/aide/ui/views/editor/va$d;->gn:I
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$d;->Zo:Z

    if-eqz v1, :cond_2c

    const-wide v2, 0x290befad31342310L  # 5.808172504834693E-111

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method


# virtual methods
.method public FH()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2651522b66684c1dL
    .end annotation

    const-wide v0, -0x483b55a06e19147L  # -6.731212832868427E286

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$d;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/views/editor/va$d;->VH:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$d;->Zo:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw()I
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x113d1110f5d79ffbL
    .end annotation

    const-wide v0, -0x2a2d7da9f9388a7L  # -7.448621734079688E295

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$d;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/views/editor/va$d;->gn:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$d;->Zo:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
