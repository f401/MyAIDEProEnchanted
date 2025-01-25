.class public final Lcom/blankj/utilcode/util/ObjectUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator",
            "<-TT;>;)I"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    move-object p1, p0

    goto :goto_2
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static varargs hashCodes([Ljava/lang/Object;)I
    .registers 2

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static isEmpty(Landroid/util/LongSparseArray;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEmpty(Landroid/util/SparseArray;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEmpty(Landroid/util/SparseBooleanArray;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEmpty(Landroid/util/SparseIntArray;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEmpty(Landroid/util/SparseLongArray;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEmpty(Landroidx/collection/LongSparseArray;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEmpty(Landroidx/collection/SimpleArrayMap;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x1

    if-nez p0, :cond_5

    move v0, v1

    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_36

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    goto :goto_4

    :cond_36
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_45

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    move v0, v1

    goto :goto_4

    :cond_45
    instance-of v0, p0, Landroidx/collection/SimpleArrayMap;

    if-eqz v0, :cond_54

    move-object v0, p0

    check-cast v0, Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v1

    goto :goto_4

    :cond_54
    instance-of v0, p0, Landroid/util/SparseArray;

    if-eqz v0, :cond_63

    move-object v0, p0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_63

    move v0, v1

    goto :goto_4

    :cond_63
    instance-of v0, p0, Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_72

    move-object v0, p0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_72

    move v0, v1

    goto :goto_4

    :cond_72
    instance-of v0, p0, Landroid/util/SparseIntArray;

    if-eqz v0, :cond_81

    move-object v0, p0

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_81

    move v0, v1

    goto :goto_4

    :cond_81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_97

    instance-of v0, p0, Landroid/util/SparseLongArray;

    if-eqz v0, :cond_97

    move-object v0, p0

    check-cast v0, Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_97

    move v0, v1

    goto/16 :goto_4

    :cond_97
    instance-of v0, p0, Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_a7

    move-object v0, p0

    check-cast v0, Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a7

    move v0, v1

    goto/16 :goto_4

    :cond_a7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_bc

    instance-of v0, p0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_bc

    check-cast p0, Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_bc

    move v0, v1

    goto/16 :goto_4

    :cond_bc
    const/4 v0, 0x0

    goto/16 :goto_4
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .registers 2

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isNotEmpty(Landroid/util/LongSparseArray;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroid/util/LongSparseArray;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Landroid/util/SparseArray;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroid/util/SparseArray;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Landroid/util/SparseBooleanArray;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroid/util/SparseBooleanArray;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Landroid/util/SparseIntArray;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroid/util/SparseIntArray;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Landroid/util/SparseLongArray;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroid/util/SparseLongArray;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Landroidx/collection/LongSparseArray;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroidx/collection/LongSparseArray;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Landroidx/collection/SimpleArrayMap;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Landroidx/collection/SimpleArrayMap;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/util/Collection;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/util/Map;)Z
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ObjectUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const/4 v0, 0x0

    throw v0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs requireNonNulls([Ljava/lang/Object;)V
    .registers 5

    const/4 v3, 0x0

    if-eqz p0, :cond_f

    array-length v1, p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_10

    aget-object v2, p0, v0

    if-eqz v2, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_e
    throw v3

    :cond_f
    throw v3

    :cond_10
    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1
.end method
