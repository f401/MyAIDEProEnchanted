.class public Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
.super Lcom/s1243808733/android/dx/cf/code/LocalsArray;
.source "OneLocalsArray.java"


# instance fields
.field private final locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 44
    :goto_5
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;-><init>(Z)V

    .line 45
    new-array p1, p1, [Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    return-void
.end method

.method private static throwSimException(ILjava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 4

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V
    .registers 6

    const/4 v0, 0x0

    .line 61
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v2, v1

    if-ge v0, v2, :cond_31

    .line 62
    aget-object v1, v1, v0

    if-nez v1, :cond_d

    .line 63
    const-string v1, "<invalid>"

    goto :goto_11

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "locals["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_31
    return-void
.end method

.method public bridge synthetic copy()Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->copy()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
    .registers 6

    .line 51
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;-><init>(I)V

    .line 53
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, p1

    if-nez v0, :cond_d

    .line 165
    const-string v0, "invalid"

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwSimException(ILjava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v0
.end method

.method public getCategory1(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 5

    .line 174
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isUninitialized()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 178
    const-string v0, "uninitialized instance"

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwSimException(ILjava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    return-object p1

    .line 181
    :cond_15
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 182
    const-string v0, "category-2"

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwSimException(ILjava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    return-object p1

    :cond_22
    return-object v0
.end method

.method public getCategory2(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 4

    .line 191
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory1()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 194
    const-string v0, "category-1"

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwSimException(ILjava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    return-object p1

    :cond_15
    return-object v0
.end method

.method public getMaxLocals()I
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v0, v0

    return v0
.end method

.method public getOrNull(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
    .registers 1

    return-object p0
.end method

.method public invalidate(I)V
    .registers 4

    .line 149
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwIfImmutable()V

    .line 150
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method public makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 7

    .line 85
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v0, v0

    if-nez v0, :cond_6

    return-void

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwIfImmutable()V

    .line 94
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getInitializedType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1b

    .line 97
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v4, v3, v2

    if-ne v4, p1, :cond_18

    .line 98
    aput-object v1, v3, v2

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    return-void
.end method

.method public merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .registers 3

    .line 203
    instance-of v0, p1, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    if-eqz v0, :cond_b

    .line 204
    check-cast p1, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object p1

    return-object p1

    .line 207
    :cond_b
    invoke-virtual {p1, p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object p1

    return-object p1
.end method

.method public merge(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;
    .registers 4

    .line 222
    :try_start_0
    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeLocals(Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;)Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object p1
    :try_end_4
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
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

    .line 237
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;-><init>(I)V

    .line 238
    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/LocalsArray;I)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 6

    .line 112
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->throwIfImmutable()V

    .line 115
    :try_start_3
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p2
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_3d

    if-ltz p1, :cond_35

    .line 126
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    add-int/lit8 v2, p1, 0x1

    aput-object v1, v0, v2

    .line 130
    :cond_1a
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aput-object p2, v0, p1

    if-eqz p1, :cond_34

    add-int/lit8 p1, p1, -0x1

    .line 133
    aget-object p2, v0, p1

    if-eqz p2, :cond_34

    .line 134
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->isCategory2()Z

    move-result p2

    if-eqz p2, :cond_34

    .line 135
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aput-object v1, p2, p1

    :cond_34
    return-void

    .line 122
    :cond_35
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "idx < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :catch_3d
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 3

    .line 143
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 6

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 73
    :goto_6
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;->locals:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v3, v2

    if-ge v1, v3, :cond_3b

    .line 74
    aget-object v2, v2, v1

    if-nez v2, :cond_12

    .line 75
    const-string v2, "<invalid>"

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "locals["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 79
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
