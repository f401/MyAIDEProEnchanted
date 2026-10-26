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
        "Ljava/util/Map",
        "<TK;TV;>;"
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
            "Ljava/util/LinkedList",
            "<",
            "Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field protected final comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field protected currentPrime:I

.field protected initialBucketCapacity:I

.field protected n:I

.field protected threshold:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 50
    const/4 v0, 0x0

    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator",
            "<-TK;>;)V"
        }
    .end annotation

    .line 54
    const/16 v0, 0x10

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;-><init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V

    return-void
.end method

.method public constructor <init>(Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator",
            "<-TK;>;II)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    .line 44
    const/16 v0, 0xc

    iput v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->threshold:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->currentPrime:I

    .line 47
    const/16 v0, 0x8

    iput v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->initialBucketCapacity:I

    if-nez p1, :cond_0

    .line 59
    sget-object p1, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    .line 62
    :cond_0
    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    .line 63
    invoke-static {p3}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->createEntryListArray(I)[Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    .line 64
    iput p3, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->initialBucketCapacity:I

    return-void
.end method

.method private static createEntryListArray(I)[Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .line 69
    new-array v0, p0, [Ljava/util/LinkedList;

    check-cast v0, [Ljava/util/LinkedList;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 257
    new-instance v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;

    invoke-direct {v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;-><init>()V

    .line 258
    const-string v1, "hi"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v1, "mom"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "foo"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "ach"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "cbba"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "d"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "edf"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v1, "mom"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v1, "hi"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 268
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->toTableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

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
    .locals 1

    .line 152
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected expand()V
    .locals 7

    .line 181
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    .line 182
    iget v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->currentPrime:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->currentPrime:I

    .line 183
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    .line 184
    invoke-static {v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->createEntryListArray(I)[Ljava/util/LinkedList;

    move-result-object v1

    .line 185
    iput-object v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 186
    iput v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->threshold:I

    .line 189
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->size()I

    move-result v3

    .line 190
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v2, v1

    if-nez v0, :cond_1

    .line 194
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    if-eqz v0, :cond_0

    .line 194
    iget-object v6, v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v0, v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v6, v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 197
    :cond_2
    iput v3, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    .line 89
    :goto_0
    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->getBucket(Ljava/lang/Object;)I

    move-result v0

    .line 85
    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    aget-object v0, v2, v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    .line 88
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    iget-object v4, v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    iget-object v0, v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected getBucket(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    invoke-virtual {v0, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 75
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 162
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 163
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    if-nez v1, :cond_1

    move v1, v0

    .line 167
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    if-eqz v0, :cond_0

    .line 167
    iget-object v6, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    iget-object v0, v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v6, v0}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->hashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1, v0}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(II)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 171
    :cond_2
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->size()I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 207
    iget v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    .line 114
    :goto_0
    return-object v0

    .line 98
    :cond_0
    iget v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->threshold:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->expand()V

    .line 99
    :cond_1
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->getBucket(Ljava/lang/Object;)I

    move-result v1

    .line 100
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    aget-object v0, v3, v1

    if-nez v0, :cond_4

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    aput-object v0, v3, v1

    move-object v1, v0

    .line 104
    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    .line 105
    iget-object v4, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->comparator:Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;

    iget-object v5, v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v4, v5, p1}, Lorg/antlr/v4/runtime/misc/AbstractEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    iget-object v1, v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->value:Ljava/lang/Object;

    .line 107
    iput-object p2, v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->value:Ljava/lang/Object;

    .line 108
    iget v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    move-object v0, v1

    goto :goto_0

    .line 113
    :cond_3
    new-instance v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    invoke-direct {v0, p1, p2}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 114
    iget v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    move-object v0, v2

    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 202
    iget v0, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    .line 218
    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "{}"

    .line 233
    :goto_0
    return-object v0

    .line 220
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v5, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    array-length v6, v5

    const/4 v0, 0x1

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v1, v5, v3

    if-nez v1, :cond_2

    move v1, v0

    .line 229
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    goto :goto_1

    .line 225
    :cond_2
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_3

    move v1, v2

    .line 229
    :goto_3
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 228
    :cond_3
    const-string v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 232
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toTableString()Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    iget-object v5, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    array-length v6, v5

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v0, v5, v3

    if-nez v0, :cond_0

    .line 240
    const-string v0, "null\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 243
    :cond_0
    const/16 v1, 0x5b

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    if-eqz v1, :cond_1

    move v1, v2

    .line 247
    :goto_3
    if-nez v0, :cond_2

    .line 248
    const-string v0, "_"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 247
    :cond_1
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 249
    :cond_2
    invoke-virtual {v0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 251
    :cond_3
    const-string v0, "]\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 253
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap;->buckets:[Ljava/util/LinkedList;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    if-nez v0, :cond_1

    .line 139
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;

    .line 139
    iget-object v0, v0, Lorg/antlr/v4/runtime/misc/FlexibleHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method
