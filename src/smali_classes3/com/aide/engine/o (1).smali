.class public Lcom/aide/engine/o;
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
.field private FH:[[B
    .annotation runtime Labcd/ru;
        field = -0x2b5fcb7a43e07ad1L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/engine/o;

    const-wide v1, 0x133d17ef9b546ebL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x5b2a2a587bedc368L  # 1.4509609343402243E131

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/o;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x64

    const/4 v4, 0x5

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    iput-object v3, p0, Lcom/aide/engine/o;->FH:[[B
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/o;->DW:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method private DW(I)I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xa47cca3b058f30L
    .end annotation

    const-wide v0, 0x7274400f2b04d2dfL  # 2.160461368812969E243

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v3, v2

    const/4 v4, 0x0

    if-lt p1, v3, :cond_13

    return v4

    :cond_13
    aget-object v2, v2, p1

    array-length v3, v2

    if-nez v3, :cond_19

    return v4

    :cond_19
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    array-length p1, v2
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_2e

    add-int/lit8 p1, p1, -0x2

    :goto_21
    if-ltz p1, :cond_2d

    aget-byte v0, v2, p1

    if-eq v0, v3, :cond_2a

    add-int/lit8 p1, p1, 0x2

    return p1

    :cond_2a
    add-int/lit8 p1, p1, -0x1

    goto :goto_21

    :cond_2d
    return v4

    :catchall_2e
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/o;->DW:Z

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    goto :goto_3d

    :goto_3c
    throw v2

    :goto_3d
    goto :goto_3c
.end method

.method private FH(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1bed64e02a5cbbc0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x3891f235599edd31L  # -1.248389061293296E36

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v1, v0

    add-int/lit8 v2, p1, 0x2

    if-gt v1, v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v1, p1, 0x1

    array-length v3, v0

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v2, v0, p1

    array-length v3, v2

    new-array v3, v3, [B

    aput-object v3, v0, v1

    array-length v0, v2
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_46

    if-le v0, p2, :cond_45

    aget-byte v0, v2, p2

    const/4 v1, 0x0

    move v4, p2

    :goto_37
    :try_start_37
    array-length v5, v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_46

    if-ge v4, v5, :cond_45

    aget-byte v5, v2, v4

    aput-byte v5, v3, v1

    aput-byte v0, v2, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_45
    return-void

    :catchall_46
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_5f

    const-wide v2, -0x3891f235599edd31L  # -1.248389061293296E36

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5f
    goto :goto_61

    :goto_60
    throw v0

    :goto_61
    goto :goto_60
.end method

.method private j6(III)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x1681b479e6d8a65bL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_1c

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x21fd8efb210e0978L

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    if-nez p3, :cond_1f

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v0, v0

    if-gt v0, p1, :cond_25

    return-void

    :cond_25
    invoke-direct {p0, p1}, Lcom/aide/engine/o;->DW(I)I

    move-result v0

    if-gt v0, p2, :cond_2c

    return-void

    :cond_2c
    add-int/lit8 v1, v0, -0x1

    if-ne v1, p2, :cond_4c

    if-lez p2, :cond_4c

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/aide/engine/o;->j6(II)V

    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v1, v1, p1
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_9a

    add-int/lit8 v2, p2, -0x1

    aget-byte v2, v1, v2

    :try_start_3f
    sget-object v3, Lcom/aide/engine/m;->EQ:Lcom/aide/engine/m;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_9a

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_4c

    aput-byte v2, v1, p2

    return-void

    :cond_4c
    add-int/2addr v0, p3

    :try_start_4d
    invoke-virtual {p0, p1, v0}, Lcom/aide/engine/o;->j6(II)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v0, v0, p1

    add-int v1, p2, p3

    array-length v2, v0

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-static {v0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_9a

    const/4 v2, 0x0

    if-lez p2, :cond_64

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, v0, v3

    goto :goto_65

    :cond_64
    const/4 v3, 0x0

    :goto_65
    aget-byte v4, v0, p2

    :try_start_67
    sget-object v5, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-lt v4, v5, :cond_7a

    sget-object v2, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    :cond_7a
    if-ne v3, v4, :cond_91

    sget-object v4, Lcom/aide/engine/m;->VH:Lcom/aide/engine/m;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_91

    sget-object v4, Lcom/aide/engine/m;->gn:Lcom/aide/engine/m;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result p1
    :try_end_8c
    .catchall {:try_start_67 .. :try_end_8c} :catchall_9a

    add-int/lit8 p1, p1, 0x1

    if-eq v3, p1, :cond_91

    goto :goto_92

    :cond_91
    move v3, v2

    :goto_92
    if-ge p2, v1, :cond_99

    aput-byte v3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_92

    :cond_99
    return-void

    :catchall_9a
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_b8

    const-wide v2, -0x21fd8efb210e0978L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b8
    goto :goto_ba

    :goto_b9
    throw v0

    :goto_ba
    goto :goto_b9
.end method


# virtual methods
.method public DW(II)B
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, 0xf1c01ce3a145d27L  # 6.881622128105178E-236

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v1, v0

    if-lt p1, v1, :cond_1d

    const/4 p1, 0x0

    return p1

    :cond_1d
    aget-object v0, v0, p1

    array-length v1, v0

    if-lt p2, v1, :cond_28

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte p1, v0, v1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_2b

    return p1

    :cond_28
    aget-byte p1, v0, p2

    return p1

    :catchall_2b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_44

    const-wide v2, 0xf1c01ce3a145d27L  # 6.881622128105178E-236

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method public DW(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xf39454c60312980L

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    if-ne p1, p3, :cond_37

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v1, v0

    if-ge p1, v1, :cond_83

    aget-object v0, v0, p1

    add-int/lit8 v1, p4, 0x1

    array-length v2, v0

    if-ge v1, v2, :cond_83

    array-length v2, v0

    sub-int/2addr v2, p4

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_83

    :cond_37
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v0, v0

    if-ge p3, v0, :cond_60

    invoke-direct {p0, p1}, Lcom/aide/engine/o;->DW(I)I

    move-result v0

    invoke-direct {p0, p3}, Lcom/aide/engine/o;->DW(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/aide/engine/o;->j6(II)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v1, v0, p1

    aget-object v0, v0, p3

    add-int/lit8 v2, p4, 0x1

    move v3, p2

    :goto_51
    array-length v4, v0

    if-ge v2, v4, :cond_60

    array-length v4, v1
    :try_end_55
    .catchall {:try_start_0 .. :try_end_55} :catchall_84

    if-ge v3, v4, :cond_60

    aget-byte v4, v0, v2

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    :cond_60
    add-int/lit8 v0, p3, 0x1

    :try_start_62
    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_83

    add-int/lit8 v2, p1, 0x1

    array-length v3, v1

    sub-int/2addr v3, p3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_71
    sub-int v1, p3, p1

    if-ge v0, v1, :cond_83

    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v2, v1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x5

    new-array v3, v3, [B

    aput-object v3, v1, v2
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_84

    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    :cond_83
    :goto_83
    return-void

    :catchall_84
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_a7

    const-wide v2, 0xf39454c60312980L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a7
    goto :goto_a9

    :goto_a8
    throw v0

    :goto_a9
    goto :goto_a8
.end method

.method public j6()V
    .registers 8

    const-wide v0, 0x1fa5685ec9b74d00L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    iget-object v4, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v5, v4

    if-ge v3, v5, :cond_21

    aget-object v4, v4, v3

    const/4 v5, 0x0

    :goto_16
    array-length v6, v4
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_22

    if-ge v5, v6, :cond_1e

    aput-byte v2, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/o;->DW:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    goto :goto_2c

    :goto_2b
    throw v2

    :goto_2c
    goto :goto_2b
.end method

.method public j6(BIIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_26

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, p1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x4d4d062814e73894L

    move-object v3, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    if-ne p2, p4, :cond_4f

    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p0, p4, v0}, Lcom/aide/engine/o;->j6(II)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v0, v0, p4

    move v1, p3

    :goto_32
    if-gt v1, p5, :cond_c7

    aget-byte v2, v0, v1

    sget-object v3, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_4a

    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_c8

    goto :goto_4c

    :cond_4a
    aput-byte p1, v0, v1

    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_4f
    add-int/lit8 v0, p3, 0x1

    :try_start_51
    invoke-virtual {p0, p2, v0}, Lcom/aide/engine/o;->j6(II)V

    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p0, p4, v0}, Lcom/aide/engine/o;->j6(II)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v0, v0, p2

    move v1, p3

    :goto_5e
    array-length v2, v0

    if-ge v1, v2, :cond_7c

    aget-byte v2, v0, v1

    sget-object v3, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_77

    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_76
    .catchall {:try_start_51 .. :try_end_76} :catchall_c8

    goto :goto_79

    :cond_77
    aput-byte p1, v0, v1

    :goto_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_7c
    add-int/lit8 v0, p2, 0x1

    :goto_7e
    const/4 v1, 0x0

    if-ge v0, p4, :cond_a6

    :try_start_81
    iget-object v2, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v2, v2, v0

    :goto_85
    array-length v3, v2

    if-ge v1, v3, :cond_a3

    aget-byte v3, v2, v1

    sget-object v4, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lt v3, v4, :cond_9e

    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v1
    :try_end_9d
    .catchall {:try_start_81 .. :try_end_9d} :catchall_c8

    goto :goto_a0

    :cond_9e
    aput-byte p1, v2, v1

    :goto_a0
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    :cond_a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    :cond_a6
    :try_start_a6
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v0, v0, p4

    :goto_aa
    if-gt v1, p5, :cond_c7

    aget-byte v2, v0, v1

    sget-object v3, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_c2

    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_c1
    .catchall {:try_start_a6 .. :try_end_c1} :catchall_c8

    goto :goto_c4

    :cond_c2
    aput-byte p1, v0, v1

    :goto_c4
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    :cond_c7
    return-void

    :catchall_c8
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_f0

    const-wide v2, 0x4d4d062814e73894L

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, p1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f0
    goto :goto_f2

    :goto_f1
    throw v0

    :goto_f2
    goto :goto_f1
.end method

.method public j6(I)V
    .registers 8

    const-wide v0, -0x118a5641844b9f9fL  # -1.2529006943564716E224

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/o;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v2, v2

    if-gt v2, p1, :cond_2b

    mul-int/lit8 v2, p1, 0x5

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x5

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iget-object v3, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/aide/engine/o;->FH:[[B
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    :cond_2b
    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/o;->DW:Z

    if-eqz v3, :cond_39

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public j6(II)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x1798c3a757307500L  # -8.480930276477657E194

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0, p1}, Lcom/aide/engine/o;->j6(I)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v0, v0, p1

    array-length v1, v0

    if-gt v1, p2, :cond_3e

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    mul-int/lit8 v2, p2, 0x5

    div-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [B

    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/aide/engine/o;->FH:[[B

    aput-object v3, v4, p1

    array-length p1, v0
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3f

    :goto_37
    if-ge p1, v2, :cond_3e

    aput-byte v1, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_37

    :cond_3e
    return-void

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_58

    const-wide v2, -0x1798c3a757307500L  # -8.480930276477657E194

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    goto :goto_5a

    :goto_59
    throw v0

    :goto_5a
    goto :goto_59
.end method

.method public j6(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_21

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x173f08ea3f504707L  # -3.963013455870362E196

    move-object v3, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    if-ne p1, p3, :cond_2b

    sub-int v0, p4, p2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/aide/engine/o;->j6(III)V

    goto :goto_3a

    :cond_2b
    move v0, p1

    :goto_2c
    if-ge v0, p3, :cond_34

    invoke-direct {p0, p1, p2}, Lcom/aide/engine/o;->FH(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_34
    add-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, v0}, Lcom/aide/engine/o;->j6(III)V
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    :goto_3a
    return-void

    :catchall_3b
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_5e

    const-wide v2, -0x173f08ea3f504707L  # -3.963013455870362E196

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5e
    goto :goto_60

    :goto_5f
    throw v0

    :goto_60
    goto :goto_5f
.end method

.method public j6(ILcom/aide/engine/o;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x29132e6bd527a730L

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    iget-object v0, p2, Lcom/aide/engine/o;->FH:[[B

    array-length v0, v0

    if-gt v0, p3, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p0, p1}, Lcom/aide/engine/o;->j6(I)V

    iget-object v0, p2, Lcom/aide/engine/o;->FH:[[B

    aget-object v0, v0, p3

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aput-object v2, v0, p1
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_4b

    const-wide v2, 0x29132e6bd527a730L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v0
.end method

.method public j6([Lcom/aide/engine/m;[I[I[I[II)V
    .registers 16

    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    aput-object p3, v0, v1

    const/4 v3, 0x3

    aput-object p4, v0, v3

    const/4 v3, 0x4

    aput-object p5, v0, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const-wide v3, -0x8f11ae16927ac29L

    invoke-static {v3, v4, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_26
    invoke-virtual {p0}, Lcom/aide/engine/o;->j6()V

    :cond_29
    :goto_29
    add-int/lit8 p6, p6, -0x1

    if-ltz p6, :cond_4b

    aget-object v0, p1, p6

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-byte v4, v0

    aget v0, p2, p6

    add-int/lit8 v5, v0, -0x1

    aget v0, p3, p6

    add-int/lit8 v6, v0, -0x1

    aget v0, p4, p6

    add-int/lit8 v7, v0, -0x1

    aget v0, p5, p6

    add-int/lit8 v8, v0, -0x2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/aide/engine/o;->j6(BIIII)V

    goto :goto_29

    :cond_4b
    return-void
.end method
