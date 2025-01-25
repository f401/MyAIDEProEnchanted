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
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x15822e96a0501b4fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1d804d54a5aa57c4L  # -2.9205758291227668E166

    :try_start_6
    const-class v3, Labcd/Ib;

    const-wide v4, 0x6d21239793da93L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/Ib;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_2a

    sput-object v3, Labcd/Ib;->j6:[I
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    return-void

    :catchall_21
    move-exception v3

    sget-boolean v4, Labcd/Ib;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3

    :array_2a
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
        0x40000003  # 2.0000007f
        0x7ffe7961
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x25e79eaf2d43a798L  # -1.0314647517208064E126

    :try_start_6
    sget-boolean v3, Labcd/Ib;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Labcd/Ib;->tp:I

    sget-object v4, Labcd/Ib;->j6:[I

    aget v4, v4, v3

    new-array v5, v4, [I

    iput-object v5, p0, Labcd/Ib;->Zo:[I

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Ib;->VH:[I

    const/16 v4, 0xa

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Ib;->Hw:[I

    const/4 v4, 0x1

    iput v4, p0, Labcd/Ib;->v5:I

    iput v3, p0, Labcd/Ib;->gn:I

    iput v3, p0, Labcd/Ib;->u7:I
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v3

    sget-boolean v4, Labcd/Ib;->FH:Z

    if-eqz v4, :cond_35

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v3
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 9

    const/4 v0, 0x0

    const-wide v1, -0x1ef10248925fde68L  # -3.403959911164152E159

    :try_start_6
    sget-boolean v3, Labcd/Ib;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Ib;->u7:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Ib;->gn:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Ib;->tp:I

    sget-object v4, Labcd/Ib;->j6:[I

    aget v3, v4, v3

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/Ib;->Zo:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2c
    iget-object v5, p0, Labcd/Ib;->Zo:[I

    array-length v6, v5

    if-ge v4, v6, :cond_3a

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_3a
    sget-object v4, Labcd/Ib;->j6:[I

    iget v5, p0, Labcd/Ib;->tp:I

    aget v4, v4, v5

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Ib;->VH:[I

    const/4 v4, 0x0

    :goto_45
    iget-object v5, p0, Labcd/Ib;->VH:[I

    array-length v6, v5

    if-ge v4, v6, :cond_53

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_53
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Labcd/Ib;->v5:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/Ib;->Hw:[I

    :goto_61
    iget v4, p0, Labcd/Ib;->v5:I

    if-ge v3, v4, :cond_70

    iget-object v4, p0, Labcd/Ib;->Hw:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, v4, v3
    :try_end_6d
    .catchall {:try_start_6 .. :try_end_6d} :catchall_71

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_70
    return-void

    :catchall_71
    move-exception v3

    sget-boolean v4, Labcd/Ib;->FH:Z

    if-eqz v4, :cond_79

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    goto :goto_7b

    :goto_7a
    throw v3

    :goto_7b
    goto :goto_7a
.end method

.method private FH([III)I
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x34cc593988de6629L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x926a3b852b1dd73L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_2e

    :cond_18
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1a
    if-ge v0, p3, :cond_24

    add-int v2, v0, p2

    aget v2, p1, v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_24
    const p1, 0x7fffffff

    if-nez v1, :cond_2c

    const v1, 0x7fffffff

    :cond_2c
    and-int/2addr p1, v1

    return p1

    :catchall_2e
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_48

    const-wide v2, -0x926a3b852b1dd73L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v0

    :goto_4a
    goto :goto_49
.end method

.method private j6()V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x22edf89a246fd0c5L
    .end annotation

    const-wide v0, 0x3ac9e5d46c21ce9L

    :try_start_5
    sget-boolean v2, Labcd/Ib;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ib;->tp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/Ib;->tp:I

    sget-object v3, Labcd/Ib;->j6:[I

    aget v2, v3, v2

    new-array v3, v2, [I

    new-array v4, v2, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1c
    iget-object v7, p0, Labcd/Ib;->Zo:[I

    array-length v8, v7

    if-ge v5, v8, :cond_4f

    aget v7, v7, v5

    if-eqz v7, :cond_4c

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_4c

    iget-object v8, p0, Labcd/Ib;->Hw:[I

    add-int/lit8 v9, v7, 0x1

    aget v10, v8, v7

    invoke-direct {p0, v8, v9, v10}, Labcd/Ib;->FH([III)I

    move-result v8

    rem-int v9, v8, v2
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_56

    :goto_35
    aget v10, v3, v9

    if-eqz v10, :cond_42

    add-int/lit8 v10, v2, -0x2

    :try_start_3b
    rem-int v10, v8, v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    rem-int/2addr v9, v2
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_56

    goto :goto_35

    :cond_42
    aput v7, v3, v9

    :try_start_44
    iget-object v7, p0, Labcd/Ib;->VH:[I

    aget v7, v7, v5

    aput v7, v4, v9

    add-int/lit8 v6, v6, 0x1

    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_4f
    iput-object v3, p0, Labcd/Ib;->Zo:[I

    iput-object v4, p0, Labcd/Ib;->VH:[I

    iput v6, p0, Labcd/Ib;->gn:I
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_56

    return-void

    :catchall_56
    move-exception v2

    sget-boolean v3, Labcd/Ib;->FH:Z

    if-eqz v3, :cond_5e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v2

    :goto_60
    goto :goto_5f
.end method


# virtual methods
.method public DW(I[I[III)I
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_1e

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x273f1625b37ecd01L  # -3.412097681835353E119

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    mul-int/lit8 v0, p5, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Labcd/Ib;->EQ:[I

    if-eqz v2, :cond_29

    array-length v2, v2

    if-gt v2, v0, :cond_2d

    :cond_29
    new-array v2, v0, [I

    iput-object v2, p0, Labcd/Ib;->EQ:[I

    :cond_2d
    iget-object v2, p0, Labcd/Ib;->EQ:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p2, p4, v2, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    add-int/lit8 v2, p5, 0x1

    invoke-static {p3, p4, v1, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    invoke-virtual {p0, v1, v3, v0}, Labcd/Ib;->DW([III)I

    move-result p1
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    return p1

    :catchall_43
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_63

    const-wide v2, -0x273f1625b37ecd01L  # -3.412097681835353E119

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method public DW([III)I
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x17d34033134dc40dL  # -6.558330601192512E193

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-direct {p0, p1, p2, p3}, Labcd/Ib;->FH([III)I

    move-result v0

    iget-object v1, p0, Labcd/Ib;->Zo:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    :goto_24
    if-eqz v1, :cond_58

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_58

    iget-object v4, p0, Labcd/Ib;->Hw:[I

    aget v4, v4, v1

    if-ne v4, p3, :cond_4a

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    :goto_33
    if-ge v4, p3, :cond_45

    iget-object v5, p0, Labcd/Ib;->Hw:[I

    aget v5, v5, v1

    add-int v6, p2, v4

    aget v6, p1, v6

    if-eq v5, v6, :cond_40

    goto :goto_4a

    :cond_40
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_45
    iget-object v0, p0, Labcd/Ib;->VH:[I

    aget p1, v0, v2

    return p1

    :cond_4a
    :goto_4a
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/Ib;->Zo:[I

    array-length v4, v1

    rem-int/2addr v2, v4

    aget v1, v1, v2
    :try_end_57
    .catchall {:try_start_0 .. :try_end_57} :catchall_5a

    goto :goto_24

    :cond_58
    const/4 p1, -0x1

    return p1

    :catchall_5a
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_74

    const-wide v2, -0x17d34033134dc40dL  # -6.558330601192512E193

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_74
    goto :goto_76

    :goto_75
    throw v0

    :goto_76
    goto :goto_75
.end method

.method public j6(I[I[IIII)V
    .registers 12

    sget-boolean v0, Labcd/Ib;->DW:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_35

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v0, v1

    aput-object p2, v0, v2

    const/4 v3, 0x2

    aput-object p3, v0, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const-wide v3, -0x242423703521dL

    invoke-static {v3, v4, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_35
    mul-int/lit8 v0, p5, 0x2

    add-int/2addr v0, v2

    iget-object v3, p0, Labcd/Ib;->EQ:[I

    if-eqz v3, :cond_3f

    array-length v3, v3

    if-gt v3, v0, :cond_43

    :cond_3f
    new-array v3, v0, [I

    iput-object v3, p0, Labcd/Ib;->EQ:[I

    :cond_43
    iget-object v3, p0, Labcd/Ib;->EQ:[I

    aput p1, v3, v1

    invoke-static {p2, p4, v3, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Labcd/Ib;->EQ:[I

    add-int/lit8 p2, p5, 0x1

    invoke-static {p3, p4, p1, p2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Labcd/Ib;->EQ:[I

    invoke-virtual {p0, p1, v1, v0, p6}, Labcd/Ib;->j6([IIII)V

    return-void
.end method

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v0, -0x67054d3437c59814L

    :try_start_5
    sget-boolean v2, Labcd/Ib;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Ib;->u7:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Ib;->gn:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/Ib;->tp:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    iget-object v4, p0, Labcd/Ib;->Zo:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2a

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2a
    const/4 v3, 0x0

    :goto_2b
    iget-object v4, p0, Labcd/Ib;->VH:[I

    array-length v5, v4

    if-ge v3, v5, :cond_38

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_38
    iget v3, p0, Labcd/Ib;->v5:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v3, p0, Labcd/Ib;->Hw:[I

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_43
    iget v3, p0, Labcd/Ib;->v5:I

    if-ge v2, v3, :cond_51

    iget-object v3, p0, Labcd/Ib;->Hw:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_52

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_51
    return-void

    :catchall_52
    move-exception v2

    sget-boolean v3, Labcd/Ib;->FH:Z

    if-eqz v3, :cond_5a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5a
    goto :goto_5c

    :goto_5b
    throw v2

    :goto_5c
    goto :goto_5b
.end method

.method public j6([IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_1d

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x80cba2a6ec9ff8fL  # -6.363568481973495E269

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-direct {p0, p1, p2, p3}, Labcd/Ib;->FH([III)I

    move-result v0

    iget-object v1, p0, Labcd/Ib;->Zo:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    :goto_29
    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    if-eqz v1, :cond_5b

    if-eq v1, v4, :cond_5b

    iget-object v4, p0, Labcd/Ib;->Hw:[I

    aget v4, v4, v1

    if-ne v4, p3, :cond_4d

    :goto_36
    add-int/lit8 v1, v1, 0x1

    if-ge v5, p3, :cond_48

    iget-object v4, p0, Labcd/Ib;->Hw:[I

    aget v4, v4, v1

    add-int v6, p2, v5

    aget v6, p1, v6

    if-eq v4, v6, :cond_45

    goto :goto_4d

    :cond_45
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    :cond_48
    iget-object v0, p0, Labcd/Ib;->VH:[I

    aput p4, v0, v2

    return-void

    :cond_4d
    :goto_4d
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/Ib;->Zo:[I

    array-length v4, v1

    rem-int/2addr v2, v4

    aget v1, v1, v2

    goto :goto_29

    :cond_5b
    iget-object v0, p0, Labcd/Ib;->Zo:[I

    iget v3, p0, Labcd/Ib;->v5:I

    aput v3, v0, v2

    add-int/2addr v3, p3

    add-int/lit8 v3, v3, 0x1

    iget-object v0, p0, Labcd/Ib;->Hw:[I

    array-length v6, v0

    if-lt v3, v6, :cond_80

    array-length v3, v0

    add-int/2addr v3, p3

    add-int/lit8 v3, v3, 0x1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iget-object v3, p0, Labcd/Ib;->Hw:[I

    array-length v6, v3

    invoke-static {v3, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Ib;->Hw:[I

    :cond_80
    iget-object v0, p0, Labcd/Ib;->Hw:[I

    iget v3, p0, Labcd/Ib;->v5:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Labcd/Ib;->v5:I
    :try_end_88
    .catchall {:try_start_0 .. :try_end_88} :catchall_bc

    aput p3, v0, v3

    :goto_8a
    if-ge v5, p3, :cond_9d

    :try_start_8c
    iget-object v0, p0, Labcd/Ib;->Hw:[I

    iget v3, p0, Labcd/Ib;->v5:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Labcd/Ib;->v5:I
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_bc

    add-int v6, p2, v5

    aget v6, p1, v6

    aput v6, v0, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_8a

    :cond_9d
    :try_start_9d
    iget-object v0, p0, Labcd/Ib;->VH:[I

    aput p4, v0, v2

    if-eq v1, v4, :cond_a9

    iget v0, p0, Labcd/Ib;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ib;->gn:I

    :cond_a9
    iget v0, p0, Labcd/Ib;->u7:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/Ib;->u7:I

    iget v0, p0, Labcd/Ib;->gn:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Ib;->Zo:[I

    array-length v1, v1

    if-le v0, v1, :cond_bb

    invoke-direct {p0}, Labcd/Ib;->j6()V
    :try_end_bb
    .catchall {:try_start_9d .. :try_end_bb} :catchall_bc

    :cond_bb
    return-void

    :catchall_bc
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_db

    const-wide v2, -0x80cba2a6ec9ff8fL  # -6.363568481973495E269

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_db
    goto :goto_dd

    :goto_dc
    throw v0

    :goto_dd
    goto :goto_dc
.end method

.method public j6(I[I[III)Z
    .registers 16

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_1e

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x523e9c865b2e1be8L

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    mul-int/lit8 v0, p5, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Labcd/Ib;->EQ:[I

    if-eqz v2, :cond_29

    array-length v2, v2

    if-gt v2, v0, :cond_2d

    :cond_29
    new-array v2, v0, [I

    iput-object v2, p0, Labcd/Ib;->EQ:[I

    :cond_2d
    iget-object v2, p0, Labcd/Ib;->EQ:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p2, p4, v2, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    add-int/lit8 v2, p5, 0x1

    invoke-static {p3, p4, v1, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Labcd/Ib;->EQ:[I

    invoke-virtual {p0, v1, v3, v0}, Labcd/Ib;->j6([III)Z

    move-result p1
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_43

    return p1

    :catchall_43
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_63

    const-wide v2, 0x523e9c865b2e1be8L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method public j6([III)Z
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/Ib;->DW:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x24ff5ed1b35af604L

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-direct {p0, p1, p2, p3}, Labcd/Ib;->FH([III)I

    move-result v0

    iget-object v1, p0, Labcd/Ib;->Zo:[I

    array-length v2, v1

    rem-int v2, v0, v2

    array-length v3, v1

    aget v1, v1, v2

    :goto_24
    const/4 v4, 0x0

    if-eqz v1, :cond_52

    const/high16 v5, -0x80000000

    if-eq v1, v5, :cond_52

    iget-object v5, p0, Labcd/Ib;->Hw:[I

    aget v5, v5, v1

    const/4 v6, 0x1

    if-ne v5, p3, :cond_45

    :goto_32
    add-int/lit8 v1, v1, 0x1

    if-ge v4, p3, :cond_44

    iget-object v5, p0, Labcd/Ib;->Hw:[I

    aget v5, v5, v1

    add-int v7, p2, v4

    aget v7, p1, v7

    if-eq v5, v7, :cond_41

    goto :goto_45

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_44
    return v6

    :cond_45
    :goto_45
    add-int/lit8 v1, v3, -0x2

    rem-int v1, v0, v1

    add-int/2addr v1, v6

    add-int/2addr v2, v1

    iget-object v1, p0, Labcd/Ib;->Zo:[I

    array-length v4, v1

    rem-int/2addr v2, v4

    aget v1, v1, v2
    :try_end_51
    .catchall {:try_start_0 .. :try_end_51} :catchall_53

    goto :goto_24

    :cond_52
    return v4

    :catchall_53
    move-exception v0

    sget-boolean v1, Labcd/Ib;->FH:Z

    if-eqz v1, :cond_6d

    const-wide v2, 0x24ff5ed1b35af604L

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6d
    goto :goto_6f

    :goto_6e
    throw v0

    :goto_6f
    goto :goto_6e
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x1a3cd750e0d557c8L

    :try_start_5
    sget-boolean v2, Labcd/Ib;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[Size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Labcd/Ib;->u7:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_30

    return-object v0

    :catchall_30
    move-exception v2

    sget-boolean v3, Labcd/Ib;->FH:Z

    if-eqz v3, :cond_38

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_38
    throw v2
.end method
