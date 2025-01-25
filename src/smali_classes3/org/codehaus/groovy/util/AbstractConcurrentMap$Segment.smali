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
            "Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->Hw:[Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    if-eqz v0, :cond_2d

    instance-of v1, v0, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    if-eqz v1, :cond_17

    check-cast v0, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    invoke-interface {v0, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    return-object v0

    :cond_17
    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1a
    array-length v2, v0

    if-ge v1, v2, :cond_2d

    aget-object v2, v0, v1

    check-cast v2, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    if-eqz v2, :cond_2a

    invoke-interface {v2, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_2a

    return-object v2

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2d
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;->FH(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    move-result-object p1

    return-object p1
.end method

.method public final FH(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->j6()V

    :try_start_3
    iget v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->FH:I

    if-le v0, v2, :cond_e

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->FH()V

    :cond_e
    iget-object v0, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->Hw:[Ljava/lang/Object;

    array-length v2, v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_92

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v2, p2

    aget-object v4, v0, v2

    if-eqz v4, :cond_86

    :try_start_18
    instance-of v5, v4, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    const/4 v6, 0x0

    if-eqz v5, :cond_3f

    check-cast v4, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    invoke-interface {v4, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->setValue(Ljava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_92

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    return-object v4

    :cond_2c
    :try_start_2c
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;->j6(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v6

    aput-object v4, p2, v3

    aput-object p2, v0, v2

    iput v1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_92

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    return-object p1

    :cond_3f
    :try_start_3f
    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    :goto_42
    array-length v7, v4

    if-ge v5, v7, :cond_5b

    aget-object v7, v4, v5

    check-cast v7, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    if-eqz v7, :cond_58

    invoke-interface {v7, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-interface {v7, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->setValue(Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_3f .. :try_end_54} :catchall_92

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    return-object v7

    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    :cond_5b
    :try_start_5b
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;->j6(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    move-result-object p1

    const/4 p2, 0x0

    :goto_60
    array-length p3, v4

    if-ge p2, p3, :cond_74

    aget-object p3, v4, p2

    check-cast p3, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_92

    if-nez p3, :cond_71

    aput-object p1, v4, p2

    :try_start_6b
    iput v1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_92

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    return-object p1

    :cond_71
    add-int/lit8 p2, p2, 0x1

    goto :goto_60

    :cond_74
    :try_start_74
    array-length p2, v4

    add-int/2addr p2, v3

    new-array p2, p2, [Ljava/lang/Object;
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_92

    aput-object p1, p2, v6

    :try_start_7a
    array-length p3, v4

    invoke-static {v4, v6, p2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_92

    aput-object p2, v0, v2

    :try_start_80
    iput v1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I
    :try_end_82
    .catchall {:try_start_80 .. :try_end_82} :catchall_92

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    return-object p1

    :cond_86
    :try_start_86
    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;->j6(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    move-result-object p1
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_92

    aput-object p1, v0, v2

    :try_start_8c
    iput v1, p0, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;->DW:I
    :try_end_8e
    .catchall {:try_start_8c .. :try_end_8e} :catchall_92

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    return-object p1

    :catchall_92
    move-exception p1

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    goto :goto_98

    :goto_97
    throw p1

    :goto_98
    goto :goto_97
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

    if-eqz v0, :cond_35

    instance-of v1, v0, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    if-eqz v1, :cond_1b

    check-cast v0, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    invoke-interface {v0, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-interface {v0}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1b
    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1e
    array-length v2, v0

    if-ge v1, v2, :cond_35

    aget-object v2, v0, v1

    check-cast v2, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;

    if-eqz v2, :cond_32

    invoke-interface {v2, p1, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;->j6(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_35
    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract j6(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end method
