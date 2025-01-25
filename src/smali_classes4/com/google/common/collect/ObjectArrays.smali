.class public final Lcom/google/common/collect/ObjectArrays;
.super Ljava/lang/Object;
.source "ObjectArrays.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    .line 224
    if-eqz p0, :cond_3

    .line 227
    return-object p0

    .line 225
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static varargs checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2

    .line 209
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static checkElementsNotNull([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 4

    .line 214
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    .line 215
    aget-object v1, p0, v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ObjectArrays;->checkElementNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    :cond_b
    return-object p0
.end method

.method public static concat(Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p0  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 86
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 87
    aput-object p0, v0, v3

    .line 88
    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-object v0
.end method

.method public static concat([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 101
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 102
    array-length v1, p0

    aput-object p1, v0, v1

    .line 103
    return-object v0
.end method

.method public static concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    .line 71
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/google/common/collect/ObjectArrays;->newArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 72
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object v0
.end method

.method static copyAsObjectArray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 6

    const/4 v2, 0x0

    .line 182
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 183
    if-nez p2, :cond_c

    .line 184
    new-array v0, v2, [Ljava/lang/Object;

    .line 188
    :goto_b
    return-object v0

    .line 186
    :cond_c
    new-array v0, p2, [Ljava/lang/Object;

    .line 187
    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b
.end method

.method private static fillArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    .line 194
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 195
    aput-object v2, p1, v0

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 197
    :cond_14
    return-object p1
.end method

.method public static newArray(Ljava/lang/Class;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)[TT;"
        }
    .end annotation

    .line 49
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Platform;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static swap([Ljava/lang/Object;II)V
    .registers 5

    .line 202
    aget-object v0, p0, p1

    .line 203
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 204
    aput-object v0, p0, p2

    .line 205
    return-void
.end method

.method static toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 174
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/common/collect/ObjectArrays;->fillArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<*>;[TT;)[TT;"
        }
    .end annotation

    .line 128
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 129
    array-length v1, p1

    if-ge v1, v0, :cond_b

    .line 130
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 132
    :cond_b
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->fillArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 133
    array-length v1, p1

    if-le v1, v0, :cond_14

    .line 134
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 136
    :cond_14
    return-object p1
.end method

.method static toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "II[TT;)[TT;"
        }
    .end annotation

    .line 151
    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 152
    array-length v0, p3

    if-ge v0, p2, :cond_12

    .line 153
    invoke-static {p3, p2}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    .line 157
    :cond_d
    :goto_d
    const/4 v0, 0x0

    invoke-static {p0, p1, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    return-object p3

    .line 154
    :cond_12
    array-length v0, p3

    if-le v0, p2, :cond_d

    .line 155
    const/4 v0, 0x0

    aput-object v0, p3, p2

    goto :goto_d
.end method
