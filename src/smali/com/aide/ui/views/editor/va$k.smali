.class Lcom/aide/ui/views/editor/va$k;
.super Lcom/aide/ui/views/editor/va$b;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/va;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
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
.field final EQ:Lcom/aide/ui/views/editor/va;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field VH:I
    .annotation runtime Labcd/ru;
        field = -0x1705634a0db1c0f3L
    .end annotation
.end field

.field gn:I
    .annotation runtime Labcd/ru;
        field = 0x23e2ab90a1424dadL
    .end annotation
.end field

.field tp:[C
    .annotation runtime Labcd/ru;
        field = 0xc3c6cf9cfbb5300L
    .end annotation
.end field

.field u7:[C
    .annotation runtime Labcd/ru;
        field = 0x241cd30dc3a8a545L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x4eb42c3dedc23535L    # -3.1499251516530327E-71

    const-class v0, Lcom/aide/ui/views/editor/va$k;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II[C[C)V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x1d5509366b01250fL
    .end annotation

    sget-boolean v0, Lcom/aide/ui/views/editor/va$k;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x41340c2b932b5350L    # -3.3321929097294856E-6

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$k;->EQ:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    iput p4, p0, Lcom/aide/ui/views/editor/va$k;->VH:I

    iput p3, p0, Lcom/aide/ui/views/editor/va$k;->gn:I

    iput-object p6, p0, Lcom/aide/ui/views/editor/va$k;->tp:[C

    iput-object p5, p0, Lcom/aide/ui/views/editor/va$k;->u7:[C

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$k;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x22abfb04e6bf0c0L
    .end annotation

    const-wide v2, 0x1e7b6655795d8747L    # 7.61287695827885E-162

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$k;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e7b6655795d8747L    # 7.61287695827885E-162

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$k;->EQ:Lcom/aide/ui/views/editor/va;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    iget-object v0, p2, Lcom/aide/ui/views/editor/va$k;->tp:[C

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$k;->u7:[C

    iget-object v0, p2, Lcom/aide/ui/views/editor/va$k;->u7:[C

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$k;->tp:[C

    iget v0, p2, Lcom/aide/ui/views/editor/va$k;->VH:I

    iput v0, p0, Lcom/aide/ui/views/editor/va$k;->VH:I

    iget v0, p2, Lcom/aide/ui/views/editor/va$k;->gn:I

    iput v0, p0, Lcom/aide/ui/views/editor/va$k;->gn:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$k;->Zo:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6([C[C)[C
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x16a7371156fcf80L
    .end annotation

    const-wide v2, 0x22f08dedbd623d58L    # 2.172079449813571E-140

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$k;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x22f08dedbd623d58L    # 2.172079449813571E-140

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [C

    array-length v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    array-length v1, p2

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    array-length v4, p1

    array-length v5, p2

    invoke-static {p2, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/editor/va$k;->Zo:Z

    if-eqz v0, :cond_3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method


# virtual methods
.method public DW()Lcom/aide/ui/views/editor/va$b;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xea1777808ca3600L
    .end annotation

    const-wide v2, -0x2661e683b2bfecL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$k;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2661e683b2bfecL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/views/editor/va$k;

    iget-object v1, p0, Lcom/aide/ui/views/editor/va$k;->EQ:Lcom/aide/ui/views/editor/va;

    invoke-direct {v0, v1, p0}, Lcom/aide/ui/views/editor/va$k;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$k;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$k;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/g;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x455dcd22177d86dL
    .end annotation

    const-wide v4, 0x162e3b25440403fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$k;->v5:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x162e3b25440403fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/editor/va$k;->VH:I

    iget v1, p0, Lcom/aide/ui/views/editor/va$k;->gn:I

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$k;->u7:[C

    array-length v2, v2

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$k;->EQ:Lcom/aide/ui/views/editor/va;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    iget v0, p0, Lcom/aide/ui/views/editor/va$k;->VH:I

    iget v1, p0, Lcom/aide/ui/views/editor/va$k;->gn:I

    iget-object v2, p0, Lcom/aide/ui/views/editor/va$k;->tp:[C

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$k;->EQ:Lcom/aide/ui/views/editor/va;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/aide/ui/views/editor/g;->j6(II[CLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$k;->Zo:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Lcom/aide/ui/views/editor/va$b;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1182e78a4833f925L
    .end annotation

    const-wide v6, 0x57e42e2d4704fd07L    # 2.484835605997327E115

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/views/editor/va$k;->v5:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x57e42e2d4704fd07L    # 2.484835605997327E115

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Lcom/aide/ui/views/editor/va$k;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/aide/ui/views/editor/va$k;

    move-object v2, v0

    iget v3, v2, Lcom/aide/ui/views/editor/va$k;->gn:I

    iget v4, p0, Lcom/aide/ui/views/editor/va$k;->gn:I

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/aide/ui/views/editor/va$k;->VH:I

    iget v4, p0, Lcom/aide/ui/views/editor/va$k;->VH:I

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$k;->tp:[C

    array-length v5, v5

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$k;->tp:[C

    iget-object v4, v2, Lcom/aide/ui/views/editor/va$k;->tp:[C

    invoke-direct {p0, v3, v4}, Lcom/aide/ui/views/editor/va$k;->j6([C[C)[C

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/views/editor/va$k;->tp:[C

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$k;->u7:[C

    iget-object v2, v2, Lcom/aide/ui/views/editor/va$k;->u7:[C

    invoke-direct {p0, v3, v2}, Lcom/aide/ui/views/editor/va$k;->j6([C[C)[C

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/views/editor/va$k;->u7:[C
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$k;->Zo:Z

    if-eqz v3, :cond_2

    invoke-static {v2, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v2
.end method
