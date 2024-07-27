.class public abstract Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;
.super Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/util/AbstractConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;"
    }
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final DW(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->Hw:[Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    invoke-interface {v0, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_2

    aget-object v1, v0, v2

    check-cast v1, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;->FH(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public final FH(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->j6()V

    :try_start_0
    iget v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I

    add-int/lit8 v5, v0, 0x1

    iget v1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->FH:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->FH()V

    :cond_0
    iget-object v6, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->Hw:[Ljava/lang/Object;

    array-length v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, -0x1

    and-int v7, v0, p2

    aget-object v0, v6, v7

    if-eqz v0, :cond_7

    :try_start_1
    instance-of v1, v0, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    invoke-interface {v0, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;->j6(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    aput-object v2, v6, v7

    iput v5, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_3
    check-cast v0, [Ljava/lang/Object;

    move v2, v4

    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_4

    aget-object v1, v0, v2

    check-cast v1, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->setValue(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    move-object v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;->j6(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    move-result-object v2

    move v3, v4

    :goto_2
    array-length v1, v0

    if-ge v3, v1, :cond_6

    aget-object v1, v0, v3

    check-cast v1, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_5

    aput-object v2, v0, v3

    :try_start_5
    iput v5, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    move-object v0, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_6
    :try_start_6
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    aput-object v2, v1, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_7
    array-length v8, v0

    invoke-static {v0, v3, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    aput-object v1, v6, v7

    :try_start_8
    iput v5, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    move-object v0, v2

    goto :goto_0

    :cond_7
    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;->j6(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    aput-object v0, v6, v7

    :try_start_a
    iput v5, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    throw v0
.end method

.method public final j6(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->Hw:[Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    invoke-interface {v0, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    array-length v1, v0

    if-ge v2, v1, :cond_2

    aget-object v1, v0, v2

    check-cast v1, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract j6(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end method
