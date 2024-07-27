.class public Labcd/zb;
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
.field private FH:[I
    .annotation runtime Labcd/ru;
        field = -0x282b6d6b2d9d1400L
    .end annotation
.end field

.field private Hw:[I
    .annotation runtime Labcd/ru;
        field = 0x1f0392033e010900L
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x33c1d95b3ad61f5fL
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = 0x1e711952982959b0L
    .end annotation
.end field

.field private gn:[I
    .annotation runtime Labcd/ru;
        field = 0x14338dbbddd7a150L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x1a603146a3e8744fL
    .end annotation
.end field

.field private u7:[I
    .annotation runtime Labcd/ru;
        field = 0x433f1f23e0886cdL
    .end annotation
.end field

.field private v5:[I
    .annotation runtime Labcd/ru;
        field = -0x2ae0fa31a81c322fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x1f0d93430b9b8f7L

    const-class v0, Labcd/zb;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x44b8160c5936b1e8L    # 1.137435137610322E23

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x44b8160c5936b1e8L    # 1.137435137610322E23

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/zb;->FH:[I

    const/16 v0, 0xbb8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/zb;->Hw:[I

    const/16 v0, 0xbb8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/zb;->v5:[I

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/zb;->Zo:[I

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/zb;->VH:[I

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/zb;->gn:[I

    const/16 v0, 0x3e8

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/zb;->u7:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/zb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/zb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Zo()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x2074e38d851c9f7cL
    .end annotation

    const-wide v6, 0x1dc66341aaf413a0L    # 3.037262097310498E-165

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1dc66341aaf413a0L    # 3.037262097310498E-165

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/zb;->Zo:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/zb;->Zo:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/zb;->Zo:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/zb;->Zo:[I

    iget-object v0, p0, Labcd/zb;->VH:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/zb;->VH:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/zb;->VH:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/zb;->VH:[I

    iget-object v0, p0, Labcd/zb;->gn:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/zb;->gn:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/zb;->gn:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/zb;->gn:[I

    iget-object v0, p0, Labcd/zb;->u7:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/zb;->u7:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/zb;->u7:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/zb;->u7:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/zb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private v5()V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x201fefb7dab34c5bL
    .end annotation

    const-wide v10, 0x1d785c6a594c70a7L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x1d785c6a594c70a7L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/zb;->FH:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [I

    iget-object v0, p0, Labcd/zb;->FH:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [I

    iget-object v0, p0, Labcd/zb;->FH:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    move v2, v1

    :goto_0
    iget v0, p0, Labcd/zb;->tp:I

    if-ge v2, v0, :cond_4

    iget-object v0, p0, Labcd/zb;->Zo:[I

    aget v6, v0, v2

    if-eqz v6, :cond_3

    iget-object v0, p0, Labcd/zb;->VH:[I

    aget v7, v0, v2

    iget-object v0, p0, Labcd/zb;->gn:[I

    aget v8, v0, v2

    const v0, 0x7fffffff

    and-int/2addr v0, v6

    array-length v9, v3

    rem-int/2addr v0, v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    aget v9, v3, v0

    if-eqz v9, :cond_2

    add-int/lit8 v0, v0, 0x1

    :try_start_1
    array-length v9, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v0, v9, :cond_1

    move v0, v1

    goto :goto_1

    :cond_2
    aput v6, v3, v0

    aput v8, v4, v0

    aput v7, v5, v0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    :try_start_2
    iput-object v3, p0, Labcd/zb;->FH:[I

    iput-object v5, p0, Labcd/zb;->v5:[I

    iput-object v4, p0, Labcd/zb;->Hw:[I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/zb;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0
.end method


# virtual methods
.method public DW(II)I
    .registers 11

    const-wide v2, 0x426c0ce94172e300L    # 9.638055801830938E11

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x426c0ce94172e300L    # 9.638055801830938E11

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Labcd/zb;->FH:[I

    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    rem-int v1, v0, v5

    const/4 v0, -0x1

    :cond_1
    aget v6, v4, v1

    if-ne v6, p1, :cond_2

    :try_start_1
    iget-object v7, p0, Labcd/zb;->v5:[I

    aget v7, v7, v1

    if-ne v7, p2, :cond_2

    iget-object v0, p0, Labcd/zb;->Hw:[I

    aget v0, v0, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v5, :cond_3

    const/4 v1, 0x0

    :cond_3
    if-nez v6, :cond_1

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/zb;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public DW()V
    .registers 7

    const-wide v4, 0xab89614f6a64f45L

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xab89614f6a64f45L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/zb;->Zo:[I

    array-length v0, v0

    iget v1, p0, Labcd/zb;->tp:I

    if-gt v0, v1, :cond_1

    invoke-direct {p0}, Labcd/zb;->Zo()V

    :cond_1
    iget-object v0, p0, Labcd/zb;->Zo:[I

    iget v1, p0, Labcd/zb;->tp:I

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v0, p0, Labcd/zb;->tp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/zb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/zb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH()V
    .registers 7

    const-wide v4, 0xb6be0ceccd07068L

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb6be0ceccd07068L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/zb;->Zo:[I

    array-length v0, v0

    iget v1, p0, Labcd/zb;->tp:I

    if-gt v0, v1, :cond_1

    invoke-direct {p0}, Labcd/zb;->Zo()V

    :cond_1
    iget-object v0, p0, Labcd/zb;->Zo:[I

    iget v1, p0, Labcd/zb;->tp:I

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v0, p0, Labcd/zb;->tp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/zb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/zb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw()V
    .registers 11

    const-wide v8, -0x1610d727ecf24a74L    # -1.908087311663519E202

    const/4 v3, 0x0

    const/4 v1, -0x1

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, -0x1610d727ecf24a74L    # -1.908087311663519E202

    invoke-static {v4, v5, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v5, p0, Labcd/zb;->FH:[I

    array-length v6, v5

    iget v0, p0, Labcd/zb;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/zb;->tp:I

    iget-object v0, p0, Labcd/zb;->Zo:[I

    iget v2, p0, Labcd/zb;->tp:I

    aget v0, v0, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    :goto_0
    if-eqz v4, :cond_6

    const v0, 0x7fffffff

    and-int/2addr v0, v4

    rem-int v2, v0, v6

    move v0, v1

    :cond_1
    aget v7, v5, v2

    if-ne v7, v4, :cond_2

    move v0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v6, :cond_3

    move v2, v3

    :cond_3
    if-nez v7, :cond_1

    if-eq v0, v1, :cond_4

    aput v3, v5, v0

    :cond_4
    :try_start_1
    iget v0, p0, Labcd/zb;->tp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/zb;->tp:I

    iget-object v0, p0, Labcd/zb;->Zo:[I

    iget v2, p0, Labcd/zb;->tp:I

    aget v0, v0, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/zb;->DW:Z

    if-eqz v1, :cond_5

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5
    throw v0

    :cond_6
    return-void
.end method

.method public j6()V
    .registers 7

    const-wide v4, -0x3bd77d40bd55bd7L    # -3.611987725490302E290

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/zb;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x3bd77d40bd55bd7L    # -3.611987725490302E290

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/zb;->tp:I

    if-lez v1, :cond_1

    :goto_0
    iget-object v1, p0, Labcd/zb;->FH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/zb;->FH:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Labcd/zb;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/zb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(III)V
    .registers 14

    const-wide v8, -0xb77d95c4f76d8f3L

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0xb77d95c4f76d8f3L

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/zb;->FH:[I

    array-length v0, v0

    iget v1, p0, Labcd/zb;->tp:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Labcd/zb;->v5()V

    :cond_1
    iget-object v0, p0, Labcd/zb;->Zo:[I

    array-length v0, v0

    iget v1, p0, Labcd/zb;->tp:I

    if-gt v0, v1, :cond_2

    invoke-direct {p0}, Labcd/zb;->Zo()V

    :cond_2
    iget-object v0, p0, Labcd/zb;->Zo:[I

    iget v1, p0, Labcd/zb;->tp:I

    aput p1, v0, v1

    iget-object v0, p0, Labcd/zb;->VH:[I

    iget v1, p0, Labcd/zb;->tp:I

    aput p3, v0, v1

    iget-object v0, p0, Labcd/zb;->gn:[I

    iget v1, p0, Labcd/zb;->tp:I

    aput p2, v0, v1

    iget v0, p0, Labcd/zb;->tp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/zb;->tp:I

    iget-object v1, p0, Labcd/zb;->FH:[I

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    rem-int/2addr v0, v2

    :cond_3
    :goto_0
    aget v3, v1, v0

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    aput p1, v1, v0

    :try_start_1
    iget-object v1, p0, Labcd/zb;->Hw:[I

    aput p2, v1, v0

    iget-object v1, p0, Labcd/zb;->v5:[I

    aput p3, v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/zb;->DW:Z

    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public j6(II)Z
    .registers 11

    const-wide v2, -0x48852748e05ab61L    # -5.633512170101365E286

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x48852748e05ab61L    # -5.633512170101365E286

    invoke-static {v6, v7, p0, v0, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Labcd/zb;->FH:[I

    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7fffffff

    and-int/2addr v0, p1

    rem-int/2addr v0, v5

    :cond_1
    aget v6, v4, v0

    if-ne v6, p1, :cond_2

    :try_start_1
    iget-object v7, p0, Labcd/zb;->v5:[I

    aget v7, v7, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v7, p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v5, :cond_3

    move v0, v1

    :cond_3
    if-nez v6, :cond_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/zb;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method
