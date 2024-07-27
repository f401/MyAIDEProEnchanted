.class public Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
.super Lcom/s1243808733/android/dx/cf/code/LocalsArray;
.source "OneLocalsArray.java"


# instance fields
.field private final locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 44
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;-><init>(Z)V

    .line 45
    new-array v0, p1, [Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static throwSimException(ILjava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 7

    .line 255
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "local "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/util/ExceptionWithContext;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 61
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v1, v1, v0

    .line 63
    if-nez v1, :cond_1

    const-string v1, "<invalid>"

    .line 64
    :goto_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "locals["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge copy()Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .registers 2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->copy()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x0

    .line 51
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;-><init>(I)V

    .line 53
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return-object v0
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, p1

    .line 164
    if-nez v0, :cond_0

    .line 165
    const-string v0, "invalid"

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwSimException(ILjava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 168
    :cond_0
    return-object v0
.end method

.method public getCategory1(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isUninitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-string v0, "uninitialized instance"

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwSimException(ILjava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 185
    :cond_0
    :goto_0
    return-object v0

    .line 181
    :cond_1
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-string v0, "category-2"

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwSimException(ILjava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    goto :goto_0
.end method

.method public getCategory2(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 191
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const-string v0, "category-1"

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwSimException(ILjava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 197
    :cond_0
    return-object v0
.end method

.method public getMaxLocals()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v0, v0

    return v0
.end method

.method public getOrNull(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
    .registers 1
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 244
    return-object p0
.end method

.method public invalidate(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwIfImmutable()V

    .line 150
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aput-object v0, v1, p1

    return-void
.end method

.method public makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v1, v0

    .line 87
    if-nez v1, :cond_1

    .line 96
    :cond_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwIfImmutable()V

    .line 94
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getInitializedType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 96
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 97
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v3, v3, v0

    if-ne v3, p1, :cond_2

    .line 98
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aput-object v2, v3, v0

    .line 96
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 203
    instance-of v0, p1, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    if-eqz v0, :cond_0

    .line 204
    check-cast p1, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    goto :goto_0
.end method

.method public merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
    .registers 4

    .line 222
    :try_start_0
    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeLocals(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 224
    const-string v1, "underlay locals:"

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 226
    const-string v1, "overlay locals:"

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 228
    throw v0
.end method

.method public mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/LocalsArray;I)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 237
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;-><init>(I)V

    .line 238
    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/LocalsArray;I)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    move-result-object v0

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/type/TypeBearer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwIfImmutable()V

    .line 115
    :try_start_0
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 121
    if-gez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "idx < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :catch_0
    move-exception v0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    add-int/lit8 v4, p1, 0x1

    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aput-object v0, v3, v4

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aput-object v2, v0, p1

    .line 132
    if-eqz p1, :cond_2

    .line 133
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    add-int/lit8 v2, p1, -0x1

    aget-object v0, v0, v2

    .line 134
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    add-int/lit8 v2, p1, -0x1

    check-cast v1, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aput-object v1, v0, v2

    :cond_2
    return-void
.end method

.method public set(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 143
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v1, v1, v0

    .line 75
    if-nez v1, :cond_1

    const-string v1, "<invalid>"

    .line 76
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "locals["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
