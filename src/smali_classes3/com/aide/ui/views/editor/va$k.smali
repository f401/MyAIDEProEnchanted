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
    .registers 3

    const-class v0, Lcom/aide/ui/views/editor/va$k;

    const-wide v1, -0x4eb42c3dedc23535L  # -3.1499251516530327E-71

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/editor/va;Labcd/fm;II[C[C)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x1d5509366b01250fL
    .end annotation

    sget-boolean v0, Lcom/aide/ui/views/editor/va$k;->v5:Z

    if-eqz v0, :cond_2c

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

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-wide v1, -0x41340c2b932b5350L  # -3.3321929097294856E-6

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_2c
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

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$k;->v5:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, 0x1e7b6655795d8747L  # 7.61287695827885E-162

    invoke-static {v2, v3, v1, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/ui/views/editor/va$k;->EQ:Lcom/aide/ui/views/editor/va;

    invoke-direct {p0, p1, v1}, Lcom/aide/ui/views/editor/va$b;-><init>(Lcom/aide/ui/views/editor/va;Labcd/fm;)V

    iget-object v0, p2, Lcom/aide/ui/views/editor/va$k;->tp:[C

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$k;->u7:[C

    iget-object v0, p2, Lcom/aide/ui/views/editor/va$k;->u7:[C

    iput-object v0, p0, Lcom/aide/ui/views/editor/va$k;->tp:[C

    iget v0, p2, Lcom/aide/ui/views/editor/va$k;->VH:I

    iput v0, p0, Lcom/aide/ui/views/editor/va$k;->VH:I

    iget v0, p2, Lcom/aide/ui/views/editor/va$k;->gn:I

    iput v0, p0, Lcom/aide/ui/views/editor/va$k;->gn:I
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$k;->Zo:Z

    if-eqz v1, :cond_34

    const-wide v2, 0x1e7b6655795d8747L  # 7.61287695827885E-162

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method private j6([C[C)[C
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x16a7371156fcf80L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/editor/va$k;->v5:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x22f08dedbd623d58L  # 2.172079449813571E-140

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    new-array v0, v0, [C

    array-length v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    array-length v1, p2

    if-eqz v1, :cond_21

    array-length v1, p1

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    :cond_21
    return-object v0

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/editor/va$k;->Zo:Z

    if-eqz v1, :cond_33

    const-wide v2, 0x22f08dedbd623d58L  # 2.172079449813571E-140

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method


# virtual methods
.method public DW()Lcom/aide/ui/views/editor/va$b;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xea1777808ca3600L
    .end annotation

    const-wide v0, -0x2661e683b2bfecL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$k;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/views/editor/va$k;

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$k;->EQ:Lcom/aide/ui/views/editor/va;

    invoke-direct {v2, v3, p0}, Lcom/aide/ui/views/editor/va$k;-><init>(Lcom/aide/ui/views/editor/va;Lcom/aide/ui/views/editor/va$k;)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_14

    return-object v2

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$k;->Zo:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/g;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x455dcd22177d86dL
    .end annotation

    const-wide v0, 0x162e3b25440403fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$k;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/ui/views/editor/va$k;->VH:I

    iget v3, p0, Lcom/aide/ui/views/editor/va$k;->gn:I

    iget-object v4, p0, Lcom/aide/ui/views/editor/va$k;->u7:[C

    array-length v4, v4

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$k;->EQ:Lcom/aide/ui/views/editor/va;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/aide/ui/views/editor/g;->j6(IIILjava/lang/Object;)V

    iget v2, p0, Lcom/aide/ui/views/editor/va$k;->VH:I

    iget v3, p0, Lcom/aide/ui/views/editor/va$k;->gn:I

    iget-object v4, p0, Lcom/aide/ui/views/editor/va$k;->tp:[C

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$k;->EQ:Lcom/aide/ui/views/editor/va;

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/aide/ui/views/editor/g;->j6(II[CLjava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$k;->Zo:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public j6(Lcom/aide/ui/views/editor/va$b;)Z
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x1182e78a4833f925L
    .end annotation

    const-wide v0, 0x57e42e2d4704fd07L  # 2.484835605997327E115

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/editor/va$k;->v5:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Lcom/aide/ui/views/editor/va$k;

    if-eqz v2, :cond_37

    move-object v2, p1

    check-cast v2, Lcom/aide/ui/views/editor/va$k;

    iget v3, v2, Lcom/aide/ui/views/editor/va$k;->gn:I

    iget v4, p0, Lcom/aide/ui/views/editor/va$k;->gn:I

    if-ne v3, v4, :cond_37

    iget v3, v2, Lcom/aide/ui/views/editor/va$k;->VH:I

    iget v4, p0, Lcom/aide/ui/views/editor/va$k;->VH:I

    iget-object v5, p0, Lcom/aide/ui/views/editor/va$k;->tp:[C

    array-length v6, v5

    add-int/2addr v4, v6

    if-ne v3, v4, :cond_37

    iget-object v3, v2, Lcom/aide/ui/views/editor/va$k;->tp:[C

    invoke-direct {p0, v5, v3}, Lcom/aide/ui/views/editor/va$k;->j6([C[C)[C

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/views/editor/va$k;->tp:[C

    iget-object v3, p0, Lcom/aide/ui/views/editor/va$k;->u7:[C

    iget-object v2, v2, Lcom/aide/ui/views/editor/va$k;->u7:[C

    invoke-direct {p0, v3, v2}, Lcom/aide/ui/views/editor/va$k;->j6([C[C)[C

    move-result-object v2

    iput-object v2, p0, Lcom/aide/ui/views/editor/va$k;->u7:[C
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_39

    const/4 p1, 0x1

    return p1

    :cond_37
    const/4 p1, 0x0

    return p1

    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/editor/va$k;->Zo:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v2
.end method
