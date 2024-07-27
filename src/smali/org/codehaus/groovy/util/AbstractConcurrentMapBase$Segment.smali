.class public Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;
.super Lorg/codehaus/groovy/util/LockableObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/util/AbstractConcurrentMapBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Segment"
.end annotation


# instance fields
.field volatile DW:I

.field FH:I

.field protected volatile Hw:[Ljava/lang/Object;


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/groovy/util/LockableObject;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->j6([Ljava/lang/Object;)V

    return-void
.end method

.method private j6(Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;I[Ljava/lang/Object;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    aget-object v0, p3, p2

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    check-cast v0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    aput-object v0, v1, v4

    aput-object v1, p3, p2

    :goto_0
    return-void

    :cond_0
    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    array-length v2, v0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v1, p3, p2

    goto :goto_0

    :cond_1
    aput-object p1, p3, p2

    goto :goto_0
.end method


# virtual methods
.method FH()V
    .registers 12

    const/4 v9, 0x0

    const/4 v3, 0x0

    iget-object v8, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->Hw:[Ljava/lang/Object;

    array-length v6, v8

    const/high16 v0, 0x40000000    # 2.0f

    if-lt v6, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move v5, v3

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_6

    aget-object v0, v8, v7

    if-eqz v0, :cond_d

    instance-of v1, v0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    invoke-interface {v0}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v5, 0x1

    :goto_2
    add-int/lit8 v1, v7, 0x1

    move v5, v0

    move v7, v1

    goto :goto_1

    :cond_1
    aput-object v9, v8, v7

    move v0, v5

    goto :goto_2

    :cond_2
    check-cast v0, [Ljava/lang/Object;

    move v2, v3

    move v4, v3

    :goto_3
    array-length v1, v0

    if-ge v4, v1, :cond_4

    aget-object v1, v0, v4

    check-cast v1, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_3

    :cond_3
    aput-object v9, v0, v4

    move v1, v2

    goto :goto_4

    :cond_4
    if-nez v2, :cond_5

    aput-object v9, v8, v7

    move v0, v5

    goto :goto_2

    :cond_5
    add-int v0, v5, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v5, 0x1

    iget v1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->FH:I

    if-ge v0, v1, :cond_8

    move v0, v6

    :goto_5
    new-array v7, v0, [Ljava/lang/Object;

    array-length v0, v7

    add-int/lit8 v9, v0, -0x1

    move v5, v3

    move v1, v3

    :goto_6
    if-ge v5, v6, :cond_c

    aget-object v0, v8, v5

    if-eqz v0, :cond_7

    instance-of v2, v0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    if-eqz v2, :cond_9

    check-cast v0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    invoke-interface {v0}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->isValid()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->j6()I

    move-result v2

    and-int/2addr v2, v9

    invoke-direct {p0, v0, v2, v7}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->j6(Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;I[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    :cond_7
    :goto_7
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    :cond_8
    shl-int/lit8 v0, v6, 0x1

    goto :goto_5

    :cond_9
    check-cast v0, [Ljava/lang/Object;

    move v2, v3

    move v4, v1

    :goto_8
    array-length v1, v0

    if-ge v2, v1, :cond_b

    aget-object v1, v0, v2

    check-cast v1, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->isValid()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->j6()I

    move-result v10

    and-int/2addr v10, v9

    invoke-direct {p0, v1, v10, v7}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->j6(Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;I[Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    :cond_a
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_8

    :cond_b
    move v1, v4

    goto :goto_7

    :cond_c
    array-length v0, v7

    int-to-float v0, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->FH:I

    iput-object v7, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->Hw:[Ljava/lang/Object;

    iput v1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I

    goto/16 :goto_0

    :cond_d
    move v0, v5

    goto/16 :goto_2
.end method

.method j6([Ljava/lang/Object;)V
    .registers 4

    array-length v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->FH:I

    iput-object p1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->Hw:[Ljava/lang/Object;

    return-void
.end method
