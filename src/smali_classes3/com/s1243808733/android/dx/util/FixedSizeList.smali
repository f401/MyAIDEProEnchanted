.class public Lcom/s1243808733/android/dx/util/FixedSizeList;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "FixedSizeList.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/ToHuman;


# instance fields
.field private arr:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 35
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 38
    :try_start_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIndex(I)Ljava/lang/Object;
    .registers 4

    .line 232
    if-gez p1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    .line 251
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    array-length v2, v0

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v2, 0xa

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_2

    .line 270
    if-eqz p3, :cond_1

    .line 271
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 259
    :cond_2
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 260
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_3
    if-eqz p4, :cond_4

    .line 264
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/util/ToHuman;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/util/ToHuman;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 266
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 48
    if-ne p0, p1, :cond_0

    .line 50
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/FixedSizeList;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_2
    check-cast p1, Lcom/s1243808733/android/dx/util/FixedSizeList;

    .line 59
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    iget-object v1, p1, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected final get0(I)Ljava/lang/Object;
    .registers 5

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 180
    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "unset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :catch_0
    move-exception v0

    .line 187
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;->throwIndex(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final getOrNull0(I)Ljava/lang/Object;
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final set0(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/FixedSizeList;->throwIfImmutable()V

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 220
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;->throwIndex(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public shrinkToFit()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    array-length v4, v0

    move v1, v2

    move v0, v2

    .line 137
    :goto_0
    if-lt v1, v4, :cond_1

    .line 143
    if-ne v4, v0, :cond_3

    .line 162
    :cond_0
    :goto_1
    return-void

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 137
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/FixedSizeList;->throwIfImmutable()V

    .line 149
    new-array v5, v0, [Ljava/lang/Object;

    move v1, v2

    move v3, v2

    .line 152
    :goto_2
    if-lt v3, v4, :cond_4

    .line 160
    iput-object v5, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    .line 161
    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/FixedSizeList;->setImmutable()V

    goto :goto_1

    .line 153
    :cond_4
    iget-object v2, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v2, v2, v3

    .line 154
    if-eqz v2, :cond_5

    .line 155
    aput-object v2, v5, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 152
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2
.end method

.method public final size()I
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/s1243808733/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 87
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/FixedSizeList;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "}"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/s1243808733/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/s1243808733/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/FixedSizeList;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    const-string v2, "}"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/s1243808733/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/s1243808733/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
