.class public final Labcd/WD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final DW:I

.field final FH:I

.field final Hw:I

.field final Zo:I

.field final j6:I

.field final v5:I


# direct methods
.method constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Labcd/WD;->j6:I

    iput p2, p0, Labcd/WD;->DW:I

    iput p3, p0, Labcd/WD;->FH:I

    iput p4, p0, Labcd/WD;->Hw:I

    iput p5, p0, Labcd/WD;->v5:I

    iput p6, p0, Labcd/WD;->Zo:I

    return-void
.end method

.method private static final DW([BII)Labcd/WD;
    .registers 11

    :try_start_0
    new-instance v7, Labcd/WD;

    sub-int v1, p2, p1

    invoke-static {p0, p1, p2}, Labcd/WD;->FH([BII)I

    move-result v2

    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0, p2}, Labcd/WD;->FH([BII)I

    move-result v3

    add-int/lit8 v0, p1, 0x10

    invoke-static {p0, v0, p2}, Labcd/WD;->FH([BII)I

    move-result v4

    add-int/lit8 v0, p1, 0x18

    invoke-static {p0, v0, p2}, Labcd/WD;->FH([BII)I

    move-result v5

    add-int/lit8 v0, p1, 0x20

    invoke-static {p0, v0, p2}, Labcd/WD;->FH([BII)I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Labcd/WD;-><init>(IIIIII)V
    :try_end_24
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_24} :catch_25

    return-object v7

    :catch_25
    move-exception v0

    new-instance v0, Labcd/aD;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Labcd/aD;-><init>([BII)V

    throw v0
.end method

.method public static final DW(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_26

    const/16 v0, 0x28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_11

    goto :goto_26

    :cond_11
    const/4 v0, 0x0

    :goto_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Labcd/IK;->j6(B)I
    :try_end_22
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_12 .. :try_end_22} :catch_25

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :catch_25
    move-exception p0

    :cond_26
    :goto_26
    return v2
.end method

.method private static final FH([BII)I
    .registers 7

    sub-int v0, p2, p1

    const/16 v1, 0x8

    if-gt v1, v0, :cond_b

    invoke-static {p0, p1}, Labcd/IK;->gn([BI)I

    move-result p0

    return p0

    :cond_b
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_d
    if-ge v0, v1, :cond_20

    if-lt p1, p2, :cond_12

    goto :goto_20

    :cond_12
    shl-int/lit8 v2, v2, 0x4

    aget-byte v3, p0, p1

    invoke-static {v3}, Labcd/IK;->j6(B)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    :cond_20
    :goto_20
    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x4

    shl-int p0, v2, v1

    return p0
.end method

.method private j6(II)I
    .registers 4

    iget v0, p0, Labcd/WD;->j6:I

    invoke-static {v0, p1, p2}, Labcd/WD;->j6(III)I

    move-result p1

    return p1
.end method

.method static j6(III)I
    .registers 4

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, p1, 0x8

    if-gt v0, p0, :cond_9

    return p2

    :cond_9
    if-gt p0, p1, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x4

    rsub-int/lit8 p0, p0, 0x20

    ushr-int p1, p2, p0

    shl-int p0, p1, p0

    return p0
.end method

.method public static final j6(Labcd/YD;)Labcd/WD;
    .registers 9

    new-instance v7, Labcd/WD;

    const/16 v1, 0x28

    iget v2, p0, Labcd/YD;->FH:I

    iget v3, p0, Labcd/YD;->Hw:I

    iget v4, p0, Labcd/YD;->v5:I

    iget v5, p0, Labcd/YD;->Zo:I

    iget v6, p0, Labcd/YD;->VH:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Labcd/WD;-><init>(IIIIII)V

    return-object v7
.end method

.method public static final j6(Ljava/lang/String;)Labcd/WD;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-gt v0, v1, :cond_13

    invoke-static {p0}, Labcd/hE;->DW(Ljava/lang/String;)[B

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v2, v0}, Labcd/WD;->DW([BII)Labcd/WD;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidId:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final j6([BII)Labcd/WD;
    .registers 6

    sub-int v0, p2, p1

    const/16 v1, 0x28

    if-gt v0, v1, :cond_b

    invoke-static {p0, p1, p2}, Labcd/WD;->DW([BII)Labcd/WD;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p1

    iget-object p1, p1, Lorg/eclipse/jgit/JGitText;->invalidIdLength:Ljava/lang/String;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final DW(Labcd/YD;)I
    .registers 5

    iget v0, p0, Labcd/WD;->DW:I

    const/4 v1, 0x1

    iget v2, p1, Labcd/YD;->FH:I

    invoke-direct {p0, v1, v2}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    :cond_10
    iget v0, p0, Labcd/WD;->FH:I

    const/4 v1, 0x2

    iget v2, p1, Labcd/YD;->Hw:I

    invoke-direct {p0, v1, v2}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_20

    return v0

    :cond_20
    iget v0, p0, Labcd/WD;->Hw:I

    const/4 v1, 0x3

    iget v2, p1, Labcd/YD;->v5:I

    invoke-direct {p0, v1, v2}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_30

    return v0

    :cond_30
    iget v0, p0, Labcd/WD;->v5:I

    const/4 v1, 0x4

    iget v2, p1, Labcd/YD;->Zo:I

    invoke-direct {p0, v1, v2}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_40

    return v0

    :cond_40
    iget v0, p0, Labcd/WD;->Zo:I

    const/4 v1, 0x5

    iget p1, p1, Labcd/YD;->VH:I

    invoke-direct {p0, v1, p1}, Labcd/WD;->j6(II)I

    move-result p1

    invoke-static {v0, p1}, Labcd/FK;->j6(II)I

    move-result p1

    return p1
.end method

.method public DW()Z
    .registers 3

    invoke-virtual {p0}, Labcd/WD;->FH()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/WD;->j6:I

    return v0
.end method

.method public final Hw()Ljava/lang/String;
    .registers 5

    const/16 v0, 0x28

    new-array v0, v0, [C

    iget v1, p0, Labcd/WD;->DW:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Labcd/YD;->j6([CII)V

    iget v1, p0, Labcd/WD;->j6:I

    const/16 v3, 0x8

    if-gt v1, v3, :cond_16

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    :cond_16
    iget v1, p0, Labcd/WD;->FH:I

    invoke-static {v0, v3, v1}, Labcd/YD;->j6([CII)V

    iget v1, p0, Labcd/WD;->j6:I

    const/16 v3, 0x10

    if-gt v1, v3, :cond_27

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    :cond_27
    iget v1, p0, Labcd/WD;->Hw:I

    invoke-static {v0, v3, v1}, Labcd/YD;->j6([CII)V

    iget v1, p0, Labcd/WD;->j6:I

    const/16 v3, 0x18

    if-gt v1, v3, :cond_38

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    :cond_38
    iget v1, p0, Labcd/WD;->v5:I

    invoke-static {v0, v3, v1}, Labcd/YD;->j6([CII)V

    iget v1, p0, Labcd/WD;->j6:I

    const/16 v3, 0x20

    if-gt v1, v3, :cond_49

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    :cond_49
    iget v1, p0, Labcd/WD;->Zo:I

    invoke-static {v0, v3, v1}, Labcd/YD;->j6([CII)V

    new-instance v1, Ljava/lang/String;

    iget v3, p0, Labcd/WD;->j6:I

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/WD;

    if-eqz v0, :cond_2c

    check-cast p1, Labcd/WD;

    iget v0, p0, Labcd/WD;->j6:I

    iget v1, p1, Labcd/WD;->j6:I

    if-ne v0, v1, :cond_2c

    iget v0, p0, Labcd/WD;->DW:I

    iget v1, p1, Labcd/WD;->DW:I

    if-ne v0, v1, :cond_2c

    iget v0, p0, Labcd/WD;->FH:I

    iget v1, p1, Labcd/WD;->FH:I

    if-ne v0, v1, :cond_2c

    iget v0, p0, Labcd/WD;->Hw:I

    iget v1, p1, Labcd/WD;->Hw:I

    if-ne v0, v1, :cond_2c

    iget v0, p0, Labcd/WD;->v5:I

    iget v1, p1, Labcd/WD;->v5:I

    if-ne v0, v1, :cond_2c

    iget v0, p0, Labcd/WD;->Zo:I

    iget p1, p1, Labcd/WD;->Zo:I

    if-ne v0, p1, :cond_2c

    const/4 p1, 0x1

    return p1

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Labcd/WD;->FH:I

    return v0
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Labcd/WD;->DW:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public final j6([BI)I
    .registers 6

    iget v0, p0, Labcd/WD;->DW:I

    const/4 v1, 0x1

    invoke-static {p1, p2}, Labcd/FK;->j6([BI)I

    move-result v2

    invoke-direct {p0, v1, v2}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_12

    return v0

    :cond_12
    iget v0, p0, Labcd/WD;->FH:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Labcd/FK;->j6([BI)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_26

    return v0

    :cond_26
    iget v0, p0, Labcd/WD;->Hw:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {p1, v1}, Labcd/FK;->j6([BI)I

    move-result v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_3a

    return v0

    :cond_3a
    iget v0, p0, Labcd/WD;->v5:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v1}, Labcd/FK;->j6([BI)I

    move-result v1

    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_4e

    return v0

    :cond_4e
    iget v0, p0, Labcd/WD;->Zo:I

    add-int/lit8 p2, p2, 0x10

    invoke-static {p1, p2}, Labcd/FK;->j6([BI)I

    move-result p1

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, Labcd/WD;->j6(II)I

    move-result p1

    invoke-static {v0, p1}, Labcd/FK;->j6(II)I

    move-result p1

    return p1
.end method

.method public final j6([II)I
    .registers 6

    iget v0, p0, Labcd/WD;->DW:I

    const/4 v1, 0x1

    aget v2, p1, p2

    invoke-direct {p0, v1, v2}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_10

    return v0

    :cond_10
    iget v0, p0, Labcd/WD;->FH:I

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_22

    return v0

    :cond_22
    iget v0, p0, Labcd/WD;->Hw:I

    add-int/lit8 v1, p2, 0x2

    aget v1, p1, v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_34

    return v0

    :cond_34
    iget v0, p0, Labcd/WD;->v5:I

    add-int/lit8 v1, p2, 0x3

    aget v1, p1, v1

    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Labcd/WD;->j6(II)I

    move-result v1

    invoke-static {v0, v1}, Labcd/FK;->j6(II)I

    move-result v0

    if-eqz v0, :cond_46

    return v0

    :cond_46
    iget v0, p0, Labcd/WD;->Zo:I

    add-int/2addr p2, v2

    aget p1, p1, p2

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, Labcd/WD;->j6(II)I

    move-result p1

    invoke-static {v0, p1}, Labcd/FK;->j6(II)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AbbreviatedObjectId["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/WD;->Hw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()Labcd/yE;
    .registers 8

    invoke-virtual {p0}, Labcd/WD;->DW()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Labcd/yE;

    iget v2, p0, Labcd/WD;->DW:I

    iget v3, p0, Labcd/WD;->FH:I

    iget v4, p0, Labcd/WD;->Hw:I

    iget v5, p0, Labcd/WD;->v5:I

    iget v6, p0, Labcd/WD;->Zo:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Labcd/yE;-><init>(IIIII)V

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return-object v0
.end method
