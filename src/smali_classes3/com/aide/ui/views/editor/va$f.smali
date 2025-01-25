.class Lcom/aide/ui/views/editor/va$f;
.super Lcom/aide/ui/views/editor/va$d;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# static fields
.field private static EQ:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static tp:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final we:Lcom/aide/ui/views/editor/va;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/va$f;

    const-wide v1, -0x3251690acd69562dL  # -1.6107345941632231E66

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x3c3239fa066aae5dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$f;->tp:Z

    if-eqz v0, :cond_19

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xad998007d0d1d0L

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$f;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/views/editor/va$d;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II)V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$f;->EQ:Z

    if-eqz v1, :cond_3a

    const-wide v2, 0xad998007d0d1d0L

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$e;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x5a4fc7ab39000d43L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$f;->tp:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x5a238bbee4b3694L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$f;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$d;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$d;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$f;->EQ:Z

    if-eqz v1, :cond_24

    const-wide v2, 0x5a238bbee4b3694L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method


# virtual methods
.method public DW()Lcom/aide/ui/views/editor/va$b;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x28f23f4e370f6754L
    .end annotation

    const-wide v0, -0x2f7b24aa7726f484L  # -7.728158160241877E79

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$f;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/editor/va$e;

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$f;->we:Lcom/aide/ui/views/editor/va;

    invoke-direct {v2, v3, p0}, Lcom/aide/ui/views/editor/va$e;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$f;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-object v2

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$f;->EQ:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/g;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x7052420a8f1a73bL
    .end annotation

    const-wide v0, 0x2874e583c898febL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$f;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/va$d;->gn:I

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$f;->we:Lcom/aide/ui/views/editor/va;

    invoke-virtual {p1, v2, v3}, Lcom/aide/ui/views/editor/g;->j6(ILjava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$f;->EQ:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/va$b;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x317cd5ec3a2b3ebbL
    .end annotation

    const-wide v0, 0x57469e8a9991e20bL  # 2.719866613762588E112

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$f;->tp:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$f;->EQ:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method
