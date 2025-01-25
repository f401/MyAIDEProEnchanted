.class public final Lcom/s1243808733/android/dx/cf/code/ExecutionStack;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "ExecutionStack.java"


# instance fields
.field private final local:[Z

.field private final stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

.field private stackPtr:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 54
    :goto_6
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 55
    new-array v1, p1, [Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 56
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->local:[Z

    .line 57
    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    return-void
.end method

.method private static stackElementString(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    .line 328
    const-string p0, "<invalid>"

    return-object p0

    .line 331
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static throwSimException(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stack: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V
    .registers 7

    .line 82
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_5
    if-gt v1, v0, :cond_36

    if-ne v1, v0, :cond_c

    .line 85
    const-string v2, "top0"

    goto :goto_12

    :cond_c
    sub-int v2, v0, v1

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stack["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v1

    .line 88
    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackElementString(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_36
    return-void
.end method

.method public change(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 6

    .line 275
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 278
    :try_start_3
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p2
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_4a

    .line 284
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 285
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object p1, p1, v0

    if-eqz p1, :cond_24

    .line 288
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v1

    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v2

    if-eq v1, v2, :cond_45

    .line 289
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "incompatible substitution: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackElementString(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {p2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackElementString(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwSimException(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 294
    :cond_45
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aput-object p2, p1, v0

    return-void

    .line 281
    :catch_4a
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 5

    .line 137
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 139
    :goto_5
    iget v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-ge v1, v2, :cond_15

    .line 140
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 141
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->local:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 144
    :cond_15
    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    return-void
.end method

.method public copy()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;
    .registers 6

    .line 66
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;-><init>(I)V

    .line 68
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->local:[Z

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->local:[Z

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    iput v1, v0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    return-object v0
.end method

.method public getMaxStack()I
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v0, v0

    return v0
.end method

.method public makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 6

    .line 99
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-nez v0, :cond_5

    return-void

    .line 104
    :cond_5
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 106
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getInitializedType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    :goto_d
    iget v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-ge v1, v2, :cond_1c

    .line 109
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_19

    .line 110
    aput-object v0, v2, v1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method

.method public merge(Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)Lcom/s1243808733/android/dx/cf/code/ExecutionStack;
    .registers 4

    .line 308
    :try_start_0
    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeStack(Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p1
    :try_end_4
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    .line 310
    const-string v1, "underlay stack:"

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 312
    const-string v1, "overlay stack:"

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 314
    throw v0
.end method

.method public peek(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 4

    if-ltz p1, :cond_15

    .line 205
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-lt p1, v0, :cond_d

    .line 206
    const-string p1, "underflow"

    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwSimException(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    return-object p1

    .line 209
    :cond_d
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, v1, v0

    return-object p1

    .line 202
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public peekLocal(I)Z
    .registers 4

    if-ltz p1, :cond_16

    .line 225
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-ge p1, v0, :cond_e

    .line 229
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->local:[Z

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-boolean p1, v1, v0

    return p1

    .line 226
    :cond_e
    new-instance p1, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v0, "stack: underflow"

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 241
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    return-object p1
.end method

.method public pop()Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 7

    .line 251
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget v3, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    aput-object v5, v2, v4

    .line 256
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->local:[Z

    aput-boolean v0, v2, v4

    .line 257
    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    return-object v1
.end method

.method public push(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 7

    .line 155
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 160
    :try_start_3
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    .line 161
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_f} :catch_31

    .line 167
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    add-int v3, v1, v0

    array-length v4, v2

    if-le v3, v4, :cond_1e

    .line 168
    const-string p1, "overflow"

    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwSimException(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    return-void

    :cond_1e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_28

    .line 173
    const/4 v0, 0x0

    aput-object v0, v2, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    .line 177
    :cond_28
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    aput-object p1, v2, v0

    .line 178
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    return-void

    .line 164
    :catch_31
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLocal()V
    .registers 4

    .line 185
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 187
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->local:[Z

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public size()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    return v0
.end method
