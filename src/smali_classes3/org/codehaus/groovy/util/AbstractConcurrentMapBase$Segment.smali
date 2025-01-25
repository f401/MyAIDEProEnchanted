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
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/util/LockableObject;-><init>()V

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->j6([Ljava/lang/Object;)V

    return-void
.end method

.method private j6(Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;I[Ljava/lang/Object;)V
    .registers 8

    aget-object v0, p3, p2

    if-eqz v0, :cond_25

    instance-of v1, v0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    check-cast v0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    aput-object v0, v1, v3

    aput-object v1, p3, p2

    return-void

    :cond_16
    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    add-int/2addr v1, v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    array-length p1, v0

    invoke-static {v0, v2, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v1, p3, p2

    return-void

    :cond_25
    aput-object p1, p3, p2

    return-void
.end method


# virtual methods
.method FH()V
    .registers 13

    iget-object v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->Hw:[Ljava/lang/Object;

    array-length v1, v0

    const/high16 v2, 0x40000000  # 2.0f

    if-lt v1, v2, :cond_8

    return-void

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, v1, :cond_48

    aget-object v5, v0, v3

    if-eqz v5, :cond_45

    instance-of v6, v5, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    const/4 v7, 0x0

    if-eqz v6, :cond_24

    check-cast v5, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    invoke-interface {v5}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->isValid()Z

    move-result v5

    if-eqz v5, :cond_21

    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    :cond_21
    aput-object v7, v0, v3

    goto :goto_45

    :cond_24
    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_28
    array-length v9, v5

    if-ge v6, v9, :cond_3f

    aget-object v9, v5, v6

    check-cast v9, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    if-eqz v9, :cond_3a

    invoke-interface {v9}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->isValid()Z

    move-result v9

    if-eqz v9, :cond_3a

    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    :cond_3a
    aput-object v7, v5, v6

    :goto_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_3f
    if-nez v8, :cond_44

    aput-object v7, v0, v3

    goto :goto_45

    :cond_44
    add-int/2addr v4, v8

    :cond_45
    :goto_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_48
    add-int/lit8 v4, v4, 0x1

    iget v3, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->FH:I

    if-ge v4, v3, :cond_50

    move v3, v1

    goto :goto_52

    :cond_50
    shl-int/lit8 v3, v1, 0x1

    :goto_52
    new-array v4, v3, [Ljava/lang/Object;

    add-int/lit8 v5, v3, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_58
    if-ge v6, v1, :cond_97

    aget-object v8, v0, v6

    if-eqz v8, :cond_94

    instance-of v9, v8, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    if-eqz v9, :cond_75

    check-cast v8, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    invoke-interface {v8}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->isValid()Z

    move-result v9

    if-eqz v9, :cond_94

    invoke-interface {v8}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->j6()I

    move-result v9

    and-int/2addr v9, v5

    invoke-direct {p0, v8, v9, v4}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->j6(Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;I[Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_94

    :cond_75
    check-cast v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    :goto_78
    array-length v10, v8

    if-ge v9, v10, :cond_94

    aget-object v10, v8, v9

    check-cast v10, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;

    if-eqz v10, :cond_91

    invoke-interface {v10}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->isValid()Z

    move-result v11

    if-eqz v11, :cond_91

    invoke-interface {v10}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->j6()I

    move-result v11

    and-int/2addr v11, v5

    invoke-direct {p0, v10, v11, v4}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->j6(Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;I[Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    :cond_91
    add-int/lit8 v9, v9, 0x1

    goto :goto_78

    :cond_94
    :goto_94
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    :cond_97
    int-to-float v0, v3

    const/high16 v1, 0x3f400000  # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->FH:I

    iput-object v4, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->Hw:[Ljava/lang/Object;

    iput v7, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I

    return-void
.end method

.method j6([Ljava/lang/Object;)V
    .registers 4

    array-length v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f400000  # 0.75f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->FH:I

    iput-object p1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->Hw:[Ljava/lang/Object;

    return-void
.end method
