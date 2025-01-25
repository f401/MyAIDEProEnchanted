.class public final Lcom/s1243808733/android/dx/cf/code/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# instance fields
.field private final locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

.field private final stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

.field private final subroutines:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 87
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;-><init>(I)V

    new-instance p1, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    invoke-direct {p1, p2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;-><init>(I)V

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)V

    return-void
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)V
    .registers 4

    .line 48
    sget-object v0, Lcom/s1243808733/android/dx/util/IntList;->EMPTY:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0, p1, p2, v0}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    return-void
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_19

    if-eqz p2, :cond_11

    .line 69
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/util/IntList;->throwIfMutable()V

    .line 71
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    .line 72
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    .line 73
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    return-void

    .line 66
    :cond_11
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "stack == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "locals == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static adjustLocalsForSubroutines(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/util/IntList;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;
    .registers 3

    .line 275
    instance-of v0, p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    if-nez v0, :cond_5

    return-object p0

    .line 280
    :cond_5
    check-cast p0, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    .line 282
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result p1

    if-nez p1, :cond_11

    .line 290
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object p0

    :cond_11
    return-object p0
.end method

.method private mergeSubroutineLists(Lcom/s1243808733/android/dx/util/IntList;)Lcom/s1243808733/android/dx/util/IntList;
    .registers 8

    .line 243
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 244
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    return-object p1

    .line 247
    :cond_b
    new-instance v0, Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/IntList;-><init>()V

    .line 249
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    .line 250
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_31

    if-ge v3, v2, :cond_31

    .line 252
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_31

    .line 253
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 256
    :cond_31
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    return-object v0
.end method


# virtual methods
.method public annotate(Lcom/s1243808733/android/dex/util/ExceptionWithContext;)V
    .registers 3

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

    .line 160
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_19

    .line 163
    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    .line 164
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    invoke-virtual {v4, v2, v3}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->set(ILcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    .line 165
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method public makeExceptionHandlerStartFrame(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/cf/code/Frame;
    .registers 5

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
    new-instance p1, Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p1, v1, v0, v2}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    return-object p1
.end method

.method public makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 3

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
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/s1243808733/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    .line 385
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/IntList;->makeImmutable(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    .line 386
    invoke-virtual {v2, p0, p1, p2}, Lcom/s1243808733/android/dx/cf/code/Frame;->mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/Frame;II)Lcom/s1243808733/android/dx/cf/code/Frame;

    move-result-object p1

    return-object p1
.end method

.method public mergeWith(Lcom/s1243808733/android/dx/cf/code/Frame;)Lcom/s1243808733/android/dx/cf/code/Frame;
    .registers 5

    .line 217
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
    iget-object p1, p1, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->mergeSubroutineLists(Lcom/s1243808733/android/dx/util/IntList;)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object p1

    .line 221
    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->adjustLocalsForSubroutines(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/util/IntList;)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v2

    if-ne v0, v2, :cond_33

    .line 225
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    if-ne v1, v2, :cond_33

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    if-ne v2, p1, :cond_33

    return-object p0

    .line 230
    :cond_33
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-direct {v2, v0, v1, p1}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    return-object v2
.end method

.method public mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/Frame;II)Lcom/s1243808733/android/dx/cf/code/Frame;
    .registers 11

    .line 317
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1, p3}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->mergeWithSubroutineCaller(Lcom/s1243808733/android/dx/cf/code/LocalsArray;I)Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    move-result-object p3

    .line 319
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->merge(Lcom/s1243808733/android/dx/cf/code/ExecutionStack;)Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v0

    .line 321
    iget-object p1, p1, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->mutableCopy()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object p1

    .line 322
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/util/IntList;->add(I)V

    .line 323
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V

    .line 325
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object p2

    if-ne p3, p2, :cond_39

    .line 326
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p2

    if-ne v0, p2, :cond_39

    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    .line 327
    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_39

    return-object p0

    .line 333
    :cond_39
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/util/IntList;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 334
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    goto :goto_7c

    .line 343
    :cond_44
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result p2

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    if-le p2, v1, :cond_56

    .line 344
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_58

    .line 348
    :cond_56
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    .line 351
    :goto_58
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    .line 352
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_62
    if-ltz v3, :cond_7c

    .line 355
    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v4

    .line 356
    sub-int v5, v1, v2

    add-int/2addr v5, v3

    invoke-virtual {p1, v5}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_74

    add-int/lit8 v3, v3, -0x1

    goto :goto_62

    .line 358
    :cond_74
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Incompatible merged subroutines"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_7c
    :goto_7c
    new-instance p2, Lcom/s1243808733/android/dx/cf/code/Frame;

    invoke-direct {p2, p3, v0, p1}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    return-object p2
.end method

.method public setImmutable()V
    .registers 2

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

    .line 181
    const-string v0, "returning from invalid subroutine"

    .line 183
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->locals:Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    instance-of v2, v1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    .line 184
    check-cast v1, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;

    invoke-virtual {v1, p2}, Lcom/s1243808733/android/dx/cf/code/LocalsArraySet;->subArrayForLabel(I)Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object p2

    goto :goto_11

    :cond_10
    move-object p2, v3

    .line 189
    :goto_11
    :try_start_11
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->subroutines:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->mutableCopy()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->pop()I

    move-result v2

    if-ne v2, p1, :cond_2b

    .line 194
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->setImmutable()V
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_20} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_20} :catch_31

    if-nez p2, :cond_23

    goto :goto_2a

    .line 202
    :cond_23
    new-instance v3, Lcom/s1243808733/android/dx/cf/code/Frame;

    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/Frame;->stack:Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    invoke-direct {v3, p2, p1, v1}, Lcom/s1243808733/android/dx/cf/code/Frame;-><init>(Lcom/s1243808733/android/dx/cf/code/LocalsArray;Lcom/s1243808733/android/dx/cf/code/ExecutionStack;Lcom/s1243808733/android/dx/util/IntList;)V

    :goto_2a
    return-object v3

    .line 192
    :cond_2b
    :try_start_2b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_31
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2b .. :try_end_31} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_31} :catch_31

    .line 198
    :catch_31
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "can\'t return from non-subroutine"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 196
    :catch_3a
    move-exception p1

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
