.class public Lorg/antlr/v4/runtime/misc/FlexibleHashMap;
.super Ljava/lang/Object;
.source "FlexibleHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final INITAL_BUCKET_CAPACITY:I = 0x8

.field public static final INITAL_CAPACITY:I = 0x10

.field public static final LOAD_FACTOR:D = 0.75


# instance fields
.field protected buckets:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field protected final comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field protected currentPrime:I

.field protected initialBucketCapacity:I

.field protected n:I

.field protected threshold:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 50
    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 54
    const/16 v0, 0x10

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator<",
            "-TK;>;II)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 p2, 0x0

    iput p2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    .line 44
    const/16 p2, 0xc

    iput p2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->threshold:I

    .line 46
    const/4 p2, 0x1

    iput p2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->currentPrime:I

    .line 47
    const/16 p2, 0x8

    iput p2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->initialBucketCapacity:I

    if-nez p1, :cond_15

    .line 59
    sget-object p1, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    .line 62
    :cond_15
    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    .line 63
    invoke-static {p3}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->createEntryListArray(I)[Ljava/util/LinkedList;

    move-result-object p1

    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    .line 64
    iput p3, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->initialBucketCapacity:I

    return-void
.end method

.method private static createEntryListArray(I)[Ljava/util/LinkedList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/LinkedList<",
            "Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 69
    new-array p0, p0, [Ljava/util/LinkedList;

    check-cast p0, [Ljava/util/LinkedList;

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5

    .line 257
    new-instance p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;

    invoke-direct {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;-><init>()V

    .line 258
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "hi"

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "mom"

    invoke-virtual {p0, v2, v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "foo"

    invoke-virtual {p0, v3, v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "ach"

    invoke-virtual {p0, v3, v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "cbba"

    invoke-virtual {p0, v3, v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "d"

    invoke-virtual {p0, v3, v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "edf"

    invoke-virtual {p0, v3, v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 268
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->toTableString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 212
    const/16 v0, 0x10

    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->createEntryListArray(I)[Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 152
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    .line 157
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 177
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected expand()V
    .registers 8

    .line 181
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    .line 182
    iget v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->currentPrime:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->currentPrime:I

    .line 183
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    .line 184
    invoke-static {v1}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->createEntryListArray(I)[Ljava/util/LinkedList;

    move-result-object v2

    .line 185
    iput-object v2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L  # 0.75

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 186
    iput v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->threshold:I

    .line 189
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->size()I

    move-result v1

    .line 190
    array-length v2, v0

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_47

    aget-object v4, v0, v3

    if-nez v4, :cond_29

    goto :goto_44

    .line 192
    :cond_29
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    if-nez v5, :cond_3c

    goto :goto_44

    .line 194
    :cond_3c
    iget-object v6, v5, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v5, v5, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v6, v5}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 197
    :cond_47
    iput v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 84
    :cond_4
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->getBucket(Ljava/lang/Object;)I

    move-result v1

    .line 85
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    aget-object v1, v2, v1

    if-nez v1, :cond_f

    return-object v0

    .line 87
    :cond_f
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    .line 88
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    iget-object v4, v2, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 89
    iget-object p1, v2, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->value:Ljava/lang/Object;

    return-object p1

    :cond_2c
    return-object v0
.end method

.method protected getBucket(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result p1

    .line 75
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method public hashCode()I
    .registers 8

    .line 162
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 163
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_32

    aget-object v4, v1, v3

    if-nez v4, :cond_f

    goto :goto_2f

    .line 165
    :cond_f
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    if-nez v5, :cond_22

    goto :goto_2f

    .line 167
    :cond_22
    iget-object v6, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    iget-object v5, v5, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v0, v5}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    goto :goto_13

    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 171
    :cond_32
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 207
    iget v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 98
    :cond_4
    iget v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    iget v2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->threshold:I

    if-le v1, v2, :cond_d

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->expand()V

    .line 99
    :cond_d
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->getBucket(Ljava/lang/Object;)I

    move-result v1

    .line 100
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    aget-object v3, v2, v1

    if-nez v3, :cond_1e

    .line 102
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    .line 104
    :cond_1e
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    .line 105
    iget-object v4, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    iget-object v5, v2, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v4, v5, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 106
    iget-object p1, v2, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->value:Ljava/lang/Object;

    .line 107
    iput-object p2, v2, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->value:Ljava/lang/Object;

    .line 108
    iget p2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    return-object p1

    .line 113
    :cond_43
    new-instance v1, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    invoke-direct {v1, p1, p2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 114
    iget p1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 125
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 120
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .registers 2

    .line 202
    iget v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .line 218
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "{}"

    return-object v0

    .line 220
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v2, :cond_44

    aget-object v6, v1, v5

    if-nez v6, :cond_1d

    goto :goto_41

    .line 225
    :cond_1d
    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_21
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    if-nez v7, :cond_30

    goto :goto_41

    :cond_30
    if-eqz v4, :cond_34

    const/4 v4, 0x0

    goto :goto_39

    .line 228
    :cond_34
    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :goto_39
    invoke-virtual {v7}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_41
    :goto_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 232
    :cond_44
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTableString()Ljava/lang/String;
    .registers 10

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_4d

    aget-object v5, v1, v4

    if-nez v5, :cond_16

    .line 240
    const-string v5, "null\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 243
    :cond_16
    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x1

    :goto_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    if-eqz v6, :cond_30

    const/4 v6, 0x0

    goto :goto_35

    .line 247
    :cond_30
    const-string v8, " "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_35
    if-nez v7, :cond_3d

    .line 248
    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 249
    :cond_3d
    invoke-virtual {v7}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 251
    :cond_45
    const-string v5, "]\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 253
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_2d

    aget-object v4, v1, v3

    if-nez v4, :cond_14

    goto :goto_2a

    .line 138
    :cond_14
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    .line 139
    iget-object v5, v5, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2a
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2d
    return-object v0
.end method
