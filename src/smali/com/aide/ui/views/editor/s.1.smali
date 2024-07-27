.class public Lcom/aide/ui/views/editor/s;
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
.field private FH:I
    .annotation runtime Labcd/ru;
        field = -0x1e8713426d95371L
    .end annotation
.end field

.field private Hw:Lcom/aide/ui/views/editor/j;
    .annotation runtime Labcd/ru;
        field = -0x14e2a88a175e0c10L
    .end annotation
.end field

.field private v5:Lcom/aide/ui/views/editor/j;
    .annotation runtime Labcd/ru;
        field = -0xd3895120deee52dL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x30e40395cf36cb31L    # -1.2361743430128945E73

    const-class v0, Lcom/aide/ui/views/editor/s;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 11

    const-wide v2, -0x1ae06baaf0f32958L    # -1.2796807319869717E179

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/s;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x1ae06baaf0f32958L    # -1.2796807319869717E179

    const/4 v5, 0x0

    invoke-static {v6, v7, v5, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/editor/j;

    invoke-direct {v0, p1}, Lcom/aide/ui/views/editor/j;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/aide/ui/views/editor/s;-><init>(Lcom/aide/ui/views/editor/j;Lcom/aide/ui/views/editor/j;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/s;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/j;Lcom/aide/ui/views/editor/j;I)V
    .registers 14

    const-wide v8, 0x1c1b58d7dc3c59ddL

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/s;->j6:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x1c1b58d7dc3c59ddL

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/views/editor/s;->Hw:Lcom/aide/ui/views/editor/j;

    iput-object p2, p0, Lcom/aide/ui/views/editor/s;->v5:Lcom/aide/ui/views/editor/j;

    iput p3, p0, Lcom/aide/ui/views/editor/s;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/s;->DW:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v2, -0x3c3e5dcad3028a5cL    # -2.5412730244381594E18

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/s;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3c3e5dcad3028a5cL    # -2.5412730244381594E18

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/s;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/s;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()Lcom/aide/ui/views/editor/j;
    .registers 5

    const-wide v2, -0x140cdb41f1978fb0L    # -1.006975432856728E212

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/s;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x140cdb41f1978fb0L    # -1.006975432856728E212

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/s;->Hw:Lcom/aide/ui/views/editor/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/s;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()Lcom/aide/ui/views/editor/j;
    .registers 5

    const-wide v2, -0x246229cf0bd141e9L    # -2.1178181330037299E133

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/s;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x246229cf0bd141e9L    # -2.1178181330037299E133

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/editor/s;->v5:Lcom/aide/ui/views/editor/j;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/s;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
