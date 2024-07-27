.class public Labcd/yE;
.super Labcd/YD;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final gn:Labcd/yE;

.field private static final u7:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Labcd/yE;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Labcd/yE;-><init>(IIIII)V

    sput-object v0, Labcd/yE;->gn:Labcd/yE;

    sget-object v0, Labcd/yE;->gn:Labcd/yE;

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Labcd/yE;->u7:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Labcd/YD;-><init>()V

    iput p1, p0, Labcd/YD;->FH:I

    iput p2, p0, Labcd/YD;->Hw:I

    iput p3, p0, Labcd/YD;->v5:I

    iput p4, p0, Labcd/YD;->Zo:I

    iput p5, p0, Labcd/YD;->VH:I

    return-void
.end method

.method protected constructor <init>(Labcd/YD;)V
    .registers 3

    invoke-direct {p0}, Labcd/YD;-><init>()V

    iget v0, p1, Labcd/YD;->FH:I

    iput v0, p0, Labcd/YD;->FH:I

    iget v0, p1, Labcd/YD;->Hw:I

    iput v0, p0, Labcd/YD;->Hw:I

    iget v0, p1, Labcd/YD;->v5:I

    iput v0, p0, Labcd/YD;->v5:I

    iget v0, p1, Labcd/YD;->Zo:I

    iput v0, p0, Labcd/YD;->Zo:I

    iget v0, p1, Labcd/YD;->VH:I

    iput v0, p0, Labcd/YD;->VH:I

    return-void
.end method

.method public static final DW([II)Labcd/yE;
    .registers 8

    new-instance v0, Labcd/yE;

    aget v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    add-int/lit8 v3, p1, 0x2

    aget v3, p0, v3

    add-int/lit8 v4, p1, 0x3

    aget v4, p0, v4

    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    invoke-direct/range {v0 .. v5}, Labcd/yE;-><init>(IIIII)V

    return-object v0
.end method

.method public static final DW(Ljava/lang/String;)Z
    .registers 5

    const/16 v3, 0x28

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-static {v2}, Labcd/IK;->j6(B)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final Hw([BI)Labcd/yE;
    .registers 8

    new-instance v0, Labcd/yE;

    invoke-static {p0, p1}, Labcd/FK;->j6([BI)I

    move-result v1

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Labcd/FK;->j6([BI)I

    move-result v2

    add-int/lit8 v3, p1, 0x8

    invoke-static {p0, v3}, Labcd/FK;->j6([BI)I

    move-result v3

    add-int/lit8 v4, p1, 0xc

    invoke-static {p0, v4}, Labcd/FK;->j6([BI)I

    move-result v4

    add-int/lit8 v5, p1, 0x10

    invoke-static {p0, v5}, Labcd/FK;->j6([BI)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Labcd/yE;-><init>(IIIII)V

    return-object v0
.end method

.method public static final Ws()Labcd/yE;
    .registers 1

    sget-object v0, Labcd/yE;->gn:Labcd/yE;

    return-object v0
.end method

.method private static final Zo([BI)Labcd/yE;
    .registers 8

    :try_start_0
    new-instance v0, Labcd/yE;

    invoke-static {p0, p1}, Labcd/IK;->gn([BI)I

    move-result v1

    add-int/lit8 v2, p1, 0x8

    invoke-static {p0, v2}, Labcd/IK;->gn([BI)I

    move-result v2

    add-int/lit8 v3, p1, 0x10

    invoke-static {p0, v3}, Labcd/IK;->gn([BI)I

    move-result v3

    add-int/lit8 v4, p1, 0x18

    invoke-static {p0, v4}, Labcd/IK;->gn([BI)I

    move-result v4

    add-int/lit8 v5, p1, 0x20

    invoke-static {p0, v5}, Labcd/IK;->gn([BI)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Labcd/yE;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Labcd/aD;

    const/16 v1, 0x28

    invoke-direct {v0, p0, p1, v1}, Labcd/aD;-><init>([BII)V

    throw v0
.end method

.method public static j6(Ljava/lang/String;)Labcd/yE;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/yE;->Zo([BI)Labcd/yE;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final j6([B)Labcd/yE;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Labcd/yE;->Hw([BI)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method public static final j6(Labcd/yE;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Labcd/yE;->u7:Ljava/lang/String;

    goto :goto_0
.end method

.method public static j6([BI[BI)Z
    .registers 6

    aget-byte v0, p0, p1

    aget-byte v1, p2, p3

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x1

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x2

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x3

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x4

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x4

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x5

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x5

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x6

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x6

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x7

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x8

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x8

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x9

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x9

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0xa

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0xa

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0xb

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0xb

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0xc

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0xc

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0xd

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0xd

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0xe

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0xe

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0xf

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0xf

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x10

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x10

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x11

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x11

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x12

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x12

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x13

    aget-byte v0, p0, v0

    add-int/lit8 v1, p3, 0x13

    aget-byte v1, p2, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final v5([BI)Labcd/yE;
    .registers 3

    invoke-static {p0, p1}, Labcd/yE;->Zo([BI)Labcd/yE;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public J8()Labcd/yE;
    .registers 1

    return-object p0
.end method
