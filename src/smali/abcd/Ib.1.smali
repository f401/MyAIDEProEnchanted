.class public Labcd/Ib;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:[I
    .annotation runtime Labcd/ru;
        field = 0x92e53985d0ca25L
    .end annotation
.end field


# instance fields
.field private EQ:[I
    .annotation runtime Labcd/ru;
        field = -0x2402347f77a4ab31L
    .end annotation
.end field

.field private Hw:[I
    .annotation runtime Labcd/ru;
        field = 0x2380f86e4f7d75b5L
    .end annotation
.end field

.field private VH:[I
    .annotation runtime Labcd/ru;
        field = -0x2411866fe603b865L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = 0x216ddd6d7fcca2a0L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = 0x137296a168e2c9d0L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x2ac80b217c67de39L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = 0xa5fe3055a4b2360L
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = -0x18291309fe603540L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x15822e96a0501b4fL
    .end annotation

    const-wide v8, -0x1d804d54a5aa57c4L    # -2.9205758291227668E166

    const/4 v6, 0x0

    :try_start_0
    const-class v0, Labcd/Ib;

    const-wide v2, 0x6d21239793da93L

    const-wide v4, 0x6d21239793da93L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d804d54a5aa57c4L    # -2.9205758291227668E166

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Labcd/Ib;->j6:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v8, v9, v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    nop

    :array_0
    .array-data 4
        0x5
        0xb
        0x11
        0x25
        0x43
        0x83
        0x101
        0x209
        0x407
        0x805
        0x1003
        0x2011
        0x401b
        0x8003
        0x10001
        0x2001d
        0x40003
        0x80015
        0x100007
        0x200011
        0x40000f
        0x800009
        0x100002b
        0x2000023
        0x400000f
        0x800001d
        0x10000003
        0x2000000b
        0x40000003    # 2.0000007f
        0x7ffe7961
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x25e79eaf2d43a798L    # -1.0314647517208064E126

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x25e79eaf2d43a798L    # -1.0314647517208064E126

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ib;->tp:I

    sget-object v0, Labcd/Ib;->j6:[I

    iget v1, p0, Labcd/Ib;->tp:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Ib;->Zo:[I

    sget-object v0, Labcd/Ib;->j6:[I

    iget v1, p0, Labcd/Ib;->tp:I

    aget v0, v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Ib;->VH:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Ib;->Hw:[I

    const/4 v0, 0x1

    iput v0, p0, Labcd/Ib;->v5:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ib;->gn:I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Ib;->u7:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 10

    const-wide v6, -0x1ef10248925fde68L    # -3.403959911164152E159

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ib;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x1ef10248925fde68L    # -3.403959911164152E159

    const/4 v1, 0x0

    invoke-static {v2, v3, v1, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Ib;->u7:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Ib;->gn:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Ib;->tp:I

    sget-object v1, Labcd/Ib;->j6:[I

    iget v2, p0, Labcd/Ib;->tp:I

    aget v1, v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Ib;->Zo:[I

    move v1, v0

    :goto_0
    iget-object v2, p0, Labcd/Ib;->Zo:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Labcd/Ib;->Zo:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Labcd/Ib;->j6:[I

    iget v2, p0, Labcd/Ib;->tp:I

    aget v1, v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Ib;->VH:[I

    move v1, v0

    :goto_1
    iget-object v2, p0, Labcd/Ib;->VH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Labcd/Ib;->VH:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Labcd/Ib;->v5:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Labcd/Ib;->Hw:[I

    :goto_2
    iget v1, p0, Labcd/Ib;->v5:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Labcd/Ib;->Hw:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, v4, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method private FH([III)I
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x34cc593988de6629L
    .end annotation

    const-wide v8, -0x926a3b852b1dd73L

    const v6, 0x7fffffff

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x926a3b852b1dd73L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v1, v7

    move v0, v7

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, v1, p2

    aget v2, p1, v2

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move v0, v6

    :cond_2
    and-int/2addr v0, v6

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ib;->FH:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private j6()V
    .registers 13
    .annotation runtime Labcd/su;
        method = 0x22edf89a246fd0c5L
    .end annotation

    const-wide v10, 0x3ac9e5d46c21ce9L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ib;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x3ac9e5d46c21ce9L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Ib;->tp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Ib;->tp:I

    sget-object v1, Labcd/Ib;->j6:[I

    iget v2, p0, Labcd/Ib;->tp:I

    aget v1, v1, v2

    new-array v3, v1, [I

    sget-object v1, Labcd/Ib;->j6:[I

    iget v2, p0, Labcd/Ib;->tp:I

    aget v1, v1, v2

    new-array v4, v1, [I

    move v2, v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Labcd/Ib;->Zo:[I

    array-length v0, v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    aget v5, v0, v2

    if-eqz v5, :cond_4

    const/high16 v0, -0x80000000

    if-eq v5, v0, :cond_4

    iget-object v0, p0, Labcd/Ib;->Hw:[I

    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Labcd/Ib;->Hw:[I

    aget v7, v7, v5

    invoke-direct {p0, v0, v6, v7}, Labcd/Ib;->FH([III)I

    move-result v6

    array-length v0, v3

    rem-int v0, v6, v0

    array-length v7, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    aget v8, v3, v0

    if-eqz v8, :cond_1

    add-int/lit8 v8, v7, -0x2

    :try_start_1
    rem-int v8, v6, v8

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v0, v8

    array-length v8, v3

    rem-int/2addr v0, v8
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_1
    aput v5, v3, v0

    :try_start_2
    iget-object v5, p0, Labcd/Ib;->VH:[I

    aget v5, v5, v2

    aput v5, v4, v0

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iput-object v3, p0, Labcd/Ib;->Zo:[I

    iput-object v4, p0, Labcd/Ib;->VH:[I

    iput v1, p0, Labcd/Ib;->gn:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public DW(I[I[III)I
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x273f1625b37ecd01L    # -3.412097681835353E119

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    mul-int/lit8 v0, p5, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    array-length v1, v1

    if-gt v1, v0, :cond_2

    :cond_1
    new-array v1, v0, [I

    iput-object v1, p0, Labcd/Ib;->EQ:[I

    :cond_2
    iget-object v1, p0, Labcd/Ib;->EQ:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    const/4 v2, 0x1

    invoke-static {p2, p4, v1, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    add-int/lit8 v2, p5, 0x1

    invoke-static {p3, p4, v1, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Labcd/Ib;->DW([III)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ib;->FH:Z

    if-eqz v0, :cond_3

    const-wide v2, -0x273f1625b37ecd01L    # -3.412097681835353E119

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public DW([III)I
    .registers 14

    const-wide v8, -0x17d34033134dc40dL    # -6.558330601192512E193

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x17d34033134dc40dL    # -6.558330601192512E193

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Labcd/Ib;->FH([III)I

    move-result v3

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    array-length v0, v0

    rem-int v1, v3, v0

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    array-length v4, v0

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    aget v0, v0, v1

    move v2, v1

    :goto_0
    if-eqz v0, :cond_4

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Labcd/Ib;->Hw:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_1

    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_3

    iget-object v5, p0, Labcd/Ib;->Hw:[I

    aget v5, v5, v1

    add-int v6, p2, v0

    aget v6, p1, v6

    if-eq v5, v6, :cond_2

    :cond_1
    add-int/lit8 v0, v4, -0x2

    rem-int v0, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    iget-object v1, p0, Labcd/Ib;->Zo:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    aget v0, v0, v1

    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Labcd/Ib;->VH:[I

    aget v0, v0, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v0

    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ib;->FH:Z

    if-eqz v0, :cond_5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public j6(I[I[IIII)V
    .registers 14

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x242423703521dL

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    const/4 v3, 0x2

    aput-object p3, v2, v3

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
    mul-int/lit8 v0, p5, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    if-gt v1, v0, :cond_2

    :cond_1
    new-array v1, v0, [I

    iput-object v1, p0, Labcd/Ib;->EQ:[I

    :cond_2
    iget-object v1, p0, Labcd/Ib;->EQ:[I

    aput p1, v1, v5

    invoke-static {p2, p4, v1, v6, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    add-int/lit8 v2, p5, 0x1

    invoke-static {p3, p4, v1, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    invoke-virtual {p0, v1, v5, v0, p6}, Labcd/Ib;->j6([IIII)V

    return-void
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, -0x67054d3437c59814L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Ib;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x67054d3437c59814L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v1, p0, Labcd/Ib;->u7:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Labcd/Ib;->gn:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Labcd/Ib;->tp:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v0

    :goto_0
    iget-object v2, p0, Labcd/Ib;->Zo:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Labcd/Ib;->Zo:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Labcd/Ib;->VH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Labcd/Ib;->VH:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Labcd/Ib;->v5:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Labcd/Ib;->Hw:[I

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_2
    iget v1, p0, Labcd/Ib;->v5:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Labcd/Ib;->Hw:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    return-void
.end method

.method public j6([IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x80cba2a6ec9ff8fL    # -6.363568481973495E269

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Labcd/Ib;->FH([III)I

    move-result v4

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    array-length v0, v0

    rem-int v1, v4, v0

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    array-length v5, v0

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    aget v0, v0, v1

    move v2, v0

    move v3, v1

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_5

    const/high16 v6, -0x80000000

    if-eq v2, v6, :cond_5

    iget-object v0, p0, Labcd/Ib;->Hw:[I

    aget v0, v0, v2

    if-ne v0, p3, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    :goto_1
    if-ge v0, p3, :cond_3

    iget-object v1, p0, Labcd/Ib;->Hw:[I

    aget v1, v1, v2

    add-int v6, p2, v0

    aget v6, p1, v6

    if-eq v1, v6, :cond_2

    :cond_1
    add-int/lit8 v0, v5, -0x2

    rem-int v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    iget-object v1, p0, Labcd/Ib;->Zo:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    aget v0, v0, v1

    move v2, v0

    move v3, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Labcd/Ib;->VH:[I

    aput p4, v0, v3

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v1, p0, Labcd/Ib;->Zo:[I

    iget v4, p0, Labcd/Ib;->v5:I

    aput v4, v1, v3

    iget v1, p0, Labcd/Ib;->v5:I

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Labcd/Ib;->Hw:[I

    array-length v4, v4

    if-lt v1, v4, :cond_6

    iget-object v1, p0, Labcd/Ib;->Hw:[I

    array-length v1, v1

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Labcd/Ib;->Hw:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    iget-object v4, p0, Labcd/Ib;->Hw:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Labcd/Ib;->Hw:[I

    array-length v7, v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Labcd/Ib;->Hw:[I

    :cond_6
    iget-object v1, p0, Labcd/Ib;->Hw:[I

    iget v4, p0, Labcd/Ib;->v5:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/Ib;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aput p3, v1, v4

    :goto_3
    if-ge v0, p3, :cond_7

    :try_start_1
    iget-object v1, p0, Labcd/Ib;->Hw:[I

    iget v4, p0, Labcd/Ib;->v5:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/Ib;->v5:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int v5, p2, v0

    aget v5, p1, v5

    aput v5, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :try_start_2
    iget-object v0, p0, Labcd/Ib;->VH:[I

    aput p4, v0, v3

    const/high16 v0, -0x80000000

    if-eq v2, v0, :cond_8

    iget v0, p0, Labcd/Ib;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ib;->gn:I

    :cond_8
    iget v0, p0, Labcd/Ib;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ib;->u7:I

    iget v0, p0, Labcd/Ib;->gn:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Ib;->Zo:[I

    array-length v1, v1

    if-le v0, v1, :cond_4

    invoke-direct {p0}, Labcd/Ib;->j6()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ib;->FH:Z

    if-eqz v0, :cond_9

    const-wide v2, -0x80cba2a6ec9ff8fL    # -6.363568481973495E269

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    throw v1
.end method

.method public j6(I[I[III)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x523e9c865b2e1be8L

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    mul-int/lit8 v0, p5, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    array-length v1, v1

    if-gt v1, v0, :cond_2

    :cond_1
    new-array v1, v0, [I

    iput-object v1, p0, Labcd/Ib;->EQ:[I

    :cond_2
    iget-object v1, p0, Labcd/Ib;->EQ:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    const/4 v2, 0x1

    invoke-static {p2, p4, v1, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    add-int/lit8 v2, p5, 0x1

    invoke-static {p3, p4, v1, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Labcd/Ib;->j6([III)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ib;->FH:Z

    if-eqz v0, :cond_3

    const-wide v2, 0x523e9c865b2e1be8L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public j6([III)Z
    .registers 14

    const-wide v8, 0x24ff5ed1b35af604L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x24ff5ed1b35af604L

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Labcd/Ib;->FH([III)I

    move-result v3

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    array-length v0, v0

    rem-int v1, v3, v0

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    array-length v4, v0

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    aget v0, v0, v1

    move v2, v1

    :goto_0
    if-eqz v0, :cond_4

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Labcd/Ib;->Hw:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_1

    add-int/lit8 v1, v0, 0x1

    move v0, v6

    :goto_1
    if-ge v0, p3, :cond_3

    iget-object v5, p0, Labcd/Ib;->Hw:[I

    aget v5, v5, v1

    add-int v7, p2, v0

    aget v7, p1, v7

    if-eq v5, v7, :cond_2

    :cond_1
    add-int/lit8 v0, v4, -0x2

    rem-int v0, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    iget-object v1, p0, Labcd/Ib;->Zo:[I

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v0, p0, Labcd/Ib;->Zo:[I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_4
    move v0, v6

    goto :goto_2

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Ib;->FH:Z

    if-eqz v0, :cond_5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v2, 0x1a3cd750e0d557c8L

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1a3cd750e0d557c8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[Size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Ib;->u7:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
