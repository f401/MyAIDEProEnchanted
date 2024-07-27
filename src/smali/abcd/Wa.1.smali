.class public final Labcd/Wa;
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
.field public EQ:I

.field public FH:[I

.field public Hw:[I

.field public VH:[I

.field public Zo:[I

.field public gn:[I

.field public tp:I

.field public u7:[C

.field public v5:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1d0af3d80fc09bebL    # -4.964525956896806E168

    const-class v0, Labcd/Wa;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x12257f9d10a1558L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Wa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12257f9d10a1558L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Wa;->FH:[I

    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Wa;->Hw:[I

    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Wa;->v5:[I

    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Wa;->Zo:[I

    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Wa;->VH:[I

    const/16 v0, 0x2710

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Wa;->gn:[I

    const/16 v0, 0x3e8

    new-array v0, v0, [C

    iput-object v0, p0, Labcd/Wa;->u7:[C

    const/4 v0, 0x1

    iput v0, p0, Labcd/Wa;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public DW(I)I
    .registers 6

    const-wide v2, -0x8aca34adb73cc14L

    :try_start_0
    sget-boolean v0, Labcd/Wa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8aca34adb73cc14L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/Wa;->u7:[C

    aget-char v0, v0, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wa;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(I)I
    .registers 6

    const-wide v2, -0x88232c6ecbb86e0L    # -3.843762170248878E267

    :try_start_0
    sget-boolean v0, Labcd/Wa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x88232c6ecbb86e0L    # -3.843762170248878E267

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wa;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(I)Ljava/lang/String;
    .registers 8

    const-wide v4, 0x4a7b9797ea656b10L    # 6.452158343302319E50

    :try_start_0
    sget-boolean v0, Labcd/Wa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4a7b9797ea656b10L    # 6.452158343302319E50

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Labcd/Wa;->u7:[C

    invoke-virtual {p0, p1}, Labcd/Wa;->FH(I)I

    move-result v2

    invoke-virtual {p0, p1}, Labcd/Wa;->DW(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wa;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6([CII)I
    .registers 14

    const-wide v8, -0x143e45d6d65da510L    # -1.165592895828392E211

    :try_start_0
    sget-boolean v0, Labcd/Wa;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x143e45d6d65da510L    # -1.165592895828392E211

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Wa;->tp:I

    add-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/Wa;->u7:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Labcd/Wa;->u7:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Labcd/Wa;->tp:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Labcd/Wa;->u7:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/Wa;->u7:[C

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Wa;->u7:[C

    :cond_1
    iget v0, p0, Labcd/Wa;->tp:I

    iget-object v1, p0, Labcd/Wa;->u7:[C

    iget v2, p0, Labcd/Wa;->tp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/Wa;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v3, p3

    aput-char v3, v1, v2

    :try_start_1
    iget-object v1, p0, Labcd/Wa;->u7:[C

    iget v2, p0, Labcd/Wa;->tp:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Labcd/Wa;->tp:I

    add-int/2addr v1, p3

    iput v1, p0, Labcd/Wa;->tp:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Wa;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6()V
    .registers 5

    const-wide v2, 0x4d3f65f12ca5888L

    :try_start_0
    sget-boolean v0, Labcd/Wa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4d3f65f12ca5888L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Wa;->EQ:I

    const/4 v0, 0x1

    iput v0, p0, Labcd/Wa;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)V
    .registers 10

    const-wide v6, 0x7ae0879ad27d9f7L

    :try_start_0
    sget-boolean v0, Labcd/Wa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7ae0879ad27d9f7L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/Wa;->FH:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    :goto_0
    if-lt p1, v0, :cond_1

    iget-object v0, p0, Labcd/Wa;->FH:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    new-array v1, v0, [I

    iget-object v2, p0, Labcd/Wa;->FH:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Labcd/Wa;->FH:[I

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/Wa;->FH:[I

    new-array v1, v0, [I

    iget-object v2, p0, Labcd/Wa;->Hw:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Labcd/Wa;->Hw:[I

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/Wa;->Hw:[I

    new-array v1, v0, [I

    iget-object v2, p0, Labcd/Wa;->v5:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Labcd/Wa;->v5:[I

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/Wa;->v5:[I

    new-array v1, v0, [I

    iget-object v2, p0, Labcd/Wa;->VH:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Labcd/Wa;->VH:[I

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/Wa;->VH:[I

    new-array v1, v0, [I

    iget-object v2, p0, Labcd/Wa;->Zo:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Labcd/Wa;->Zo:[I

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/Wa;->Zo:[I

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/Wa;->gn:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/Wa;->gn:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Wa;->gn:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Wa;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(IIIIII)V
    .registers 12

    sget-boolean v0, Labcd/Wa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x26c1a1367f898b10L

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

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

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Wa;->EQ:I

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Labcd/Wa;->j6(I)V

    iget-object v1, p0, Labcd/Wa;->FH:[I

    aput p1, v1, v0

    iget-object v1, p0, Labcd/Wa;->Hw:[I

    aput p2, v1, v0

    iget-object v1, p0, Labcd/Wa;->v5:[I

    aput p3, v1, v0

    iget-object v1, p0, Labcd/Wa;->VH:[I

    aput p4, v1, v0

    iget-object v1, p0, Labcd/Wa;->Zo:[I

    aput p5, v1, v0

    iget-object v1, p0, Labcd/Wa;->gn:[I

    aput p6, v1, v0

    iget v0, p0, Labcd/Wa;->EQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Wa;->EQ:I

    return-void
.end method
