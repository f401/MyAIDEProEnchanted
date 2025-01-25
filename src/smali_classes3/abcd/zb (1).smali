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
    .registers 3

    const-class v0, Labcd/zb;

    const-wide v1, 0x1f0d93430b9b8f7L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x44b8160c5936b1e8L  # 1.137435137610322E23

    :try_start_6
    sget-boolean v3, Labcd/zb;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0xbb8

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/zb;->FH:[I

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/zb;->Hw:[I

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/zb;->v5:[I

    const/16 v3, 0x3e8

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/zb;->Zo:[I

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/zb;->VH:[I

    new-array v4, v3, [I

    iput-object v4, p0, Labcd/zb;->gn:[I

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/zb;->u7:[I

    const/4 v3, 0x0

    iput v3, p0, Labcd/zb;->tp:I
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_34

    return-void

    :catchall_34
    move-exception v3

    sget-boolean v4, Labcd/zb;->DW:Z

    if-eqz v4, :cond_3c

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3c
    throw v3
.end method

.method private Zo()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2074e38d851c9f7cL
    .end annotation

    const-wide v0, 0x1dc66341aaf413a0L  # 3.037262097310498E-165

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/zb;->Zo:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/zb;->Zo:[I

    iget-object v2, p0, Labcd/zb;->VH:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/zb;->VH:[I

    iget-object v2, p0, Labcd/zb;->gn:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/zb;->gn:[I

    iget-object v2, p0, Labcd/zb;->u7:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/zb;->u7:[I
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_4a

    return-void

    :catchall_4a
    move-exception v2

    sget-boolean v3, Labcd/zb;->DW:Z

    if-eqz v3, :cond_52

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_52
    throw v2
.end method

.method private v5()V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x201fefb7dab34c5bL
    .end annotation

    const-wide v0, 0x1d785c6a594c70a7L

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/zb;->FH:[I

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v4, v3, [I

    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_25
    iget v8, p0, Labcd/zb;->tp:I

    if-ge v7, v8, :cond_4f

    iget-object v8, p0, Labcd/zb;->Zo:[I

    aget v8, v8, v7

    if-eqz v8, :cond_4c

    iget-object v9, p0, Labcd/zb;->VH:[I

    aget v9, v9, v7

    iget-object v10, p0, Labcd/zb;->gn:[I

    aget v10, v10, v7

    const v11, 0x7fffffff

    and-int/2addr v11, v8

    rem-int/2addr v11, v3
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_56

    :cond_3c
    :goto_3c
    aget v12, v4, v11

    if-eqz v12, :cond_46

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v3, :cond_3c

    const/4 v11, 0x0

    goto :goto_3c

    :cond_46
    aput v8, v4, v11

    aput v10, v5, v11

    aput v9, v2, v11

    :cond_4c
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_4f
    :try_start_4f
    iput-object v4, p0, Labcd/zb;->FH:[I

    iput-object v2, p0, Labcd/zb;->v5:[I

    iput-object v5, p0, Labcd/zb;->Hw:[I
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_56

    return-void

    :catchall_56
    move-exception v2

    sget-boolean v3, Labcd/zb;->DW:Z

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
.method public DW(II)I
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x426c0ce94172e300L  # 9.638055801830938E11

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/zb;->FH:[I

    array-length v1, v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_35

    const v2, 0x7fffffff

    and-int/2addr v2, p1

    rem-int/2addr v2, v1

    const/4 v3, -0x1

    :cond_1f
    aget v4, v0, v2

    if-ne v4, p1, :cond_2d

    :try_start_23
    iget-object v5, p0, Labcd/zb;->v5:[I

    aget v5, v5, v2

    if-ne v5, p2, :cond_2d

    iget-object v3, p0, Labcd/zb;->Hw:[I

    aget v3, v3, v2
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_35

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_32

    const/4 v2, 0x0

    :cond_32
    if-nez v4, :cond_1f

    return v3

    :catchall_35
    move-exception v0

    sget-boolean v1, Labcd/zb;->DW:Z

    if-eqz v1, :cond_4e

    const-wide v2, 0x426c0ce94172e300L  # 9.638055801830938E11

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    goto :goto_50

    :goto_4f
    throw v0

    :goto_50
    goto :goto_4f
.end method

.method public DW()V
    .registers 6

    const-wide v0, 0xab89614f6a64f45L

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/zb;->Zo:[I

    array-length v2, v2

    iget v3, p0, Labcd/zb;->tp:I

    if-gt v2, v3, :cond_16

    invoke-direct {p0}, Labcd/zb;->Zo()V

    :cond_16
    iget-object v2, p0, Labcd/zb;->Zo:[I

    iget v3, p0, Labcd/zb;->tp:I

    const/4 v4, 0x0

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/zb;->tp:I
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/zb;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public FH()V
    .registers 6

    const-wide v0, 0xb6be0ceccd07068L

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/zb;->Zo:[I

    array-length v2, v2

    iget v3, p0, Labcd/zb;->tp:I

    if-gt v2, v3, :cond_16

    invoke-direct {p0}, Labcd/zb;->Zo()V

    :cond_16
    iget-object v2, p0, Labcd/zb;->Zo:[I

    iget v3, p0, Labcd/zb;->tp:I

    const/4 v4, 0x0

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/zb;->tp:I
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Labcd/zb;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method public Hw()V
    .registers 11

    const-wide v0, -0x1610d727ecf24a74L  # -1.908087311663519E202

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/zb;->FH:[I

    array-length v3, v2

    iget v4, p0, Labcd/zb;->tp:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Labcd/zb;->tp:I

    iget-object v5, p0, Labcd/zb;->Zo:[I

    aget v4, v5, v4
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_3f

    :goto_19
    if-eqz v4, :cond_3e

    const v5, 0x7fffffff

    and-int/2addr v5, v4

    rem-int/2addr v5, v3

    const/4 v6, -0x1

    const/4 v7, -0x1

    :cond_22
    aget v8, v2, v5

    if-ne v8, v4, :cond_27

    move v7, v5

    :cond_27
    add-int/lit8 v5, v5, 0x1

    const/4 v9, 0x0

    if-lt v5, v3, :cond_2d

    const/4 v5, 0x0

    :cond_2d
    if-nez v8, :cond_22

    if-eq v7, v6, :cond_33

    aput v9, v2, v7

    :cond_33
    :try_start_33
    iget v4, p0, Labcd/zb;->tp:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Labcd/zb;->tp:I

    iget-object v5, p0, Labcd/zb;->Zo:[I

    aget v4, v5, v4
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3f

    goto :goto_19

    :cond_3e
    return-void

    :catchall_3f
    move-exception v2

    sget-boolean v3, Labcd/zb;->DW:Z

    if-eqz v3, :cond_47

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_47
    goto :goto_49

    :goto_48
    throw v2

    :goto_49
    goto :goto_48
.end method

.method public j6()V
    .registers 7

    const-wide v0, -0x3bd77d40bd55bd7L  # -3.611987725490302E290

    :try_start_5
    sget-boolean v2, Labcd/zb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/zb;->tp:I

    const/4 v3, 0x0

    if-lez v2, :cond_1c

    const/4 v2, 0x0

    :goto_12
    iget-object v4, p0, Labcd/zb;->FH:[I

    array-length v5, v4

    if-ge v2, v5, :cond_1c

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1c
    iput v3, p0, Labcd/zb;->tp:I
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Labcd/zb;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    goto :goto_29

    :goto_28
    throw v2

    :goto_29
    goto :goto_28
.end method

.method public j6(III)V
    .registers 12

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xb77d95c4f76d8f3L

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Labcd/zb;->FH:[I

    array-length v0, v0

    iget v1, p0, Labcd/zb;->tp:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_28

    invoke-direct {p0}, Labcd/zb;->v5()V

    :cond_28
    iget-object v0, p0, Labcd/zb;->Zo:[I

    array-length v0, v0

    iget v1, p0, Labcd/zb;->tp:I

    if-gt v0, v1, :cond_32

    invoke-direct {p0}, Labcd/zb;->Zo()V

    :cond_32
    iget-object v0, p0, Labcd/zb;->Zo:[I

    iget v1, p0, Labcd/zb;->tp:I

    aput p1, v0, v1

    iget-object v0, p0, Labcd/zb;->VH:[I

    aput p3, v0, v1

    iget-object v0, p0, Labcd/zb;->gn:[I

    aput p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/zb;->tp:I

    iget-object v0, p0, Labcd/zb;->FH:[I

    array-length v1, v0
    :try_end_47
    .catchall {:try_start_0 .. :try_end_47} :catchall_61

    const v2, 0x7fffffff

    and-int/2addr v2, p1

    rem-int/2addr v2, v1

    :cond_4c
    :goto_4c
    aget v3, v0, v2

    if-eqz v3, :cond_56

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_4c

    const/4 v2, 0x0

    goto :goto_4c

    :cond_56
    aput p1, v0, v2

    :try_start_58
    iget-object v0, p0, Labcd/zb;->Hw:[I

    aput p2, v0, v2

    iget-object v0, p0, Labcd/zb;->v5:[I

    aput p3, v0, v2
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_61

    return-void

    :catchall_61
    move-exception v0

    sget-boolean v1, Labcd/zb;->DW:Z

    if-eqz v1, :cond_7f

    const-wide v2, -0xb77d95c4f76d8f3L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7f
    goto :goto_81

    :goto_80
    throw v0

    :goto_81
    goto :goto_80
.end method

.method public j6(II)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/zb;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x48852748e05ab61L  # -5.633512170101365E286

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/zb;->FH:[I

    array-length v1, v0
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_33

    const v2, 0x7fffffff

    and-int/2addr v2, p1

    rem-int/2addr v2, v1

    :cond_1e
    aget v3, v0, v2

    if-ne v3, p1, :cond_2a

    :try_start_22
    iget-object v4, p0, Labcd/zb;->v5:[I

    aget v4, v4, v2
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_33

    if-ne v4, p2, :cond_2a

    const/4 p1, 0x1

    return p1

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    if-lt v2, v1, :cond_30

    const/4 v2, 0x0

    :cond_30
    if-nez v3, :cond_1e

    return v4

    :catchall_33
    move-exception v0

    sget-boolean v1, Labcd/zb;->DW:Z

    if-eqz v1, :cond_4c

    const-wide v2, -0x48852748e05ab61L  # -5.633512170101365E286

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4c
    goto :goto_4e

    :goto_4d
    throw v0

    :goto_4e
    goto :goto_4d
.end method
