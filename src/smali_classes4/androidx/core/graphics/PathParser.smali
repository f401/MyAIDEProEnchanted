.class public Landroidx/core/graphics/PathParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/PathParser$ExtractFloatResult;,
        Landroidx/core/graphics/PathParser$PathDataNode;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/core/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    new-instance v0, Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_5

    move v0, v1

    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_27

    aget-object v2, p0, v0

    iget-char v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    aget-object v3, p1, v0

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    if-ne v2, v3, :cond_5

    aget-object v2, p0, v0

    iget-object v2, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    aget-object v3, p1, v0

    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-ne v2, v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_27
    const/4 v1, 0x1

    goto :goto_5
.end method

.method static copyOfRange([FII)[F
    .registers 6

    if-gt p1, p2, :cond_1b

    array-length v0, p0

    if-ltz p1, :cond_15

    if-gt p1, v0, :cond_15

    sub-int v1, p2, p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_15
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .registers 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v3

    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_34

    invoke-static {p0, v0}, Landroidx/core/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_30

    invoke-static {v0}, Landroidx/core/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v5, v0, v2}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    :cond_30
    add-int/lit8 v0, v4, 0x1

    move v2, v4

    goto :goto_d

    :cond_34
    sub-int/2addr v0, v2

    if-ne v0, v1, :cond_46

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_46

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-array v1, v3, [F

    invoke-static {v5, v0, v1}, Landroidx/core/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    :cond_46
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/core/graphics/PathParser$PathDataNode;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/graphics/PathParser$PathDataNode;

    goto :goto_5
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroidx/core/graphics/PathParser$PathDataNode;

    move-result-object v1

    if-eqz v1, :cond_27

    :try_start_b
    invoke-static {v1, v0}, Landroidx/core/graphics/PathParser$PathDataNode;->nodesToPath([Landroidx/core/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    :goto_e
    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_27
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static deepCopyNodes([Landroidx/core/graphics/PathParser$PathDataNode;)[Landroidx/core/graphics/PathParser$PathDataNode;
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    array-length v0, p0

    new-array v1, v0, [Landroidx/core/graphics/PathParser$PathDataNode;

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_17

    new-instance v2, Landroidx/core/graphics/PathParser$PathDataNode;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Landroidx/core/graphics/PathParser$PathDataNode;-><init>(Landroidx/core/graphics/PathParser$PathDataNode;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    move-object v0, v1

    goto :goto_3
.end method

.method private static extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V
    .registers 11

    const/4 v5, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    move v0, v1

    move v2, v1

    move v3, p1

    move v4, v1

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_24

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_2e

    const/16 v7, 0x45

    if-eq v6, v7, :cond_38

    const/16 v7, 0x65

    if-eq v6, v7, :cond_38

    packed-switch v6, :pswitch_data_3e

    :cond_21
    move v4, v1

    :goto_22
    if-eqz v2, :cond_3a

    :cond_24
    iput v3, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    return-void

    :pswitch_27  #0x2e
    if-nez v0, :cond_2c

    move v0, v5

    move v4, v1

    goto :goto_22

    :cond_2c
    iput-boolean v5, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    :cond_2e
    :goto_2e
    :pswitch_2e  #0x2c
    move v2, v5

    move v4, v1

    goto :goto_22

    :pswitch_31  #0x2d
    if-eq v3, p1, :cond_21

    if-nez v4, :cond_21

    iput-boolean v5, p2, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_2e

    :cond_38
    move v4, v5

    goto :goto_22

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    nop

    :pswitch_data_3e
    .packed-switch 0x2c
        :pswitch_2e  #0000002c
        :pswitch_31  #0000002d
        :pswitch_27  #0000002e
    .end packed-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_11

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_14

    :cond_11
    new-array v0, v0, [F

    :goto_13
    return-object v0

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v3, v1, [F

    new-instance v4, Landroidx/core/graphics/PathParser$ExtractFloatResult;

    invoke-direct {v4}, Landroidx/core/graphics/PathParser$ExtractFloatResult;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    :goto_24
    if-ge v1, v5, :cond_42

    invoke-static {p0, v1, v4}, Landroidx/core/graphics/PathParser;->extract(Ljava/lang/String;ILandroidx/core/graphics/PathParser$ExtractFloatResult;)V

    iget v2, v4, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    if-ge v1, v2, :cond_39

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_39
    iget-boolean v1, v4, Landroidx/core/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v1, :cond_3f

    move v1, v2

    goto :goto_24

    :cond_3f
    add-int/lit8 v1, v2, 0x1

    goto :goto_24

    :cond_42
    const/4 v1, 0x0

    invoke-static {v3, v1, v0}, Landroidx/core/graphics/PathParser;->copyOfRange([FII)[F
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_46} :catch_48

    move-result-object v0

    goto :goto_13

    :catch_48
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in parsing \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static interpolatePathDataNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;F)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    if-eqz p1, :cond_2f

    if-eqz p2, :cond_2f

    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_27

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_27

    invoke-static {p1, p2}, Landroidx/core/graphics/PathParser;->canMorph([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)Z

    move-result v1

    if-nez v1, :cond_16

    :goto_15
    return v0

    :cond_16
    :goto_16
    array-length v1, p0

    if-ge v0, v1, :cond_25

    aget-object v1, p0, v0

    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v1, v2, v3, p3}, Landroidx/core/graphics/PathParser$PathDataNode;->interpolatePathDataNode(Landroidx/core/graphics/PathParser$PathDataNode;Landroidx/core/graphics/PathParser$PathDataNode;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_25
    const/4 v0, 0x1

    goto :goto_15

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The nodes to be interpolated and resulting nodes must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The nodes to be interpolated and resulting nodes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_20

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_18

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_21

    :cond_18
    const/16 v1, 0x65

    if-eq v0, v1, :cond_21

    const/16 v1, 0x45

    if-eq v0, v1, :cond_21

    :cond_20
    return p1

    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static updateNodes([Landroidx/core/graphics/PathParser$PathDataNode;[Landroidx/core/graphics/PathParser$PathDataNode;)V
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_27

    aget-object v2, p0, v0

    aget-object v3, p1, v0

    iget-char v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    iput-char v3, v2, Landroidx/core/graphics/PathParser$PathDataNode;->mType:C

    move v2, v1

    :goto_e
    aget-object v3, p1, v0

    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-ge v2, v3, :cond_24

    aget-object v3, p0, v0

    iget-object v3, v3, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget-object v4, p1, v0

    iget-object v4, v4, Landroidx/core/graphics/PathParser$PathDataNode;->mParams:[F

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_27
    return-void
.end method
