.class public final Lcom/s1243808733/android/dx/cf/code/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# instance fields
.field private final locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

.field private final stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

.field private final subroutines:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>(II)V
    .registers 5

    .line 87
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;-><init>(I)V

    new-instance v1, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    invoke-direct {v1, p2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)V

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)V
    .registers 4

    .line 48
    sget-object v0, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V
    .registers 6

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locals == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p2, :cond_1

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stack == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/util/IntList;->throwIfMutable()V

    .line 71
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    .line 72
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    .line 73
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    return-void
.end method

.method private static adjustLocalsForSubroutines(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/util/IntList;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .registers 3

    .line 275
    instance-of v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    if-nez v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-object p0

    .line 280
    :cond_1
    check-cast p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    .line 282
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object p0

    goto :goto_0
.end method

.method private mergeSubroutineLists(Lcom/s1243808733/android/dx/util/IntList;)Lcom/s1243808733/android/dx/util/IntList;
    .registers 8

    .line 243
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    .line 258
    :goto_0
    return-object v0

    .line 247
    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/IntList;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    .line 250
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v3

    .line 251
    const/4 v1, 0x0

    .line 252
    :goto_1
    if-ge v1, v2, :cond_1

    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 256
    :cond_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/util/ExceptionWithContext;",
            ")V"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    .line 413
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V

    return-void
.end method

.method public copy()Lcom/s1243808733/android/dx/cf/code/Frame;
    .registers 5

    .line 98
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/Frame;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->copy()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->copy()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    return-object v0
.end method

.method public getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    return-object v0
.end method

.method public getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    return-object v0
.end method

.method public getSubroutines()Lcom/s1243808733/android/dx/util/IntList;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public initializeWithParameters(Lcom/s1243808733/android/dx/rop/type/StdTypeList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/type/StdTypeList;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v3

    move v0, v1

    move v2, v1

    .line 162
    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    .line 164
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    invoke-virtual {v4, v2, v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    .line 165
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v1

    .line 162
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public makeExceptionHandlerStartFrame(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/cf/code/Frame;
    .registers 6

    .line 397
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->copy()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->clear()V

    .line 400
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->push(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    .line 402
    new-instance v1, Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v1, v2, v0, v3}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    return-object v1
.end method

.method public makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 118
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V

    return-void
.end method

.method public makeNewSubroutineStartFrame(II)Lcom/s1243808733/android/dx/cf/code/Frame;
    .registers 7

    .line 382
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->mutableCopy()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    .line 383
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 384
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/Frame;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    .line 386
    invoke-virtual {v0, p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/Frame;->mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/Frame;II)Lcom/s1243808733/android/dx/cf/code/Frame;

    move-result-object v0

    return-object v0
.end method

.method public mergeWith(Lcom/s1243808733/android/dx/cf/code/Frame;)Lcom/s1243808733/android/dx/cf/code/Frame;
    .registers 6

    .line 213
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->merge(Lcom/s1243808733/android/dx/cf/code/LocalsArray;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->merge(Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 219
    iget-object v2, p1, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/cf/code/Frame;->mergeSubroutineLists(Lcom/s1243808733/android/dx/util/IntList;)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 221
    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/cf/code/Frame;->adjustLocalsForSubroutines(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/util/IntList;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v3

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    if-ne v3, v2, :cond_0

    .line 230
    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-direct {p0, v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    goto :goto_0
.end method

.method public mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/Frame;II)Lcom/s1243808733/android/dx/cf/code/Frame;
    .registers 13

    .line 314
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/LocalsArray;I)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    move-result-object v3

    .line 319
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->merge(Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v4

    .line 321
    iget-object v0, p1, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->mutableCopy()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 322
    invoke-virtual {v2, p2}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 323
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    .line 325
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    if-ne v3, v0, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    :goto_0
    return-object p0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    .line 365
    :cond_1
    new-instance p0, Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-direct {p0, v3, v4, v0}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 344
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    move-object v1, v2

    .line 351
    :goto_1
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v5

    .line 352
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v6

    .line 354
    add-int/lit8 v2, v6, -0x1

    :goto_2
    if-ltz v2, :cond_1

    .line 355
    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v7

    sub-int v8, v5, v6

    add-int/2addr v8, v2

    invoke-virtual {v0, v8}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_4

    .line 358
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Incompatible merged subroutines"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    move-object v0, v2

    goto :goto_1

    .line 354
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method public setImmutable()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->setImmutable()V

    .line 106
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->setImmutable()V

    return-void
.end method

.method public subFrameForLabel(II)Lcom/s1243808733/android/dx/cf/code/Frame;
    .registers 7

    const/4 v1, 0x0

    .line 181
    move-object v0, v1

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    .line 183
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    instance-of v2, v2, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    if-eqz v2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->subArrayForLabel(I)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 187
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->mutableCopy()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->pop()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "returning from invalid subroutine"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :catch_0
    move-exception v0

    .line 196
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "returning from invalid subroutine"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    if-nez v0, :cond_2

    check-cast v1, Lcom/s1243808733/android/dx/cf/code/Frame;

    :goto_0
    return-object v1

    .line 196
    :catch_1
    move-exception v0

    .line 198
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "can\'t return from non-subroutine"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_2
    new-instance v1, Lcom/s1243808733/android/dx/cf/code/Frame;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    invoke-direct {v1, v0, v3, v2}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    goto :goto_0
.end method
