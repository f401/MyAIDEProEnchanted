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
    .registers 4

    const-wide v2, 0x133d17ef9b546ebL

    const-class v0, Lcom/aide/engine/o;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x5b2a2a587bedc368L    # 1.4509609343402243E131

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5b2a2a587bedc368L    # 1.4509609343402243E131

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    const/4 v1, 0x5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/aide/engine/o;->FH:[[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW(I)I
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xa47cca3b058f30L
    .end annotation

    const-wide v4, 0x7274400f2b04d2dfL    # 2.160461368812969E243

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/engine/o;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x7274400f2b04d2dfL    # 2.160461368812969E243

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v1, v1

    if-lt p1, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v2, v1, p1

    array-length v1, v2

    if-eqz v1, :cond_1

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-byte v3, v2, v1

    array-length v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x2

    :goto_1
    if-ltz v1, :cond_1

    aget-byte v4, v2, v1

    if-eq v4, v3, :cond_3

    add-int/lit8 v0, v1, 0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private FH(II)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x1bed64e02a5cbbc0L
    .end annotation

    const-wide v2, -0x3891f235599edd31L    # -1.248389061293296E36

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x3891f235599edd31L    # -1.248389061293296E36

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v0, v0

    add-int/lit8 v1, p1, 0x2

    if-gt v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/aide/engine/o;->FH:[[B

    iget-object v6, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v6, v6

    sub-int/2addr v6, p1

    add-int/lit8 v6, v6, -0x2

    invoke-static {v0, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v5, v0, p1

    array-length v0, v5

    new-array v6, v0, [B

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aput-object v6, v0, v4

    array-length v0, v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-le v0, p2, :cond_1

    aget-byte v4, v5, p2

    const/4 v1, 0x0

    move v0, p2

    :goto_0
    :try_start_1
    array-length v7, v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v0, v7, :cond_1

    aget-byte v7, v5, v0

    aput-byte v7, v6, v1

    aput-byte v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/o;->DW:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method private j6(III)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x1681b479e6d8a65bL
    .end annotation

    const-wide v8, -0x21fd8efb210e0978L

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x21fd8efb210e0978L

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-nez p3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v0, v0

    if-le v0, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/aide/engine/o;->DW(I)I

    move-result v0

    if-le v0, p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    if-ne v1, p2, :cond_3

    if-lez p2, :cond_3

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/aide/engine/o;->j6(II)V

    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, p2, -0x1

    aget-byte v2, v1, v2

    :try_start_1
    sget-object v3, Lcom/aide/engine/m;->EQ:Lcom/aide/engine/m;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_3

    aput-byte v2, v1, p2

    goto :goto_0

    :cond_3
    add-int/2addr v0, p3

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/aide/engine/o;->j6(II)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v2, v0, p1

    add-int v3, p2, p3

    array-length v0, v2

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    invoke-static {v2, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-lez p2, :cond_4

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, v2, v0

    :goto_1
    aget-byte v4, v2, p2

    :try_start_3
    sget-object v1, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v4, v1, :cond_7

    sget-object v1, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    :goto_2
    if-ne v0, v4, :cond_6

    sget-object v4, Lcom/aide/engine/m;->VH:Lcom/aide/engine/m;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-eq v0, v4, :cond_6

    sget-object v4, Lcom/aide/engine/m;->gn:Lcom/aide/engine/m;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-eq v0, v4, :cond_6

    :goto_3
    if-ge p2, v3, :cond_1

    aput-byte v0, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_4
    move v0, v6

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/o;->DW:Z

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

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v1, v6

    goto :goto_2
.end method


# virtual methods
.method public DW(II)B
    .registers 10

    const-wide v2, 0xf1c01ce3a145d27L    # 6.881622128105178E-236

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0xf1c01ce3a145d27L    # 6.881622128105178E-236

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v0, v0

    if-lt p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v0, v0, p1

    array-length v1, v0

    if-lt p2, v1, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    aget-byte v0, v0, p2

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/o;->DW:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public DW(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xf39454c60312980L

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p1, p3, :cond_2

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v0, v0, p1

    add-int/lit8 v1, p4, 0x1

    array-length v2, v0

    if-ge v1, v2, :cond_1

    array-length v2, v0

    sub-int/2addr v2, p4

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v0, v0

    if-ge p3, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/aide/engine/o;->DW(I)I

    move-result v0

    invoke-direct {p0, p3}, Lcom/aide/engine/o;->DW(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/aide/engine/o;->j6(II)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v2, v0, p1

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v3, v0, p3

    add-int/lit8 v0, p4, 0x1

    move v1, p2

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    array-length v4, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v4, :cond_3

    aget-byte v4, v3, v0

    aput-byte v4, v2, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p3, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    iget-object v2, p0, Lcom/aide/engine/o;->FH:[[B

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v4, v4

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x2

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_1
    sub-int v1, p3, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    iget-object v2, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v2, v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x5

    new-array v3, v3, [B

    aput-object v3, v1, v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/o;->DW:Z

    if-eqz v0, :cond_4

    const-wide v2, 0xf39454c60312980L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1
.end method

.method public j6()V
    .registers 9

    const-wide v6, 0x1fa5685ec9b74d00L

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    const-wide v2, 0x1fa5685ec9b74d00L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    move v2, v1

    :goto_0
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v3, v0, v2

    move v0, v1

    :goto_1
    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v4, :cond_1

    aput-byte v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public j6(BIIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, p1}, Ljava/lang/Byte;-><init>(B)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x4d4d062814e73894L

    move-object v2, p0

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p2, p4, :cond_2

    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p0, p4, v0}, Lcom/aide/engine/o;->j6(II)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v1, v0, p4

    move v0, p3

    :goto_0
    if-gt v0, p5, :cond_a

    aget-byte v2, v1, v0

    sget-object v3, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_1

    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aput-byte p1, v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p3, 0x1

    :try_start_1
    invoke-virtual {p0, p2, v0}, Lcom/aide/engine/o;->j6(II)V

    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p0, p4, v0}, Lcom/aide/engine/o;->j6(II)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v1, v0, p2

    move v0, p3

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-byte v2, v1, v0

    sget-object v3, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_3

    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    aput-byte p1, v1, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, p2, 0x1

    move v2, v0

    :goto_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-ge v2, p4, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v3, v0, v2

    move v0, v1

    :goto_5
    array-length v1, v3

    if-ge v0, v1, :cond_6

    aget-byte v1, v3, v0

    sget-object v4, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-lt v1, v4, :cond_5

    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, p1

    int-to-byte v1, v1

    aput-byte v1, v3, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    aput-byte p1, v3, v0

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v1, v1, p4

    :goto_7
    if-gt v0, p5, :cond_a

    aget-byte v2, v1, v0

    sget-object v3, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_8

    invoke-static {}, Lcom/aide/engine/m;->values()[Lcom/aide/engine/m;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v1, v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    aput-byte p1, v1, v0

    goto :goto_8

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/o;->DW:Z

    if-eqz v0, :cond_9

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

    move-object v4, p0

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    throw v1

    :cond_a
    return-void
.end method

.method public j6(I)V
    .registers 10

    const-wide v6, -0x118a5641844b9f9fL    # -1.2529006943564716E224

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x118a5641844b9f9fL    # -1.2529006943564716E224

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v0, v0

    if-gt v0, p1, :cond_1

    mul-int/lit8 v0, p1, 0x5

    div-int/lit8 v0, v0, 0x4

    const/4 v1, 0x5

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/aide/engine/o;->FH:[[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/aide/engine/o;->FH:[[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/o;->DW:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(II)V
    .registers 11

    const-wide v2, -0x1798c3a757307500L    # -8.480930276477657E194

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x1798c3a757307500L    # -8.480930276477657E194

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/aide/engine/o;->j6(I)V

    iget-object v0, p0, Lcom/aide/engine/o;->FH:[[B

    aget-object v0, v0, p1

    array-length v1, v0

    if-gt v1, p2, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    mul-int/lit8 v4, p2, 0x5

    div-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/aide/engine/o;->FH:[[B

    aput-object v4, v5, p1

    array-length v0, v0

    :goto_0
    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v5, :cond_2

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/o;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1

    :cond_2
    return-void
.end method

.method public j6(IIII)V
    .registers 14

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x173f08ea3f504707L    # -3.963013455870362E196

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-ne p1, p3, :cond_1

    sub-int v0, p4, p2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/aide/engine/o;->j6(III)V

    :goto_0
    return-void

    :cond_1
    move v0, p1

    :goto_1
    if-ge v0, p3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/aide/engine/o;->FH(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    add-int/lit8 v1, p4, 0x1

    invoke-direct {p0, p3, v0, v1}, Lcom/aide/engine/o;->j6(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/o;->DW:Z

    if-eqz v0, :cond_3

    const-wide v2, -0x173f08ea3f504707L    # -3.963013455870362E196

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public j6(ILcom/aide/engine/o;I)V
    .registers 14

    const-wide v8, 0x29132e6bd527a730L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x29132e6bd527a730L

    move-object v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p2, Lcom/aide/engine/o;->FH:[[B

    array-length v0, v0

    if-gt v0, p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/aide/engine/o;->j6(I)V

    iget-object v0, p2, Lcom/aide/engine/o;->FH:[[B

    aget-object v0, v0, p3

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p2, Lcom/aide/engine/o;->FH:[[B

    aget-object v1, v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/aide/engine/o;->FH:[[B

    aput-object v0, v1, p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/o;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6([Lcom/aide/engine/m;[I[I[I[II)V
    .registers 14

    sget-boolean v0, Lcom/aide/engine/o;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8f11ae16927ac29L

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v1, p0, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/engine/o;->j6()V

    add-int/lit8 v0, p6, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_2

    aget-object v0, p1, v6

    if-eqz v0, :cond_1

    aget-object v0, p1, v6

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    int-to-byte v1, v0

    aget v0, p2, v6

    add-int/lit8 v2, v0, -0x1

    aget v0, p3, v6

    add-int/lit8 v3, v0, -0x1

    aget v0, p4, v6

    add-int/lit8 v4, v0, -0x1

    aget v0, p5, v6

    add-int/lit8 v5, v0, -0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aide/engine/o;->j6(BIIII)V

    :cond_1
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    :cond_2
    return-void
.end method
