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
    .registers 4

    const-wide v2, 0x1898763689dcec4fL    # 3.431394272253464E-190

    const-class v0, Labcd/Cb;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x19274f06cd3d67c0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19274f06cd3d67c0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Cb;->FH:[I

    const/4 v0, 0x0

    iput v0, p0, Labcd/Cb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(I)V
    .registers 8

    const-wide v4, 0x9f47bef4618eabL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9f47bef4618eabL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Labcd/Cb;->FH:[I

    iput p1, p0, Labcd/Cb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Labcd/ec;)V
    .registers 8

    const-wide v4, -0x4a5715835f7f7d0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4a5715835f7f7d0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Labcd/Cb;->Hw:I

    iget v0, p0, Labcd/Cb;->Hw:I

    if-lez v0, :cond_2

    iget v0, p0, Labcd/Cb;->Hw:I

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Cb;->FH:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/Cb;->FH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Labcd/Cb;->FH:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0

    :cond_2
    return-void
.end method

.method private DW(II)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x773e6143b6d7c3a1L
    .end annotation

    const-wide v2, 0x59e03959cf087f30L    # 8.57999170922174E124

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x59e03959cf087f30L    # 8.57999170922174E124

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ge p1, p2, :cond_6

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Labcd/Cb;->FH:[I

    add-int/2addr v0, p1

    aget v4, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move v0, p1

    move v1, p2

    :cond_1
    :goto_0
    if-gt v0, v1, :cond_5

    :goto_1
    :try_start_1
    iget-object v5, p0, Labcd/Cb;->FH:[I

    aget v5, v5, v0

    if-ge v5, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v5, p0, Labcd/Cb;->FH:[I

    aget v5, v5, v1

    if-ge v4, v5, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    if-gt v0, v1, :cond_1

    iget-object v5, p0, Labcd/Cb;->FH:[I

    aget v5, v5, v1

    iget-object v6, p0, Labcd/Cb;->FH:[I

    iget-object v7, p0, Labcd/Cb;->FH:[I

    aget v7, v7, v0

    aput v7, v6, v1

    iget-object v6, p0, Labcd/Cb;->FH:[I

    aput v5, v6, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move p1, v0

    move p2, v1

    move-object v1, v4

    :goto_3
    sget-boolean v0, Labcd/Cb;->DW:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_2
    invoke-direct {p0, p1, v1}, Labcd/Cb;->DW(II)V

    invoke-direct {p0, v0, p2}, Labcd/Cb;->DW(II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    return-void

    :catch_1
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public DW()I
    .registers 5

    const-wide v2, -0xba2a9d2437a65fdL

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xba2a9d2437a65fdL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Cb;->Hw:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Labcd/Cb;->Hw:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/Cb;->DW(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(I)I
    .registers 8

    const-wide v4, -0x42b78439cc27605dL    # -1.7396568154387542E-13

    const/4 v0, -0x1

    :try_start_0
    sget-boolean v1, Labcd/Cb;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x42b78439cc27605dL    # -1.7396568154387542E-13

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v1, p0, Labcd/Cb;->FH:[I

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Labcd/Cb;->FH:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    iget v1, p0, Labcd/Cb;->Hw:I

    if-ge p1, v1, :cond_1

    iget-object v0, p0, Labcd/Cb;->FH:[I

    aget v0, v0, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public FH()I
    .registers 5

    const-wide v2, 0x7e41a8f94f52a31L

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7e41a8f94f52a31L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Cb;->Hw:I

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/Cb;->FH:[I

    iget v1, p0, Labcd/Cb;->Hw:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Labcd/Cb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aget v0, v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH(I)V
    .registers 6

    const-wide v2, 0x559f20cf3f8eb6c5L    # 2.7887655189687488E104

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x559f20cf3f8eb6c5L    # 2.7887655189687488E104

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0, p1}, Labcd/Cb;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()I
    .registers 5

    const-wide v2, -0xba08a7aba503225L

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xba08a7aba503225L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Labcd/Cb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(I)V
    .registers 8

    const-wide v4, 0x3dba1a48d09aa071L    # 2.3740243310913186E-11

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3dba1a48d09aa071L    # 2.3740243310913186E-11

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/Cb;->FH:[I

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Labcd/Cb;->Hw:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Labcd/Cb;->FH:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Labcd/Cb;->FH:[I

    iget v3, p0, Labcd/Cb;->Hw:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/Cb;->Hw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/Cb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const-wide v8, 0x31b9418d16f1458L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v2, Labcd/Cb;->j6:Z

    if-eqz v2, :cond_0

    const-wide v4, 0x31b9418d16f1458L

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    instance-of v2, p1, Labcd/Cb;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Labcd/Cb;

    move-object v2, v0

    iget v4, p0, Labcd/Cb;->Hw:I

    iget v5, v2, Labcd/Cb;->Hw:I

    if-eq v4, v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_1
    iget v5, p0, Labcd/Cb;->Hw:I

    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v4}, Labcd/Cb;->DW(I)I

    move-result v5

    invoke-virtual {v2, v4}, Labcd/Cb;->DW(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eq v5, v6, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Labcd/Cb;->DW:Z

    if-eqz v3, :cond_5

    invoke-static {v2, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0x13989b4e5da04ffbL    # -1.575067185098295E214

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x13989b4e5da04ffbL    # -1.575067185098295E214

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Labcd/Cb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)V
    .registers 10

    const-wide v6, -0x4cec1f7fc78a3544L    # -1.2079551163713765E-62

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4cec1f7fc78a3544L    # -1.2079551163713765E-62

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Labcd/Cb;->FH:[I

    if-nez v0, :cond_2

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Cb;->FH:[I

    :cond_1
    :goto_0
    iget-object v0, p0, Labcd/Cb;->FH:[I

    iget v1, p0, Labcd/Cb;->Hw:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/Cb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    aput p1, v0, v1

    return-void

    :cond_2
    :try_start_1
    iget v0, p0, Labcd/Cb;->Hw:I

    iget-object v1, p0, Labcd/Cb;->FH:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Labcd/Cb;->FH:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/Cb;->FH:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Labcd/Cb;->FH:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Cb;->FH:[I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(II)V
    .registers 10

    const-wide v2, -0x2882e98ea3d8716cL

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x2882e98ea3d8716cL

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/Cb;->FH:[I

    if-nez v0, :cond_3

    const/16 v0, 0xa

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Labcd/Cb;->FH:[I

    :cond_1
    :goto_0
    iget v0, p0, Labcd/Cb;->Hw:I

    if-lt p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Labcd/Cb;->Hw:I

    :cond_2
    iget-object v0, p0, Labcd/Cb;->FH:[I

    aput p2, v0, p1

    return-void

    :cond_3
    iget-object v0, p0, Labcd/Cb;->FH:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Labcd/Cb;->FH:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Labcd/Cb;->FH:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Labcd/Cb;->FH:[I

    array-length v6, v6

    invoke-static {v1, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Labcd/Cb;->FH:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/Cb;->DW:Z

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

.method public j6(Labcd/fc;)V
    .registers 8

    const-wide v4, -0x51d4b76167bd1c18L    # -2.743051999853739E-86

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Labcd/Cb;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x51d4b76167bd1c18L    # -2.743051999853739E-86

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/Cb;->FH:[I

    if-nez v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Labcd/Cb;->Hw:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    iget v1, p0, Labcd/Cb;->Hw:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Labcd/Cb;->FH:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const-wide v4, -0xc41dbc5b4a050f4L    # -3.371952881997371E249

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc41dbc5b4a050f4L    # -3.371952881997371E249

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "{"

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget v2, p0, Labcd/Cb;->Hw:I

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Cb;->FH:[I

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v2, -0xba2a66f9c0c25a0L

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xba2a66f9c0c25a0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Labcd/Cb;->Hw:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Labcd/Cb;->DW(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5(I)V
    .registers 6

    const-wide v2, 0x1be360bf5783ef0L

    :try_start_0
    sget-boolean v0, Labcd/Cb;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1be360bf5783ef0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Labcd/Cb;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/Cb;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
