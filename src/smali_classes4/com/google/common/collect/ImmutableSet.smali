.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/ImmutableCollection;
.source "ImmutableSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final CUTOFF:I = 0x2ccccccc

.field private static final DESIRED_LOAD_FACTOR:D = 0.7

.field static final MAX_TABLE_SIZE:I = 0x40000000


# instance fields
.field private transient asList:Lcom/google/common/collect/ImmutableList;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 311
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)Z
    .registers 3

    .line 48
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSet;->shouldTrim(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 3

    .line 48
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/ImmutableSet$Builder;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .line 384
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    return-object v0
.end method

.method public static builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableSet$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .line 401
    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 402
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>(I)V

    return-object v0
.end method

.method static chooseTableSize(I)I
    .registers 9

    const/high16 v1, 0x40000000  # 2.0f

    .line 211
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 213
    const/4 v0, 0x1

    const v3, 0x2ccccccc

    if-ge v2, v3, :cond_27

    .line 215
    add-int/lit8 v0, v2, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 216
    :goto_15
    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v6, 0x3fe6666666666666L  # 0.7

    mul-double/2addr v4, v6

    int-to-double v6, v2

    cmpg-double v1, v4, v6

    if-gez v1, :cond_2f

    .line 217
    shl-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 223
    :cond_27
    if-ge v2, v1, :cond_30

    :goto_29
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v1

    .line 224
    :cond_2f
    return v0

    .line 223
    :cond_30
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private static varargs construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 143
    if-eqz p0, :cond_6e

    if-eq p0, v12, :cond_67

    .line 153
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v7

    .line 154
    new-array v3, v7, [Ljava/lang/Object;

    .line 155
    add-int/lit8 v4, v7, -0x1

    move v2, v1

    move v6, v1

    move v5, v1

    .line 156
    :goto_11
    if-ge v6, p0, :cond_3b

    .line 159
    aget-object v0, p1, v6

    invoke-static {v0, v6}, Lcom/google/common/collect/ObjectArrays;->checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 160
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 161
    invoke-static {v9}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v0

    .line 162
    :goto_21
    and-int v10, v0, v4

    .line 163
    aget-object v11, v3, v10

    .line 164
    if-nez v11, :cond_32

    .line 166
    aput-object v8, p1, v5

    .line 167
    aput-object v8, v3, v10

    .line 168
    add-int/2addr v2, v9

    .line 169
    add-int/lit8 v5, v5, 0x1

    .line 171
    :cond_2e
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_11

    .line 170
    :cond_32
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 175
    :cond_3b
    const/4 v0, 0x0

    invoke-static {p1, v5, p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 176
    if-ne v5, v12, :cond_49

    .line 179
    aget-object v1, p1, v1

    .line 180
    new-instance v0, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;I)V

    .line 187
    :goto_48
    return-object v0

    .line 181
    :cond_49
    invoke-static {v5}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    div-int/lit8 v1, v7, 0x2

    if-ge v0, v1, :cond_56

    .line 183
    invoke-static {v5, p1}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_48

    .line 185
    :cond_56
    array-length v0, p1

    .line 186
    invoke-static {v5, v0}, Lcom/google/common/collect/ImmutableSet;->shouldTrim(II)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {p1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 187
    :goto_61
    new-instance v0, Lcom/google/common/collect/RegularImmutableSet;

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_48

    .line 148
    :cond_67
    aget-object v0, p1, v1

    .line 149
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_48

    .line 145
    :cond_6e
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_48

    :cond_73
    move-object v1, p1

    goto :goto_61
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .line 269
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/Collection;

    .line 270
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 269
    :goto_a
    return-object v0

    .line 271
    :cond_b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_a
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .line 245
    instance-of v0, p0, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_12

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_12

    move-object v0, p0

    .line 247
    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 248
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_12

    .line 253
    :goto_11
    return-object v0

    .line 252
    :cond_12
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 253
    array-length v1, v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_11
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .line 282
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    .line 283
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 289
    :goto_a
    return-object v0

    .line 285
    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 286
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 287
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_a

    .line 289
    :cond_1a
    new-instance v1, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_a
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .line 301
    array-length v0, p0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    .line 307
    array-length v1, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_11
    return-object v0

    .line 305
    :cond_12
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_11

    .line 303
    :cond_1a
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_11
.end method

.method public static of()Lcom/google/common/collect/ImmutableSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/google/common/collect/RegularImmutableSet;->EMPTY:Lcom/google/common/collect/RegularImmutableSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/google/common/collect/SingletonImmutableSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableSet;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    const/4 v2, 0x2

    .line 73
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    const/4 v2, 0x3

    .line 82
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    const/4 v2, 0x4

    .line 91
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    const/4 v2, 0x5

    .line 100
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    array-length v0, p6

    const v3, 0x7ffffff9

    if-gt v0, v3, :cond_2e

    move v0, v1

    :goto_9
    const-string v3, "the total number of elements must fit in an int"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 117
    array-length v0, p6

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 119
    aput-object p0, v0, v2

    .line 120
    aput-object p1, v0, v1

    .line 121
    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 122
    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 123
    const/4 v1, 0x4

    aput-object p4, v0, v1

    .line 124
    const/4 v1, 0x5

    aput-object p5, v0, v1

    .line 125
    const/4 v1, 0x6

    array-length v3, p6

    invoke-static {p6, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length v1, v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableSet;->construct(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    :cond_2e
    move v0, v2

    .line 114
    goto :goto_9
.end method

.method private static shouldTrim(II)Z
    .registers 4

    .line 192
    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    if-ge p0, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet;->asList:Lcom/google/common/collect/ImmutableList;

    .line 346
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->createAsList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet;->asList:Lcom/google/common/collect/ImmutableList;

    :cond_a
    return-object v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 320
    if-ne p1, p0, :cond_4

    .line 321
    const/4 v0, 0x1

    .line 328
    :goto_3
    return v0

    .line 322
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_23

    .line 323
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 324
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isHashCodeFast()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 325
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 326
    const/4 v0, 0x0

    goto :goto_3

    .line 328
    :cond_23
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .line 333
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .registers 2

    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public abstract iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .line 376
    new-instance v0, Lcom/google/common/collect/ImmutableSet$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSet$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
