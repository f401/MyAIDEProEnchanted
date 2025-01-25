.class public Labcd/bc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/bc$a;
    }
.end annotation


# static fields
.field public static final DW:Labcd/bc;

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static final j6:[I
    .annotation runtime Labcd/ru;
        field = 0x2987dd28875442d9L
    .end annotation
.end field


# instance fields
.field private VH:[I
    .annotation runtime Labcd/ru;
        field = 0x880279cb15ffae0L
    .end annotation
.end field

.field private Zo:[I
    .annotation runtime Labcd/ru;
        field = -0x364e602bb8a54e7L
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0x184567c0eaeeece0L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = 0x177b164002204305L
    .end annotation
.end field

.field private u7:I
    .annotation runtime Labcd/ru;
        field = -0x21420a89536b002cL
    .end annotation
.end field

.field public final v5:Labcd/bc$a;


# direct methods
.method static constructor <clinit>()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1676e9835bf77703L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x31a579b01929fdb8L  # 1.5557905360253027E-69

    :try_start_6
    const-class v3, Labcd/bc;

    const-wide v4, -0x32ea8b5a0107d6d5L  # -2.2065864281719188E63

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/bc;->FH:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    const/16 v3, 0x1e

    new-array v3, v3, [I

    fill-array-data v3, :array_32

    sput-object v3, Labcd/bc;->j6:[I

    new-instance v3, Labcd/bc;

    invoke-direct {v3}, Labcd/bc;-><init>()V

    sput-object v3, Labcd/bc;->DW:Labcd/bc;
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v3

    sget-boolean v4, Labcd/bc;->Hw:Z

    if-eqz v4, :cond_30

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v3

    nop

    :array_32
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
    .registers 6

    const-wide v0, -0x2fb687c08bc38200L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/bc;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/bc$a;

    invoke-direct {v3, p0, v2}, Labcd/bc$a;-><init>(Labcd/bc;Labcd/ac;)V

    iput-object v3, p0, Labcd/bc;->v5:Labcd/bc$a;

    const/4 v3, 0x1

    iput v3, p0, Labcd/bc;->tp:I

    sget-object v4, Labcd/bc;->j6:[I

    aget v3, v4, v3

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/bc;->Zo:[I

    const/4 v3, 0x0

    iput v3, p0, Labcd/bc;->gn:I

    iput v3, p0, Labcd/bc;->u7:I
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v3

    sget-boolean v4, Labcd/bc;->Hw:Z

    if-eqz v4, :cond_30

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v3
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 8

    const-wide v0, 0x22e570f0b27381cL

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/bc;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Labcd/bc$a;

    invoke-direct {v3, p0, v2}, Labcd/bc$a;-><init>(Labcd/bc;Labcd/ac;)V

    iput-object v3, p0, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, p0, Labcd/bc;->tp:I

    sget-object v5, Labcd/bc;->j6:[I

    aget v4, v5, v4

    new-array v4, v4, [I

    iput-object v4, p0, Labcd/bc;->Zo:[I

    const/4 v4, 0x0

    iput v4, p0, Labcd/bc;->gn:I

    iput v4, p0, Labcd/bc;->u7:I

    :goto_2e
    if-ge v4, v3, :cond_3a

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {p0, v5}, Labcd/bc;->DW(I)V
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_3b

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_3a
    return-void

    :catchall_3b
    move-exception v3

    sget-boolean v4, Labcd/bc;->Hw:Z

    if-eqz v4, :cond_43

    invoke-static {v3, v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    goto :goto_45

    :goto_44
    throw v3

    :goto_45
    goto :goto_44
.end method

.method static synthetic j6(Labcd/bc;)[I
    .registers 1

    iget-object p0, p0, Labcd/bc;->Zo:[I

    return-object p0
.end method

.method private v5()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x2bb58f9577216f9bL
    .end annotation

    const-wide v0, 0x18f77b6f1d9c9c4bL

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/bc;->u7:I

    iget-object v3, p0, Labcd/bc;->Zo:[I

    array-length v4, v3

    mul-int/lit8 v2, v2, 0x2

    const/4 v5, 0x0

    if-le v2, v4, :cond_26

    iget v2, p0, Labcd/bc;->tp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/bc;->tp:I

    const/4 v3, 0x0

    iput-object v3, p0, Labcd/bc;->VH:[I

    sget-object v3, Labcd/bc;->j6:[I

    aget v2, v3, v2

    :goto_23
    new-array v2, v2, [I

    goto :goto_45

    :cond_26
    iget-object v2, p0, Labcd/bc;->VH:[I

    if-eqz v2, :cond_3c

    array-length v4, v2

    array-length v6, v3

    if-ne v4, v6, :cond_3c

    const/4 v3, 0x0

    :goto_2f
    array-length v4, v2
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_75

    if-ge v3, v4, :cond_37

    aput v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_37
    :try_start_37
    iget-object v3, p0, Labcd/bc;->Zo:[I

    iput-object v3, p0, Labcd/bc;->VH:[I

    goto :goto_45

    :cond_3c
    iput-object v3, p0, Labcd/bc;->VH:[I

    sget-object v2, Labcd/bc;->j6:[I

    iget v3, p0, Labcd/bc;->tp:I

    aget v2, v2, v3

    goto :goto_23

    :goto_45
    const/4 v3, 0x0

    :goto_46
    iget-object v4, p0, Labcd/bc;->Zo:[I

    array-length v6, v4

    if-ge v5, v6, :cond_70

    aget v4, v4, v5

    if-eqz v4, :cond_6d

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_6d

    const v6, 0x7fffffff

    and-int/2addr v6, v4

    array-length v7, v2

    array-length v8, v2

    rem-int v8, v6, v8
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_75

    :goto_5b
    aget v9, v2, v8

    if-eqz v9, :cond_69

    add-int/lit8 v9, v7, -0x2

    :try_start_61
    rem-int v9, v6, v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    array-length v9, v2

    rem-int/2addr v8, v9
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_75

    goto :goto_5b

    :cond_69
    aput v4, v2, v8

    add-int/lit8 v3, v3, 0x1

    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_70
    :try_start_70
    iput-object v2, p0, Labcd/bc;->Zo:[I

    iput v3, p0, Labcd/bc;->gn:I
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_75

    return-void

    :catchall_75
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_7d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7d
    goto :goto_7f

    :goto_7e
    throw v2

    :goto_7f
    goto :goto_7e
.end method


# virtual methods
.method public DW(I)V
    .registers 11

    const-wide v0, 0x67cd32b8aaff8c60L  # 1.0407401225201698E192

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/bc;->Zo:[I

    array-length v4, v3

    rem-int v4, v2, v4

    array-length v5, v3

    aget v3, v3, v4

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_1f
    if-eqz v3, :cond_37

    if-ne v3, p1, :cond_24

    return-void

    :cond_24
    const/high16 v8, -0x80000000

    if-ne v3, v8, :cond_29

    move v7, v4

    :cond_29
    add-int/lit8 v3, v5, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    iget-object v3, p0, Labcd/bc;->Zo:[I

    array-length v8, v3

    rem-int/2addr v4, v8

    aget v3, v3, v4

    goto :goto_1f

    :cond_37
    if-eq v7, v6, :cond_3a

    move v4, v7

    :cond_3a
    iget-object v2, p0, Labcd/bc;->Zo:[I

    aput p1, v2, v4

    if-ne v7, v6, :cond_46

    iget v3, p0, Labcd/bc;->gn:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/bc;->gn:I

    :cond_46
    iget v3, p0, Labcd/bc;->u7:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Labcd/bc;->u7:I

    iget v3, p0, Labcd/bc;->gn:I

    mul-int/lit8 v3, v3, 0x2

    array-length v2, v2

    if-le v3, v2, :cond_56

    invoke-direct {p0}, Labcd/bc;->v5()V
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_57

    :cond_56
    return-void

    :catchall_57
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_64

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    goto :goto_66

    :goto_65
    throw v2

    :goto_66
    goto :goto_65
.end method

.method public DW(Labcd/bc;)V
    .registers 8

    const-wide v0, -0x958ea8d9edf4088L

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p1, Labcd/bc;->Zo:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2a

    aget v4, v4, v3

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1e

    invoke-virtual {p0, v2}, Labcd/bc;->DW(I)V

    goto :goto_27

    :cond_1e
    if-eqz v4, :cond_27

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_27

    invoke-virtual {p0, v4}, Labcd/bc;->DW(I)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2b

    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method public DW()Z
    .registers 5

    const-wide v0, 0x1421d4c7eea3e26dL

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/bc;->u7:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public FH()I
    .registers 7

    const-wide v0, -0xccfae23ecaaa388L  # -7.131655316003699E246

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_e
    iget-object v4, p0, Labcd/bc;->Zo:[I

    array-length v5, v4

    if-ge v3, v5, :cond_25

    aget v4, v4, v3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_27

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_e

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_e

    const v0, 0x7fffffff

    if-ne v4, v0, :cond_23

    goto :goto_24

    :cond_23
    move v2, v4

    :goto_24
    return v2

    :cond_25
    const/4 v0, -0x1

    return v0

    :catchall_27
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    goto :goto_31

    :goto_30
    throw v2

    :goto_31
    goto :goto_30
.end method

.method public FH(I)V
    .registers 9

    const-wide v0, -0x16b2b3acc7b3a3fL  # -5.580184858594659E301

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/bc;->Zo:[I

    array-length v4, v3

    rem-int v4, v2, v4

    array-length v5, v3

    aget v3, v3, v4

    :goto_1d
    if-eq v3, p1, :cond_30

    if-nez v3, :cond_22

    return-void

    :cond_22
    add-int/lit8 v3, v5, -0x2

    rem-int v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v3

    iget-object v3, p0, Labcd/bc;->Zo:[I

    array-length v6, v3

    rem-int/2addr v4, v6

    aget v3, v3, v4

    goto :goto_1d

    :cond_30
    iget-object v2, p0, Labcd/bc;->Zo:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v4

    iget v2, p0, Labcd/bc;->u7:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/bc;->u7:I
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    return-void

    :catchall_3d
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_4a

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    goto :goto_4c

    :goto_4b
    throw v2

    :goto_4c
    goto :goto_4b
.end method

.method public FH(Labcd/bc;)V
    .registers 6

    const-wide v0, -0x29cd119e48fa7c9L  # -9.801369893219106E295

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p1, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v2}, Labcd/bc$a;->DW()V

    :goto_11
    iget-object v2, p1, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v2}, Labcd/bc$a;->j6()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p1, Labcd/bc;->v5:Labcd/bc$a;

    invoke-virtual {v2}, Labcd/bc$a;->FH()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/bc;->FH(I)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_24

    goto :goto_11

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    goto :goto_2e

    :goto_2d
    throw v2

    :goto_2e
    goto :goto_2d
.end method

.method public Hw()I
    .registers 5

    const-wide v0, 0xf564d21b93efd8bL  # 8.767453869989196E-235

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/bc;->u7:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const-wide v0, 0x5b5a6a4cca31618L

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Labcd/bc;

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    :cond_12
    move-object v2, p1

    check-cast v2, Labcd/bc;

    invoke-virtual {v2}, Labcd/bc;->Hw()I

    move-result v4

    invoke-virtual {p0}, Labcd/bc;->Hw()I

    move-result v5

    if-eq v4, v5, :cond_20

    return v3

    :cond_20
    const/4 v4, 0x0

    :goto_21
    iget-object v5, p0, Labcd/bc;->Zo:[I

    array-length v6, v5

    if-ge v4, v6, :cond_3e

    aget v5, v5, v4

    if-eqz v5, :cond_3b

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_3b

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_34

    const/4 v5, 0x0

    :cond_34
    invoke-virtual {v2, v5}, Labcd/bc;->j6(I)Z

    move-result v5
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_40

    if-nez v5, :cond_3b

    return v3

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_3e
    const/4 p1, 0x1

    return p1

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v2

    :goto_4a
    goto :goto_49
.end method

.method public j6()V
    .registers 7

    const-wide v0, 0x12efd117c4d2bd15L

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/bc;->gn:I

    if-lez v2, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_12
    iget-object v4, p0, Labcd/bc;->Zo:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1c

    aput v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1c
    iput v2, p0, Labcd/bc;->gn:I

    iput v2, p0, Labcd/bc;->u7:I
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    goto :goto_2b

    :goto_2a
    throw v2

    :goto_2b
    goto :goto_2a
.end method

.method public j6(Labcd/fc;)V
    .registers 7

    const-wide v0, -0x6d4ca7cc66f44ff8L  # -1.3700029534785164E-218

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/bc;->u7:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, p0, Labcd/bc;->tp:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v2, 0x0

    :goto_17
    iget-object v3, p0, Labcd/bc;->Zo:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2a

    aget v3, v3, v2

    if-eqz v3, :cond_27

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_27

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2b

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method public j6(I)Z
    .registers 9

    const-wide v0, -0xf0344acaa1467e8L  # -1.8270841535615377E236

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const v2, 0x7fffffff

    if-nez p1, :cond_14

    const p1, 0x7fffffff

    :cond_14
    and-int/2addr v2, p1

    iget-object v3, p0, Labcd/bc;->Zo:[I

    array-length v4, v3

    array-length v5, v3

    rem-int v5, v2, v5

    aget v3, v3, v5

    :goto_1d
    const/4 v6, 0x1

    if-eq v3, p1, :cond_31

    if-nez v3, :cond_24

    const/4 p1, 0x0

    return p1

    :cond_24
    add-int/lit8 v3, v4, -0x2

    rem-int v3, v2, v3

    add-int/2addr v3, v6

    add-int/2addr v5, v3

    iget-object v3, p0, Labcd/bc;->Zo:[I

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v3, v3, v5
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_32

    goto :goto_1d

    :cond_31
    return v6

    :catchall_32
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_3f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3f
    goto :goto_41

    :goto_40
    throw v2

    :goto_41
    goto :goto_40
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-wide v0, 0xdfdf1c7499f636cL

    :try_start_5
    sget-boolean v2, Labcd/bc;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_5c

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget-object v4, p0, Labcd/bc;->Zo:[I

    array-length v5, v4

    if-ge v3, v5, :cond_4a

    aget v4, v4, v3

    if-eqz v4, :cond_47

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_47

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_33

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0, "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_47

    :cond_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_f .. :try_end_5b} :catchall_5c

    return-object v0

    :catchall_5c
    move-exception v2

    sget-boolean v3, Labcd/bc;->Hw:Z

    if-eqz v3, :cond_64

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_64
    goto :goto_66

    :goto_65
    throw v2

    :goto_66
    goto :goto_65
.end method
