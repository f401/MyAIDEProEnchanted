.class public abstract Lcom/s1243808733/android/dx/cf/code/BaseMachine;
.super Ljava/lang/Object;
.source "BaseMachine.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/code/Machine;


# instance fields
.field private argCount:I

.field private args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

.field private auxCases:Lcom/s1243808733/android/dx/cf/code/SwitchList;

.field private auxCst:Lcom/s1243808733/android/dx/rop/cst/Constant;

.field private auxInitValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation
.end field

.field private auxInt:I

.field private auxTarget:I

.field private auxType:Lcom/s1243808733/android/dx/rop/type/Type;

.field private localIndex:I

.field private localInfo:Z

.field private localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

.field private final prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

.field private resultCount:I

.field private results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_16

    .line 92
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 93
    const/16 p1, 0xa

    new-array p1, p1, [Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 94
    const/4 p1, 0x6

    new-array p1, p1, [Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 95
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->clearArgs()V

    return-void

    .line 89
    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "prototype == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static throwLocalMismatch(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 4

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local variable type mismatch: attempt to set or access a value of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " using a local variable of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". This is symptomatic of .class transformation tools that ignore local variable information."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final addResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 4

    if-eqz p1, :cond_d

    .line 490
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    aput-object p1, v0, v1

    .line 491
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    return-void

    .line 487
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 3

    .line 312
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    if-ge p1, v0, :cond_12

    .line 317
    :try_start_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object p1, v0, p1
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    .line 320
    :catch_9
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 313
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n >= argCount"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final argCount()I
    .registers 2

    .line 286
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    return v0
.end method

.method protected final argWidth()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 298
    :goto_2
    iget v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    if-ge v0, v2, :cond_16

    .line 299
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    return v1
.end method

.method public final auxCstArg(Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 249
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxCst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-void

    .line 246
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cst == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final auxInitValues(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxInitValues:Ljava/util/ArrayList;

    return-void
.end method

.method public final auxIntArg(I)V
    .registers 2

    .line 239
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxInt:I

    return-void
.end method

.method public final auxSwitchArg(Lcom/s1243808733/android/dx/cf/code/SwitchList;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 265
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxCases:Lcom/s1243808733/android/dx/cf/code/SwitchList;

    return-void

    .line 262
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cases == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final auxTargetArg(I)V
    .registers 2

    .line 255
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxTarget:I

    return-void
.end method

.method public final auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxType:Lcom/s1243808733/android/dx/rop/type/Type;

    return-void
.end method

.method public final clearArgs()V
    .registers 4

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 109
    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxInt:I

    .line 110
    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxCst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 111
    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxTarget:I

    .line 112
    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxCases:Lcom/s1243808733/android/dx/cf/code/SwitchList;

    .line 113
    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxInitValues:Ljava/util/ArrayList;

    .line 114
    const/4 v2, -0x1

    iput v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localIndex:I

    .line 115
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localInfo:Z

    .line 116
    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 117
    iput v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    return-void
.end method

.method protected final clearResult()V
    .registers 2

    .line 458
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    return-void
.end method

.method protected final getAuxCases()Lcom/s1243808733/android/dx/cf/code/SwitchList;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxCases:Lcom/s1243808733/android/dx/cf/code/SwitchList;

    return-object v0
.end method

.method protected final getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxCst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method protected final getAuxInt()I
    .registers 2

    .line 339
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxInt:I

    return v0
.end method

.method protected final getAuxTarget()I
    .registers 2

    .line 357
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxTarget:I

    return v0
.end method

.method protected final getAuxType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxType:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method protected final getInitValues()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxInitValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final getLocalIndex()I
    .registers 2

    .line 384
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localIndex:I

    return v0
.end method

.method protected final getLocalInfo()Z
    .registers 2

    .line 393
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localInfo:Z

    return v0
.end method

.method protected final getLocalTarget(Z)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 6

    .line 411
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 415
    :cond_6
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2d

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "local target with "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-nez v0, :cond_19

    const-string v0, "no"

    goto :goto_1b

    :cond_19
    const-string v0, "multiple"

    :goto_1b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " results"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_2d
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 421
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 422
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    if-ne v2, v3, :cond_4a

    if-eqz p1, :cond_47

    .line 431
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    return-object p1

    .line 433
    :cond_47
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object p1

    .line 437
    :cond_4a
    invoke-static {v3, v2}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 439
    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->throwLocalMismatch(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    return-object v1

    .line 443
    :cond_54
    sget-object p1, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v3, p1, :cond_60

    .line 448
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 451
    :cond_60
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object p1
.end method

.method public getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public final localArg(Lcom/s1243808733/android/dx/cf/code/Frame;I)V
    .registers 5

    .line 218
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->clearArgs()V

    .line 219
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 220
    const/4 p1, 0x1

    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    .line 221
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localIndex:I

    return-void
.end method

.method public final localInfo(Z)V
    .registers 2

    .line 227
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localInfo:Z

    return-void
.end method

.method public final localTarget(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V
    .registers 4

    .line 277
    invoke-static {p1, p2, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-void
.end method

.method public final popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V
    .registers 6

    .line 123
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p1

    .line 125
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->clearArgs()V

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v0, v0

    if-le p2, v0, :cond_12

    .line 129
    add-int/lit8 v0, p2, 0xa

    new-array v0, v0, [Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    :cond_12
    add-int/lit8 v0, p2, -0x1

    :goto_14
    if-ltz v0, :cond_21

    .line 133
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->pop()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 136
    :cond_21
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    return-void
.end method

.method public popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Prototype;)V
    .registers 6

    .line 142
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object p2

    .line 143
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    .line 146
    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    const/4 p1, 0x0

    :goto_c
    if-ge p1, v0, :cond_5a

    .line 151
    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v1

    if-eqz v1, :cond_1f

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 152
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "at stack depth "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected type "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object p1, p2, p1

    .line 154
    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    return-void
.end method

.method public final popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 5

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 165
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    if-eqz p1, :cond_10

    return-void

    .line 166
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "expected type "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object p2, p2, v0

    .line 167
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 7

    .line 175
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 179
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    const-string v1, " but found "

    const-string v2, "expected type "

    if-eqz p1, :cond_47

    .line 184
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p3, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return-void

    .line 185
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object p2, p3, p2

    .line 186
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 180
    :cond_47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object p2, p2, v0

    .line 181
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 8

    .line 195
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 199
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p2, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    const-string v1, " but found "

    const-string v2, "expected type "

    if-eqz p1, :cond_7a

    .line 204
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p3, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 209
    iget-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    invoke-static {p4, p1}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result p1

    if-eqz p1, :cond_2a

    return-void

    .line 210
    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object p2, p3, p2

    .line 211
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 205
    :cond_52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object p2, p3, p2

    .line 206
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 200
    :cond_7a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object p2, p2, v0

    .line 201
    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected final result(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 3

    .line 531
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-ge p1, v0, :cond_12

    .line 536
    :try_start_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object p1, v0, p1
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p1

    .line 539
    :catch_9
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 532
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "n >= resultCount"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final resultCount()I
    .registers 3

    .line 501
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-ltz v0, :cond_5

    return v0

    .line 502
    :cond_5
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v1, "results never set"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final resultWidth()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 517
    :goto_2
    iget v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-ge v0, v2, :cond_16

    .line 518
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_16
    return v1
.end method

.method protected final setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 4

    if-eqz p1, :cond_b

    .line 474
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 475
    const/4 p1, 0x1

    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    return-void

    .line 471
    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final storeResults(Lcom/s1243808733/android/dx/cf/code/Frame;)V
    .registers 4

    .line 552
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-ltz v0, :cond_32

    if-nez v0, :cond_7

    return-void

    .line 561
    :cond_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 566
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->getLocalTarget(Z)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->set(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_31

    .line 568
    :cond_18
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object p1

    .line 569
    :goto_1c
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-ge v1, v0, :cond_31

    .line 570
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localInfo:Z

    if-eqz v0, :cond_27

    .line 571
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->setLocal()V

    .line 573
    :cond_27
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->push(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_31
    :goto_31
    return-void

    .line 553
    :cond_32
    new-instance p1, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v0, "results never set"

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    goto :goto_3b

    :goto_3a
    throw p1

    :goto_3b
    goto :goto_3a
.end method
