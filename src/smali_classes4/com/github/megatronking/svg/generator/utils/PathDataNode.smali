.class public Lcom/github/megatronking/svg/generator/utils/PathDataNode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;,
        Lcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final INIT_TYPE:C = ' '

.field private static final commandStepMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public params:[F

.field public type:C


# direct methods
.method static final constructor <clinit>()V
    .registers 8

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x7a

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x5a

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x6d

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x4d

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x6c

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x4c

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x74

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x54

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x68

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x48

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x76

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x56

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x63

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x43

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x73

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x53

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x71

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x51

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x61

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x41

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(C[F)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-char v0, p1

    iput-char v0, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    iput-object p2, p0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/github/megatronking/svg/generator/utils/PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    new-instance v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;

    invoke-direct {v0, p1, p2}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static copyOfRange([FII)[F
    .registers 6

    if-le p1, p2, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    array-length v0, p0

    if-ltz p1, :cond_d

    if-le p1, v0, :cond_13

    :cond_d
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_13
    sub-int v1, p2, p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Lcom/github/megatronking/svg/generator/utils/PathDataNode;
    .registers 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_8

    const/4 v0, 0x0

    check-cast v0, [Lcom/github/megatronking/svg/generator/utils/PathDataNode;

    :goto_7
    return-object v0

    :cond_8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    move v2, v3

    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_34

    sub-int/2addr v0, v2

    if-ne v0, v1, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_27

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    new-array v1, v3, [F

    invoke-static {v5, v0, v1}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->addNode(Ljava/util/ArrayList;C[F)V

    :cond_27
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/github/megatronking/svg/generator/utils/PathDataNode;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/megatronking/svg/generator/utils/PathDataNode;

    goto :goto_7

    :cond_34
    invoke-static {p0, v0}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->nextStart(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_51

    invoke-static {v0}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->getFloats(Ljava/lang/String;)[F

    move-result-object v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v5, v0, v2}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->addNode(Ljava/util/ArrayList;C[F)V

    :cond_51
    add-int/lit8 v0, v4, 0x1

    move v2, v4

    goto :goto_f
.end method

.method private deltaTransform(Lcom/github/megatronking/svg/generator/utils/AffineTransform;[FII)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/utils/AffineTransform;",
            "[FII)V"
        }
    .end annotation

    const/4 v2, 0x0

    new-array v1, p4, [F

    move v0, v2

    :goto_4
    if-lt v0, p4, :cond_11

    div-int/lit8 v5, p4, 0x2

    move-object v0, p1

    move-object v3, v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->deltaTransform([FI[FII)V

    :goto_e
    if-lt v2, p4, :cond_1a

    return-void

    :cond_11
    add-int v3, v0, p3

    aget v3, p2, v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    add-int v0, v2, p3

    aget v3, v1, v2

    aput v3, p2, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method

.method private static extract(Ljava/lang/String;ILcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p2, Lcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;->mEndWithNegOrDot:Z

    move v0, v1

    move v2, p1

    move v3, v1

    move v4, v1

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_11

    :cond_e
    iput v2, p2, Lcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;->mEndPosition:I

    return-void

    :cond_11
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_36

    move v0, v1

    :goto_19
    if-nez v4, :cond_e

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :sswitch_1e
    move v4, v5

    move v0, v1

    goto :goto_19

    :sswitch_21
    if-eq v2, p1, :cond_28

    if-nez v0, :cond_28

    iput-boolean v5, p2, Lcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;->mEndWithNegOrDot:Z

    move v4, v5

    :cond_28
    move v0, v1

    goto :goto_19

    :sswitch_2a
    if-nez v3, :cond_2f

    move v3, v5

    :goto_2d
    move v0, v1

    goto :goto_19

    :cond_2f
    iput-boolean v5, p2, Lcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;->mEndWithNegOrDot:Z

    move v4, v5

    goto :goto_2d

    :sswitch_33
    move v0, v5

    goto :goto_19

    nop

    :sswitch_data_36
    .sparse-switch
        0x20 -> :sswitch_1e
        0x2c -> :sswitch_1e
        0x2d -> :sswitch_21
        0x2e -> :sswitch_2a
        0x45 -> :sswitch_33
        0x65 -> :sswitch_33
    .end sparse-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x7a

    if-eq v0, v3, :cond_1a

    move v0, v1

    :goto_b
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_1c

    move v3, v1

    :goto_14
    or-int/2addr v0, v3

    if-eqz v0, :cond_1e

    new-array v0, v1, [F

    :goto_19
    return-object v0

    :cond_1a
    move v0, v2

    goto :goto_b

    :cond_1c
    move v3, v2

    goto :goto_14

    :cond_1e
    :try_start_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v4, v0, [F

    new-instance v5, Lcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;

    invoke-direct {v5}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    :goto_2d
    if-lt v2, v6, :cond_35

    const/4 v0, 0x0

    invoke-static {v4, v0, v1}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->copyOfRange([FII)[F

    move-result-object v0

    goto :goto_19

    :cond_35
    invoke-static {p0, v2, v5}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->extract(Ljava/lang/String;ILcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;)V

    iget v3, v5, Lcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;->mEndPosition:I

    if-ge v2, v3, :cond_80

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, v4, v1

    :goto_48
    iget-boolean v1, v5, Lcom/github/megatronking/svg/generator/utils/PathDataNode$ExtractFloatResult;->mEndWithNegOrDot:Z
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_4a} :catch_53

    if-eqz v1, :cond_4f

    move v2, v3

    move v1, v0

    goto :goto_2d

    :cond_4f
    add-int/lit8 v2, v3, 0x1

    move v1, v0

    goto :goto_2d

    :catch_53
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "error in parsing \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_80
    move v0, v1

    goto :goto_48
.end method

.method public static hasRelMoveAfterClose([Lcom/github/megatronking/svg/generator/utils/PathDataNode;)Z
    .registers 6

    const/4 v1, 0x0

    const/16 v2, 0x20

    move v0, v1

    :goto_4
    array-length v3, p0

    if-lt v0, v3, :cond_8

    :goto_7
    return v1

    :cond_8
    aget-object v3, p0, v0

    const/16 v4, 0x7a

    if-eq v2, v4, :cond_12

    const/16 v4, 0x5a

    if-ne v2, v4, :cond_1a

    :cond_12
    iget-char v2, v3, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    const/16 v4, 0x6d

    if-ne v2, v4, :cond_1a

    const/4 v1, 0x1

    goto :goto_7

    :cond_1a
    iget-char v2, v3, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private isTranslationOnly(Lcom/github/megatronking/svg/generator/utils/AffineTransform;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->getType()I

    move-result v1

    if-eqz v1, :cond_a

    if-eq v1, v0, :cond_a

    const/4 v0, 0x0

    :cond_a
    return v0
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_7

    :cond_6
    return p1

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_19

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_21

    :cond_19
    const/16 v1, 0x65

    if-eq v0, v1, :cond_21

    const/16 v1, 0x45

    if-ne v0, v1, :cond_6

    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static nodeListToString([Lcom/github/megatronking/svg/generator/utils/PathDataNode;)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_7
    array-length v2, p0

    if-lt v0, v2, :cond_f

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    aget-object v5, p0, v0

    iget-char v2, v5, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    array-length v6, v2

    move v3, v1

    :goto_1a
    if-lt v3, v6, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    if-lez v3, :cond_2b

    and-int/lit8 v2, v3, 0x1

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3a

    const-string v2, ","

    :goto_28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    iget-object v2, v5, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    aget v2, v2, v3

    invoke-static {v2}, Lcom/github/megatronking/svg/generator/utils/FloatUtils;->format2String(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1a

    :cond_3a
    const-string v2, " "

    goto :goto_28
.end method

.method public static transform(FFFFFF[Lcom/github/megatronking/svg/generator/utils/PathDataNode;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFFF[",
            "Lcom/github/megatronking/svg/generator/utils/PathDataNode;",
            ")V"
        }
    .end annotation

    new-instance v7, Lcom/github/megatronking/svg/generator/utils/Point;

    invoke-direct {v7}, Lcom/github/megatronking/svg/generator/utils/Point;-><init>()V

    new-instance v8, Lcom/github/megatronking/svg/generator/utils/Point;

    invoke-direct {v8}, Lcom/github/megatronking/svg/generator/utils/Point;-><init>()V

    new-instance v0, Lcom/github/megatronking/svg/generator/utils/AffineTransform;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;-><init>(FFFFFF)V

    const/4 v1, 0x0

    const/16 v2, 0x20

    :goto_18
    array-length v3, p6

    if-lt v1, v3, :cond_1c

    return-void

    :cond_1c
    aget-object v3, p6, v1

    invoke-virtual {v3, v0, v7, v8, v2}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->transform(Lcom/github/megatronking/svg/generator/utils/AffineTransform;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;C)V

    iget-char v2, v3, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method


# virtual methods
.method public transform(Lcom/github/megatronking/svg/generator/utils/AffineTransform;Lcom/github/megatronking/svg/generator/utils/Point;Lcom/github/megatronking/svg/generator/utils/Point;C)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/megatronking/svg/generator/utils/AffineTransform;",
            "Lcom/github/megatronking/svg/generator/utils/Point;",
            "Lcom/github/megatronking/svg/generator/utils/Point;",
            "C)V"
        }
    .end annotation

    move-object/from16 v0, p2

    iget v9, v0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    move-object/from16 v0, p2

    iget v10, v0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    move-object/from16 v0, p3

    iget v14, v0, Lcom/github/megatronking/svg/generator/utils/Point;->x:F

    move-object/from16 v0, p3

    iget v15, v0, Lcom/github/megatronking/svg/generator/utils/Point;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    array-length v0, v3

    move/from16 v17, v0

    sget-object v3, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->commandStepMap:Ljava/util/Map;

    new-instance v4, Ljava/lang/Character;

    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    invoke-direct {v4, v5}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    mul-int/lit8 v3, v17, 0x2

    new-array v4, v3, [F

    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    sparse-switch v3, :sswitch_data_45e

    move v4, v14

    move v7, v9

    move v12, v10

    move v11, v15

    :goto_3b
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v12}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v11}, Lcom/github/megatronking/svg/generator/utils/Point;->set(FF)V

    return-void

    :sswitch_46
    move v4, v14

    move v7, v14

    move v12, v15

    move v11, v15

    goto :goto_3b

    :sswitch_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    add-int/lit8 v4, v17, -0x2

    aget v10, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    add-int/lit8 v4, v17, -0x1

    aget v12, v3, v4

    move-object/from16 v0, p0

    iget-char v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_45a

    move v9, v10

    move v11, v12

    :goto_65
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v7, 0x0

    div-int/lit8 v8, v17, 0x2

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->transform([FI[FII)V

    move v4, v9

    move v7, v10

    goto :goto_3b

    :sswitch_79
    const/16 v3, 0x7a

    move/from16 v0, p4

    if-eq v0, v3, :cond_85

    const/16 v3, 0x5a

    move/from16 v0, p4

    if-ne v0, v3, :cond_110

    :cond_85
    const/16 v3, 0x4d

    int-to-char v3, v3

    move-object/from16 v0, p0

    iput-char v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v3, v5

    add-float/2addr v5, v14

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v3, v5

    add-float/2addr v5, v15

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v4, 0x0

    aget v10, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v4, 0x1

    aget v9, v3, v4

    const/4 v3, 0x1

    :goto_b1
    div-int v4, v17, v18

    if-lt v3, v4, :cond_df

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    add-int/lit8 v4, v17, -0x2

    aget v12, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    add-int/lit8 v4, v17, -0x1

    aget v11, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v7, 0x0

    div-int/lit8 v8, v17, 0x2

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->transform([FI[FII)V

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    :cond_da
    :goto_da
    move v7, v6

    move v12, v5

    move v11, v3

    goto/16 :goto_3b

    :cond_df
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v5, v3, v18

    aget v6, v4, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    add-int/lit8 v8, v3, -0x1

    mul-int v8, v8, v18

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v5, v3, v18

    add-int/lit8 v5, v5, 0x1

    aget v6, v4, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    add-int/lit8 v8, v3, -0x1

    mul-int v8, v8, v18

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    :cond_110
    const/4 v7, 0x0

    const/16 v3, 0x20

    move/from16 v0, p4

    if-ne v0, v3, :cond_454

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v4, 0x0

    aget v9, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v4, 0x1

    aget v10, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->transform([FI[FII)V

    const/4 v7, 0x1

    move v6, v9

    move v5, v10

    move v4, v9

    move v3, v10

    :goto_13a
    move v8, v7

    :goto_13b
    div-int v9, v17, v18

    if-lt v8, v9, :cond_157

    invoke-direct/range {p0 .. p1}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->isTranslationOnly(Lcom/github/megatronking/svg/generator/utils/AffineTransform;)Z

    move-result v8

    if-nez v8, :cond_da

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int/lit8 v9, v7, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v17, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9, v7}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->deltaTransform(Lcom/github/megatronking/svg/generator/utils/AffineTransform;[FII)V

    goto :goto_da

    :cond_157
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v10, v8, v18

    add-int/lit8 v11, v18, -0x2

    add-int/2addr v10, v11

    aget v9, v9, v10

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v10, v8, v18

    add-int/lit8 v11, v18, -0x1

    add-int/2addr v10, v11

    aget v9, v9, v10

    add-int/lit8 v8, v8, 0x1

    add-float/2addr v5, v9

    goto :goto_13b

    :sswitch_172
    const/4 v3, 0x0

    :goto_173
    div-int v4, v17, v18

    if-lt v3, v4, :cond_191

    invoke-direct/range {p0 .. p1}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->isTranslationOnly(Lcom/github/megatronking/svg/generator/utils/AffineTransform;)Z

    move-result v3

    if-nez v3, :cond_18b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->deltaTransform(Lcom/github/megatronking/svg/generator/utils/AffineTransform;[FII)V

    :cond_18b
    move v4, v14

    move v7, v9

    move v12, v10

    move v11, v15

    goto/16 :goto_3b

    :cond_191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v5, v3, v18

    add-int/lit8 v6, v18, -0x2

    add-int/2addr v5, v6

    aget v4, v4, v5

    add-float/2addr v9, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v5, v3, v18

    add-int/lit8 v6, v18, -0x1

    add-int/2addr v5, v6

    aget v4, v4, v5

    add-float/2addr v10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_173

    :sswitch_1ac
    const/4 v3, 0x0

    :goto_1ad
    move/from16 v0, v17

    if-lt v3, v0, :cond_1d2

    invoke-direct/range {p0 .. p1}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->isTranslationOnly(Lcom/github/megatronking/svg/generator/utils/AffineTransform;)Z

    move-result v3

    if-nez v3, :cond_1cc

    const/16 v3, 0x6c

    int-to-char v3, v3

    move-object/from16 v0, p0

    iput-char v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    const/4 v3, 0x0

    mul-int/lit8 v5, v17, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->deltaTransform(Lcom/github/megatronking/svg/generator/utils/AffineTransform;[FII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    :cond_1cc
    move v4, v14

    move v7, v9

    move v12, v10

    move v11, v15

    goto/16 :goto_3b

    :cond_1d2
    mul-int/lit8 v5, v3, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    aget v6, v6, v3

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    aget v5, v5, v3

    add-float/2addr v9, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    int-to-float v6, v6

    aput v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1ad

    :sswitch_1ee
    const/16 v3, 0x4c

    int-to-char v3, v3

    move-object/from16 v0, p0

    iput-char v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    const/4 v3, 0x0

    :goto_1f6
    move/from16 v0, v17

    if-lt v3, v0, :cond_20e

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object v6, v4

    move/from16 v8, v17

    invoke-virtual/range {v3 .. v8}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->transform([FI[FII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    move v4, v14

    move v7, v9

    move v12, v10

    move v11, v15

    goto/16 :goto_3b

    :cond_20e
    mul-int/lit8 v5, v3, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    aget v6, v6, v3

    aput v6, v4, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aput v10, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    aget v9, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f6

    :sswitch_227
    const/4 v3, 0x0

    :goto_228
    move/from16 v0, v17

    if-lt v3, v0, :cond_24d

    invoke-direct/range {p0 .. p1}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->isTranslationOnly(Lcom/github/megatronking/svg/generator/utils/AffineTransform;)Z

    move-result v3

    if-nez v3, :cond_247

    const/16 v3, 0x6c

    int-to-char v3, v3

    move-object/from16 v0, p0

    iput-char v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    const/4 v3, 0x0

    mul-int/lit8 v5, v17, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->deltaTransform(Lcom/github/megatronking/svg/generator/utils/AffineTransform;[FII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    :cond_247
    move v4, v14

    move v7, v9

    move v12, v10

    move v11, v15

    goto/16 :goto_3b

    :cond_24d
    mul-int/lit8 v5, v3, 0x2

    const/4 v6, 0x0

    int-to-float v6, v6

    aput v6, v4, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    aget v6, v6, v3

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    aget v5, v5, v3

    add-float/2addr v10, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_228

    :sswitch_269
    const/16 v3, 0x4c

    int-to-char v3, v3

    move-object/from16 v0, p0

    iput-char v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->type:C

    const/4 v3, 0x0

    :goto_271
    move/from16 v0, v17

    if-lt v3, v0, :cond_289

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object v6, v4

    move/from16 v8, v17

    invoke-virtual/range {v3 .. v8}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->transform([FI[FII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    move v4, v14

    move v7, v9

    move v12, v10

    move v11, v15

    goto/16 :goto_3b

    :cond_289
    mul-int/lit8 v5, v3, 0x2

    aput v9, v4, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    aget v6, v6, v3

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    aget v10, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_271

    :sswitch_2a2
    const/4 v3, 0x0

    move v6, v10

    move v5, v9

    move/from16 v16, v3

    :goto_2a7
    div-int v3, v17, v18

    move/from16 v0, v16

    if-lt v0, v3, :cond_2b3

    move v4, v14

    move v7, v5

    move v12, v6

    move v11, v15

    goto/16 :goto_3b

    :cond_2b3
    invoke-direct/range {p0 .. p1}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->isTranslationOnly(Lcom/github/megatronking/svg/generator/utils/AffineTransform;)Z

    move-result v3

    if-nez v3, :cond_349

    new-instance v3, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v7, v16, v18

    aget v7, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v8, v16, v18

    add-int/lit8 v8, v8, 0x1

    aget v8, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v9, v16, v18

    add-int/lit8 v9, v9, 0x2

    aget v9, v4, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v10, v16, v18

    add-int/lit8 v10, v10, 0x3

    aget v10, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v11, v16, v18

    add-int/lit8 v11, v11, 0x4

    aget v11, v4, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v12, v16, v18

    add-int/lit8 v12, v12, 0x5

    aget v12, v4, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v13, v16, v18

    add-int/lit8 v13, v13, 0x6

    aget v13, v4, v13

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v13}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;-><init>(Lcom/github/megatronking/svg/generator/utils/AffineTransform;FFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v5, v16, v18

    invoke-static {v3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->access$1000027(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)F

    move-result v6

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v5, v16, v18

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->access$1000028(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)F

    move-result v6

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v5, v16, v18

    add-int/lit8 v5, v5, 0x2

    invoke-static {v3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->access$1000029(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)F

    move-result v6

    aput v6, v4, v5

    invoke-static {v3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->access$1000030(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)Z

    move-result v3

    if-eqz v3, :cond_349

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v4, v16, v18

    add-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v7, v16, v18

    add-int/lit8 v7, v7, 0x4

    aget v6, v6, v7

    sub-float/2addr v5, v6

    aput v5, v3, v4

    :cond_349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v4, v16, v18

    add-int/lit8 v4, v4, 0x5

    aget v9, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v4, v16, v18

    add-int/lit8 v4, v4, 0x6

    aget v10, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v3, v16, v18

    add-int/lit8 v5, v3, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v3, v16, v18

    add-int/lit8 v7, v3, 0x5

    const/4 v8, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/github/megatronking/svg/generator/utils/AffineTransform;->transform([FI[FII)V

    add-int/lit8 v3, v16, 0x1

    move v6, v10

    move v5, v9

    move/from16 v16, v3

    goto/16 :goto_2a7

    :sswitch_37b
    const/4 v3, 0x0

    move v6, v10

    move v5, v9

    move/from16 v16, v3

    :goto_380
    div-int v3, v17, v18

    move/from16 v0, v16

    if-lt v0, v3, :cond_38c

    move v4, v14

    move v7, v5

    move v12, v6

    move v11, v15

    goto/16 :goto_3b

    :cond_38c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v4, v16, v18

    add-int/lit8 v4, v4, 0x5

    aget v19, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v4, v16, v18

    add-int/lit8 v4, v4, 0x6

    aget v20, v3, v4

    invoke-direct/range {p0 .. p1}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->isTranslationOnly(Lcom/github/megatronking/svg/generator/utils/AffineTransform;)Z

    move-result v3

    if-nez v3, :cond_44a

    new-instance v3, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v7, v16, v18

    aget v7, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v8, v16, v18

    add-int/lit8 v8, v8, 0x1

    aget v8, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v9, v16, v18

    add-int/lit8 v9, v9, 0x2

    aget v9, v4, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v10, v16, v18

    add-int/lit8 v10, v10, 0x3

    aget v10, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v11, v16, v18

    add-int/lit8 v11, v11, 0x4

    aget v11, v4, v11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v12, v16, v18

    add-int/lit8 v12, v12, 0x5

    aget v4, v4, v12

    add-float v12, v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v13, v16, v18

    add-int/lit8 v13, v13, 0x6

    aget v4, v4, v13

    add-float v13, v6, v4

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v13}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;-><init>(Lcom/github/megatronking/svg/generator/utils/AffineTransform;FFFFFFFFF)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v7, v16, v18

    add-int/lit8 v7, v7, 0x5

    const/4 v8, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v7, v8}, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->deltaTransform(Lcom/github/megatronking/svg/generator/utils/AffineTransform;[FII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v7, v16, v18

    invoke-static {v3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->access$1000027(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)F

    move-result v8

    aput v8, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v7, v16, v18

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->access$1000028(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)F

    move-result v8

    aput v8, v4, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v7, v16, v18

    add-int/lit8 v7, v7, 0x2

    invoke-static {v3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->access$1000029(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)F

    move-result v8

    aput v8, v4, v7

    invoke-static {v3}, Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;->access$1000030(Lcom/github/megatronking/svg/generator/utils/PathDataNode$EllipseSolver;)Z

    move-result v3

    if-eqz v3, :cond_44a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v4, v16, v18

    add-int/lit8 v4, v4, 0x4

    const/4 v7, 0x1

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/github/megatronking/svg/generator/utils/PathDataNode;->params:[F

    mul-int v9, v16, v18

    add-int/lit8 v9, v9, 0x4

    aget v8, v8, v9

    sub-float/2addr v7, v8

    aput v7, v3, v4

    :cond_44a
    add-float v6, v6, v20

    add-float v5, v5, v19

    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto/16 :goto_380

    :cond_454
    move v6, v9

    move v5, v10

    move v4, v14

    move v3, v15

    goto/16 :goto_13a

    :cond_45a
    move v9, v14

    move v11, v15

    goto/16 :goto_65

    :sswitch_data_45e
    .sparse-switch
        0x41 -> :sswitch_37b
        0x43 -> :sswitch_4b
        0x48 -> :sswitch_1ee
        0x4c -> :sswitch_4b
        0x4d -> :sswitch_4b
        0x51 -> :sswitch_4b
        0x53 -> :sswitch_4b
        0x54 -> :sswitch_4b
        0x56 -> :sswitch_269
        0x5a -> :sswitch_46
        0x61 -> :sswitch_2a2
        0x63 -> :sswitch_172
        0x68 -> :sswitch_1ac
        0x6c -> :sswitch_172
        0x6d -> :sswitch_79
        0x71 -> :sswitch_172
        0x73 -> :sswitch_172
        0x74 -> :sswitch_172
        0x76 -> :sswitch_227
        0x7a -> :sswitch_46
    .end sparse-switch
.end method
