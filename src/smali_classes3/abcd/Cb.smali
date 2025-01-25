.class public Labcd/Cb;
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
        field = -0x260add34bb076e20L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x2552eea654a22159L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Cb;

    const-wide v1, 0x1898763689dcec4fL  # 3.431394272253464E-190

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const-wide v0, 0x19274f06cd3d67c0L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Labcd/Cb;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Labcd/Cb;->FH:[I

    const/4 v3, 0x0

    iput v3, p0, Labcd/Cb;->Hw:I
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/Cb;->DW:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public constructor <init>(I)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x9f47bef4618eabL

    :try_start_6
    sget-boolean v3, Labcd/Cb;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v3, p1, [I

    iput-object v3, p0, Labcd/Cb;->FH:[I

    iput p1, p0, Labcd/Cb;->Hw:I
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v3

    sget-boolean v4, Labcd/Cb;->DW:Z

    if-eqz v4, :cond_24

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v3
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x4a5715835f7f7d0L

    :try_start_6
    sget-boolean v3, Labcd/Cb;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Labcd/Cb;->Hw:I

    if-lez v3, :cond_2b

    new-array v3, v3, [I

    iput-object v3, p0, Labcd/Cb;->FH:[I

    const/4 v3, 0x0

    :goto_1d
    iget-object v4, p0, Labcd/Cb;->FH:[I

    array-length v5, v4

    if-ge v3, v5, :cond_2b

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, v4, v3
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_2c

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_2b
    return-void

    :catchall_2c
    move-exception v3

    sget-boolean v4, Labcd/Cb;->DW:Z

    if-eqz v4, :cond_34

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    goto :goto_36

    :goto_35
    throw v3

    :goto_36
    goto :goto_35
.end method

.method private DW(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x773e6143b6d7c3a1L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0x59e03959cf087f30L  # 8.57999170922174E124

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    if-ge p1, p2, :cond_4e

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Cb;->FH:[I

    add-int/2addr v0, p1

    aget v0, v1, v0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_4f

    move v1, p1

    move v2, p2

    :cond_23
    :goto_23
    if-gt v1, v2, :cond_44

    :goto_25
    :try_start_25
    iget-object v3, p0, Labcd/Cb;->FH:[I

    aget v3, v3, v1

    if-ge v3, v0, :cond_2e

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_2e
    :goto_2e
    iget-object v3, p0, Labcd/Cb;->FH:[I

    aget v4, v3, v2

    if-ge v0, v4, :cond_37

    add-int/lit8 v2, v2, -0x1

    goto :goto_2e

    :cond_37
    if-gt v1, v2, :cond_23

    aget v5, v3, v1

    aput v5, v3, v2

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    :cond_44
    invoke-direct {p0, p1, v2}, Labcd/Cb;->DW(II)V

    invoke-direct {p0, v1, p2}, Labcd/Cb;->DW(II)V
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_4b

    goto :goto_4e

    :catchall_4b
    move-exception p1

    move p2, v2

    goto :goto_52

    :cond_4e
    :goto_4e
    return-void

    :catchall_4f
    move-exception v0

    move v1, p1

    move-object p1, v0

    :goto_52
    sget-boolean v0, Labcd/Cb;->DW:Z

    if-eqz v0, :cond_6a

    const-wide v2, 0x59e03959cf087f30L  # 8.57999170922174E124

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, p1

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6a
    goto :goto_6c

    :goto_6b
    throw p1

    :goto_6c
    goto :goto_6b
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v0, -0xba2a9d2437a65fdL

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Cb;->Hw:I

    if-nez v2, :cond_12

    const/4 v0, -0x1

    return v0

    :cond_12
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Labcd/Cb;->DW(I)I

    move-result v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public DW(I)I
    .registers 7

    const-wide v0, -0x42b78439cc27605dL  # -1.7396568154387542E-13

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Cb;->FH:[I

    const/4 v3, -0x1

    if-nez v2, :cond_12

    return v3

    :cond_12
    array-length v4, v2

    if-lt p1, v4, :cond_16

    return v3

    :cond_16
    iget v4, p0, Labcd/Cb;->Hw:I

    if-lt p1, v4, :cond_1b

    return v3

    :cond_1b
    aget p1, v2, p1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    return p1

    :catchall_1e
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_2b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public FH()I
    .registers 5

    const-wide v0, 0x7e41a8f94f52a31L

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Cb;->Hw:I

    if-nez v2, :cond_12

    const/4 v0, -0x1

    return v0

    :cond_12
    iget-object v3, p0, Labcd/Cb;->FH:[I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/Cb;->Hw:I
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1b

    aget v0, v3, v2

    return v0

    :catchall_1b
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public FH(I)V
    .registers 6

    const-wide v0, 0x559f20cf3f8eb6c5L  # 2.7887655189687488E104

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0, p1}, Labcd/Cb;->j6(I)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Hw()I
    .registers 5

    const-wide v0, -0xba08a7aba503225L

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Labcd/Cb;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Hw(I)V
    .registers 7

    const-wide v0, 0x3dba1a48d09aa071L  # 2.3740243310913186E-11

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Cb;->FH:[I

    if-nez v2, :cond_11

    return-void

    :cond_11
    iget v3, p0, Labcd/Cb;->Hw:I

    if-lt p1, v3, :cond_16

    return-void

    :cond_16
    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v4, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Labcd/Cb;->Hw:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Labcd/Cb;->Hw:I
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_32

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const-wide v0, 0x31b9418d16f1458L

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    instance-of v2, p1, Labcd/Cb;

    const/4 v3, 0x0

    if-nez v2, :cond_12

    return v3

    :cond_12
    move-object v2, p1

    check-cast v2, Labcd/Cb;

    iget v4, p0, Labcd/Cb;->Hw:I

    iget v5, v2, Labcd/Cb;->Hw:I

    if-eq v4, v5, :cond_1c

    return v3

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    iget v5, p0, Labcd/Cb;->Hw:I

    if-ge v4, v5, :cond_2f

    invoke-virtual {p0, v4}, Labcd/Cb;->DW(I)I

    move-result v5

    invoke-virtual {v2, v4}, Labcd/Cb;->DW(I)I

    move-result v6
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_31

    if-eq v5, v6, :cond_2c

    return v3

    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2f
    const/4 p1, 0x1

    return p1

    :catchall_31
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    goto :goto_3b

    :goto_3a
    throw v2

    :goto_3b
    goto :goto_3a
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0x13989b4e5da04ffbL  # -1.575067185098295E214

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, p0, Labcd/Cb;->Hw:I
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_18

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v2
.end method

.method public j6(I)V
    .registers 8

    const-wide v0, -0x4cec1f7fc78a3544L  # -1.2079551163713765E-62

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Labcd/Cb;->FH:[I

    if-nez v2, :cond_17

    const/16 v2, 0xa

    new-array v2, v2, [I

    iput-object v2, p0, Labcd/Cb;->FH:[I

    goto :goto_2a

    :cond_17
    iget v3, p0, Labcd/Cb;->Hw:I

    array-length v4, v2

    if-lt v3, v4, :cond_2a

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Labcd/Cb;->FH:[I

    :cond_2a
    :goto_2a
    iget-object v2, p0, Labcd/Cb;->FH:[I

    iget v3, p0, Labcd/Cb;->Hw:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/Cb;->Hw:I
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_35

    aput p1, v2, v3

    return-void

    :catchall_35
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method

.method public j6(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x2882e98ea3d8716cL

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Labcd/Cb;->FH:[I

    if-nez v0, :cond_27

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Cb;->FH:[I

    goto :goto_40

    :cond_27
    array-length v1, v0

    if-lt p1, v1, :cond_40

    add-int/lit8 v1, p1, 0x1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/Cb;->FH:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Cb;->FH:[I

    :cond_40
    :goto_40
    iget v0, p0, Labcd/Cb;->Hw:I

    if-lt p1, v0, :cond_48

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Labcd/Cb;->Hw:I

    :cond_48
    iget-object v0, p0, Labcd/Cb;->FH:[I

    aput p2, v0, p1
    :try_end_4c
    .catchall {:try_start_0 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_66

    const-wide v2, -0x2882e98ea3d8716cL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_66
    throw v0
.end method

.method public j6(Labcd/fc;)V
    .registers 6

    const-wide v0, -0x51d4b76167bd1c18L  # -2.743051999853739E-86

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Cb;->FH:[I

    const/4 v3, 0x0

    if-nez v2, :cond_15

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_28

    :cond_15
    iget v2, p0, Labcd/Cb;->Hw:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_1a
    iget v2, p0, Labcd/Cb;->Hw:I

    if-ge v3, v2, :cond_28

    iget-object v2, p0, Labcd/Cb;->FH:[I

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_29

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_28
    :goto_28
    return-void

    :catchall_29
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    goto :goto_33

    :goto_32
    throw v2

    :goto_33
    goto :goto_32
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-wide v0, -0xc41dbc5b4a050f4L  # -3.371952881997371E249

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_40

    :cond_c
    const-string v2, "{"

    const/4 v3, 0x0

    :goto_f
    :try_start_f
    iget v4, p0, Labcd/Cb;->Hw:I

    if-ge v3, v4, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Cb;->FH:[I

    aget v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_f .. :try_end_3f} :catchall_40

    return-object v0

    :catchall_40
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_48

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_48
    goto :goto_4a

    :goto_49
    throw v2

    :goto_4a
    goto :goto_49
.end method

.method public v5()V
    .registers 5

    const-wide v0, -0xba2a66f9c0c25a0L

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Labcd/Cb;->Hw:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Labcd/Cb;->DW(II)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public v5(I)V
    .registers 6

    const-wide v0, 0x1be360bf5783ef0L

    :try_start_5
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Labcd/Cb;->Hw:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method
