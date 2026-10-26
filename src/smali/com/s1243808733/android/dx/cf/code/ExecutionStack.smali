.class public final Lcom/s1243808733/android/dx/cf/code/ExecutionStack;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "ExecutionStack.java"


# instance fields
.field private final local:[Z

.field private final stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

.field private stackPtr:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 54
    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 55
    new-array v0, p1, [Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 56
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->local:[Z

    .line 57
    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    return-void

    :cond_0
    move v0, v1

    .line 4294967295
    goto :goto_0
.end method

.method private static stackElementString(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 328
    const-string v0, "<invalid>"

    .line 331
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static throwSimException(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stack: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V
    .locals 5

    .line 82
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt v1, v2, :cond_1

    if-ne v1, v2, :cond_0

    .line 85
    const-string v0, "top0"

    .line 87
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stack["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, v1

    .line 88
    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackElementString(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 85
    :cond_0
    sub-int v0, v2, v1

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_1
    return-void
.end method

.method public change(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .locals 5

    .line 275
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 278
    :try_start_0
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 284
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 285
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 288
    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v3

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 289
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "incompatible substitution: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackElementString(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackElementString(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwSimException(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aput-object v0, v2, v1

    return-void

    .line 281
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 4

    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    move v0, v1

    .line 139
    :goto_0
    iget v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-ge v0, v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 141
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->local:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    return-void
.end method

.method public copy()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;
    .locals 5

    const/4 v4, 0x0

    .line 66
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;-><init>(I)V

    .line 68
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget-object v2, v0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v3, v1

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
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v0, v0

    return v0
.end method

.method public makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .locals 4

    .line 99
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-nez v0, :cond_1

    .line 110
    :cond_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 106
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->getInitializedType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    const/4 v0, 0x0

    .line 108
    :goto_0
    iget v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-ge v0, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v3, v2, v0

    if-ne v3, p1, :cond_2

    .line 110
    aput-object v1, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public merge(Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)Lcom/s1243808733/android/dx/cf/code/ExecutionStack;
    .locals 2

    .line 308
    :try_start_0
    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->mergeStack(Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)Lcom/s1243808733/android/dx/cf/code/ExecutionStack;
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
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
    .locals 2

    if-ltz p1, :cond_1

    .line 205
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-lt p1, v0, :cond_0

    .line 206
    const-string v0, "underflow"

    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwSimException(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    goto :goto_0

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peekLocal(I)Z
    .locals 2

    if-ltz p1, :cond_1

    .line 225
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-ge p1, v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->local:[Z

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-boolean v0, v1, v0

    return v0

    .line 226
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v1, "stack: underflow"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peekType(I)Lcom/s1243808733/android/dx/rop/type/Type;
    .locals 1

    .line 241
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public pop()Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .locals 6

    const/4 v5, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 253
    invoke-virtual {p0, v5}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 256
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->local:[Z

    aput-boolean v5, v1, v3

    .line 257
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v1

    sub-int v1, v2, v1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    return-object v0
.end method

.method public push(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .locals 6

    .line 155
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 160
    :try_start_0
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getFrameType()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    iget v2, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stack:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    add-int v4, v2, v1

    array-length v5, v3

    if-le v4, v5, :cond_0

    .line 168
    const-string v0, "overflow"

    invoke-static {v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->throwSimException(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 178
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 173
    const/4 v1, 0x0

    aput-object v1, v3, v2

    .line 174
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    .line 177
    :cond_1
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    aput-object v0, v3, v1

    .line 178
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLocal()V
    .locals 3

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
    .locals 1

    .line 130
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->stackPtr:I

    return v0
.end method
