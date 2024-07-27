.class Lcom/aide/ui/scm/b$b$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.field final FH:I
    .annotation runtime Labcd/ru;
        field = -0x35ef7be0893e2050L
    .end annotation
.end field

.field private final Hw:[I
    .annotation runtime Labcd/ru;
        field = 0x222ee9f52e90d82cL
    .end annotation
.end field

.field VH:I
    .annotation runtime Labcd/ru;
        field = 0x5f53c3e27494ac2fL
    .end annotation
.end field

.field final Zo:[I
    .annotation runtime Labcd/ru;
        field = 0x2789bc18cb7369edL
    .end annotation
.end field

.field gn:[Z
    .annotation runtime Labcd/ru;
        field = -0x1b8a415671e46740L
    .end annotation
.end field

.field final u7:Lcom/aide/ui/scm/b$b;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field final v5:[I
    .annotation runtime Labcd/ru;
        field = -0x3c44b0f759ff665fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x3b0a8cbece2a508fL    # 2.7451835782192743E-24

    const-class v0, Lcom/aide/ui/scm/b$b$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/scm/b$b;[Ljava/lang/Object;Ljava/util/Hashtable;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x14389135f5a81878L
    .end annotation

    const-wide v8, -0x4624359d281d1c70L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4624359d281d1c70L

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/scm/b$b$b;->u7:Lcom/aide/ui/scm/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    iput v0, p0, Lcom/aide/ui/scm/b$b$b;->FH:I

    iget v0, p0, Lcom/aide/ui/scm/b$b$b;->FH:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/ui/scm/b$b$b;->Hw:[I

    iget v0, p0, Lcom/aide/ui/scm/b$b$b;->FH:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/ui/scm/b$b$b;->v5:[I

    iget v0, p0, Lcom/aide/ui/scm/b$b$b;->FH:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/aide/ui/scm/b$b$b;->Zo:[I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_3

    aget-object v0, p2, v1

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    aget-object v0, p2, v1

    :try_start_1
    new-instance v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/aide/ui/scm/b$b$b;->Hw:[I

    invoke-static {p1}, Lcom/aide/ui/scm/b$b;->FH(Lcom/aide/ui/scm/b$b;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    aput v4, v3, v1

    :try_start_2
    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/aide/ui/scm/b$b$b;->Hw:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/scm/b$b$b;->DW:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    return-void
.end method

.method private DW([B)V
    .registers 15
    .annotation runtime Labcd/su;
        method = -0x94a42b4857309e0L
    .end annotation

    const/16 v12, 0x8

    const/4 v11, 0x3

    const/4 v4, 0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa5ac35695bdaccdL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v5, p0, Lcom/aide/ui/scm/b$b$b;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_16

    aget-byte v0, p1, v3

    if-ne v0, v10, :cond_2

    aput-byte v2, p1, v3

    move v0, v3

    :cond_1
    :goto_1
    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_2
    aget-byte v0, p1, v3

    if-eqz v0, :cond_17

    move v0, v2

    move v1, v3

    :goto_2
    if-ge v1, v5, :cond_3

    aget-byte v6, p1, v1

    if-nez v6, :cond_4

    :cond_3
    :goto_3
    if-le v1, v3, :cond_6

    add-int/lit8 v6, v1, -0x1

    aget-byte v6, p1, v6

    if-ne v6, v10, :cond_6

    add-int/lit8 v1, v1, -0x1

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    aget-byte v6, p1, v1

    if-ne v6, v10, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    sub-int v6, v1, v3

    mul-int/lit8 v0, v0, 0x4

    if-le v0, v6, :cond_8

    move v0, v1

    :cond_7
    :goto_4
    if-le v0, v3, :cond_17

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p1, v0

    if-ne v1, v10, :cond_7

    aput-byte v2, p1, v0

    goto :goto_4

    :cond_8
    :try_start_1
    div-int/lit8 v0, v6, 0x4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v4

    :goto_5
    shr-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_9

    mul-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v1, 0x1

    move v1, v2

    move v0, v2

    :goto_6
    if-ge v0, v6, :cond_d

    add-int v8, v3, v0

    aget-byte v9, p1, v8

    if-eq v9, v10, :cond_b

    move v1, v2

    :cond_a
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v1, v1, 0x1

    if-ne v7, v1, :cond_c

    sub-int/2addr v0, v1

    goto :goto_7

    :cond_c
    if-ge v7, v1, :cond_a

    aput-byte v2, p1, v8

    goto :goto_7

    :cond_d
    move v1, v2

    move v0, v2

    :goto_8
    if-ge v1, v6, :cond_e

    if-lt v1, v12, :cond_11

    add-int v7, v3, v1

    aget-byte v7, p1, v7

    if-ne v7, v4, :cond_11

    :cond_e
    add-int/lit8 v0, v6, -0x1

    add-int/2addr v0, v3

    move v3, v2

    move v1, v2

    :goto_9
    if-ge v3, v6, :cond_1

    if-lt v3, v12, :cond_f

    sub-int v7, v0, v3

    aget-byte v7, p1, v7

    if-eq v7, v4, :cond_1

    :cond_f
    sub-int v7, v0, v3

    aget-byte v8, p1, v7

    if-ne v8, v10, :cond_14

    aput-byte v2, p1, v7

    :cond_10
    move v1, v2

    :goto_a
    if-eq v1, v11, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    add-int v7, v3, v1

    aget-byte v8, p1, v7

    if-ne v8, v10, :cond_13

    aput-byte v2, p1, v7

    :cond_12
    move v0, v2

    :goto_b
    if-eq v0, v11, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    aget-byte v7, p1, v7

    if-eqz v7, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_14
    aget-byte v7, p1, v7

    if-eqz v7, :cond_10

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b$b;->DW:Z

    if-eqz v1, :cond_15

    const-wide v2, -0xa5ac35695bdaccdL

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    throw v0

    :cond_16
    return-void

    :cond_17
    move v0, v3

    goto/16 :goto_1
.end method

.method private j6([B)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x5dadeb3e80376f7L
    .end annotation

    const-wide v6, -0x75a6d2df2686008L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x75a6d2df2686008L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v3, p0, Lcom/aide/ui/scm/b$b$b;->FH:I

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_4

    iget-object v1, p0, Lcom/aide/ui/scm/b$b$b;->u7:Lcom/aide/ui/scm/b$b;

    iget-boolean v1, v1, Lcom/aide/ui/scm/b$b;->v5:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    aget-byte v1, p1, v2

    if-nez v1, :cond_2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/aide/ui/scm/b$b$b;->v5:[I

    iget-object v4, p0, Lcom/aide/ui/scm/b$b$b;->Hw:[I

    aget v4, v4, v2

    aput v4, v1, v0

    iget-object v1, p0, Lcom/aide/ui/scm/b$b$b;->Zo:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/aide/ui/scm/b$b$b;->gn:[Z

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v1, v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b$b;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_2
    iput v0, p0, Lcom/aide/ui/scm/b$b$b;->VH:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void
.end method

.method private j6([I)[B
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x29fdb9ad510bd867L
    .end annotation

    const-wide v6, 0xf4bf3922f336f68L    # 5.49436778464632E-235

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf4bf3922f336f68L    # 5.49436778464632E-235

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v2, p0, Lcom/aide/ui/scm/b$b$b;->FH:I

    new-array v3, v2, [B

    iget-object v4, p0, Lcom/aide/ui/scm/b$b$b;->Hw:[I

    const/4 v1, 0x5

    div-int/lit8 v0, v2, 0x40
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    shr-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_6

    aget v5, v4, v0

    if-nez v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget v5, v4, v0

    aget v5, p1, v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    aput-byte v5, v3, v0

    goto :goto_2

    :cond_4
    if-le v5, v1, :cond_2

    const/4 v5, 0x2

    aput-byte v5, v3, v0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b$b;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    return-object v3
.end method


# virtual methods
.method DW(Lcom/aide/ui/scm/b$b$b;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = -0x232ddeee5aa3f6fcL
    .end annotation

    const-wide v12, -0x1d4797534967e79fL    # -3.5983678247332626E167

    const/4 v5, -0x1

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d4797534967e79fL    # -3.5983678247332626E167

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v8, p0, Lcom/aide/ui/scm/b$b$b;->gn:[Z

    iget-object v9, p1, Lcom/aide/ui/scm/b$b$b;->gn:[Z

    iget v10, p0, Lcom/aide/ui/scm/b$b$b;->FH:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v5

    move v0, v5

    move v3, v7

    move v1, v7

    :goto_0
    if-ge v3, v10, :cond_2

    add-int/lit8 v5, v3, 0x1

    aget-boolean v2, v8, v5

    if-nez v2, :cond_2

    move v2, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    aget-boolean v2, v9, v1

    if-eqz v2, :cond_1

    move v0, v1

    move v2, v1

    goto :goto_1

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    if-ne v3, v10, :cond_3

    return-void

    :cond_3
    move v2, v3

    move v4, v1

    move v5, v3

    :goto_2
    if-ge v5, v10, :cond_4

    add-int/lit8 v3, v5, 0x1

    aget-boolean v11, v8, v3

    if-eqz v11, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    if-eq v5, v10, :cond_7

    :try_start_1
    iget-object v3, p0, Lcom/aide/ui/scm/b$b$b;->Hw:[I

    aget v3, v3, v2

    iget-object v11, p0, Lcom/aide/ui/scm/b$b$b;->Hw:[I

    aget v11, v11, v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v3, v11, :cond_7

    add-int/lit8 v3, v4, 0x1

    aget-boolean v11, v9, v3

    if-nez v11, :cond_7

    if-eq v5, v10, :cond_7

    if-ltz v6, :cond_5

    if-eq v2, v6, :cond_7

    :cond_5
    if-ltz v0, :cond_6

    if-eq v1, v0, :cond_7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v8, v5

    add-int/lit8 v2, v2, 0x1

    aput-boolean v7, v8, v2

    move v4, v3

    goto :goto_2

    :cond_7
    move v6, v5

    move v0, v4

    move v3, v5

    move v1, v4

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b$b;->DW:Z

    if-eqz v1, :cond_8

    invoke-static {v0, v12, v13, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v0
.end method

.method DW()[I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x34c5f3e8e8d10443L
    .end annotation

    const-wide v4, -0x178b938ec8e74260L    # -1.490903579650832E195

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x178b938ec8e74260L    # -1.490903579650832E195

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/scm/b$b$b;->u7:Lcom/aide/ui/scm/b$b;

    invoke-static {v0}, Lcom/aide/ui/scm/b$b;->DW(Lcom/aide/ui/scm/b$b;)I

    move-result v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/aide/ui/scm/b$b$b;->FH:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/aide/ui/scm/b$b$b;->Hw:[I

    aget v2, v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-object v1
.end method

.method j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x19b24f18aac5391bL
    .end annotation

    const-wide v2, -0x1fe453e1a48bfd20L    # -9.275634893879556E154

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1fe453e1a48bfd20L    # -9.275634893879556E154

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/scm/b$b$b;->FH:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/aide/ui/scm/b$b$b;->gn:[Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method j6(Lcom/aide/ui/scm/b$b$b;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x255d26263576b8f0L
    .end annotation

    const-wide v2, 0x2fb522d9e9b7971L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/b$b$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2fb522d9e9b7971L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/scm/b$b$b;->j6()V

    invoke-virtual {p1}, Lcom/aide/ui/scm/b$b$b;->DW()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/scm/b$b$b;->j6([I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/aide/ui/scm/b$b$b;->DW([B)V

    invoke-direct {p0, v0}, Lcom/aide/ui/scm/b$b$b;->j6([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/b$b$b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
