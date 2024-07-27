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
            "Ljava/util/ArrayList",
            "<",
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
    .registers 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prototype == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 93
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 94
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 95
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->clearArgs()V

    return-void
.end method

.method public static throwLocalMismatch(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/type/TypeBearer;",
            "Lcom/s1243808733/android/dx/rop/type/TypeBearer;",
            ")V"
        }
    .end annotation

    .line 587
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "local variable type mismatch: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "attempt to set or access a value of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->toHuman()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " using a local variable of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ". This is symptomatic of .class transformation tools "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "that ignore local variable information."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final addResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/type/TypeBearer;",
            ")V"
        }
    .end annotation

    .line 486
    if-nez p1, :cond_0

    .line 487
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    aput-object p1, v0, v1

    .line 491
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    return-void
.end method

.method protected final arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 4

    .line 312
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    if-lt p1, v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= argCount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final argCount()I
    .registers 2

    .line 286
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    return v0
.end method

.method protected final argWidth()I
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 298
    :goto_0
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    if-lt v0, v1, :cond_0

    .line 302
    return v2

    .line 299
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v1

    .line 298
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method public final auxCstArg(Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 245
    if-nez p1, :cond_0

    .line 246
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxCst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-void
.end method

.method public final auxInitValues(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/rop/cst/Constant;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxInitValues:Ljava/util/ArrayList;

    return-void
.end method

.method public final auxIntArg(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 239
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxInt:I

    return-void
.end method

.method public final auxSwitchArg(Lcom/s1243808733/android/dx/cf/code/SwitchList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/SwitchList;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 261
    if-nez p1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cases == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxCases:Lcom/s1243808733/android/dx/cf/code/SwitchList;

    return-void
.end method

.method public final auxTargetArg(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 255
    iput p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxTarget:I

    return-void
.end method

.method public final auxType(Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxType:Lcom/s1243808733/android/dx/rop/type/Type;

    return-void
.end method

.method public final clearArgs()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    iput v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    move-object v0, v1

    .line 108
    check-cast v0, Lcom/s1243808733/android/dx/rop/type/Type;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxType:Lcom/s1243808733/android/dx/rop/type/Type;

    .line 109
    iput v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxInt:I

    move-object v0, v1

    .line 110
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxCst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 111
    iput v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxTarget:I

    move-object v0, v1

    .line 112
    check-cast v0, Lcom/s1243808733/android/dx/cf/code/SwitchList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxCases:Lcom/s1243808733/android/dx/cf/code/SwitchList;

    move-object v0, v1

    .line 113
    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->auxInitValues:Ljava/util/ArrayList;

    .line 114
    iput v3, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localIndex:I

    .line 115
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localInfo:Z

    .line 116
    check-cast v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 117
    iput v3, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    return-void
.end method

.method protected final clearResult()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
            "Ljava/util/ArrayList",
            "<",
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
    .registers 7

    const/4 v0, 0x0

    .line 411
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-nez v1, :cond_0

    .line 412
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 451
    :goto_0
    return-object v0

    .line 415
    :cond_0
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 416
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "local target with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-nez v0, :cond_1

    const-string v0, "no"

    :goto_1
    new-instance v3, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " results"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v0, "multiple"

    goto :goto_1

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 421
    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    .line 422
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    .line 424
    if-ne v2, v3, :cond_4

    .line 430
    if-eqz p1, :cond_3

    .line 431
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    goto :goto_0

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_0

    .line 437
    :cond_4
    invoke-static {v3, v2}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 439
    invoke-static {v2, v3}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->throwLocalMismatch(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    .line 440
    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_0

    .line 443
    :cond_5
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v3, v0, :cond_6

    .line 448
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withType(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    .line 451
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    goto :goto_0
.end method

.method public getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->prototype:Lcom/s1243808733/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public final localArg(Lcom/s1243808733/android/dx/cf/code/Frame;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->clearArgs()V

    .line 219
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->get(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 220
    const/4 v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    .line 221
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localIndex:I

    return-void
.end method

.method public final localInfo(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 227
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localInfo:Z

    return-void
.end method

.method public final localTarget(ILcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/code/LocalItem;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/rop/code/LocalItem;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 277
    invoke-static {p1, p2, p3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/code/LocalItem;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-void
.end method

.method public final popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 123
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 125
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->clearArgs()V

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    array-length v0, v0

    if-le p2, v0, :cond_0

    .line 129
    add-int/lit8 v0, p2, 0xa

    new-array v0, v0, [Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    .line 132
    :cond_0
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-gez v0, :cond_1

    .line 136
    iput p2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->argCount:I

    return-void

    .line 133
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->pop()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 132
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Prototype;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "Lcom/s1243808733/android/dx/rop/type/Prototype;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 142
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v2

    .line 146
    invoke-virtual {p0, p1, v2}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 150
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    new-instance v3, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "at stack depth "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v7, ", expected type "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v2, v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public final popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v5, 0x0

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 165
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, v5

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v5

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 179
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, v5

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v5

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, v6

    invoke-static {p3, v0}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v6

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;Lcom/s1243808733/android/dx/rop/type/Type;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            "Lcom/s1243808733/android/dx/rop/type/Type;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 195
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->popArgs(Lcom/s1243808733/android/dx/cf/code/Frame;I)V

    .line 199
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, v5

    invoke-static {p2, v0}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v5

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, v6

    invoke-static {p3, v0}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v6

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, v7

    invoke-static {p4, v0}, Lcom/s1243808733/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeBearer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p4}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->args:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v7

    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method protected final result(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;
    .registers 4

    .line 531
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-lt p1, v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= resultCount"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 539
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final resultCount()I
    .registers 3

    .line 501
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-gez v0, :cond_0

    .line 502
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v1, "results never set"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    return v0
.end method

.method protected final resultWidth()I
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 517
    :goto_0
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-lt v0, v1, :cond_0

    .line 521
    return v2

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v1

    .line 517
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v2

    move v2, v1

    goto :goto_0
.end method

.method protected final setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/type/TypeBearer;",
            ")V"
        }
    .end annotation

    .line 470
    if-nez p1, :cond_0

    .line 471
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 475
    const/4 v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    return-void
.end method

.method protected final storeResults(Lcom/s1243808733/android/dx/cf/code/Frame;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 552
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-gez v1, :cond_0

    .line 553
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v1, "results never set"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_0
    iget v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-nez v1, :cond_2

    .line 569
    :cond_1
    :goto_0
    return-void

    .line 561
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localTarget:Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    if-eqz v1, :cond_3

    .line 566
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getLocals()Lcom/s1243808733/android/dx/cf/code/LocalsArray;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->getLocalTarget(Z)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/code/LocalsArray;->set(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V

    goto :goto_0

    .line 568
    :cond_3
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/Frame;->getStack()Lcom/s1243808733/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 569
    :goto_1
    iget v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->resultCount:I

    if-ge v0, v2, :cond_1

    .line 570
    iget-boolean v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->localInfo:Z

    if-eqz v2, :cond_4

    .line 571
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->setLocal()V

    .line 573
    :cond_4
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BaseMachine;->results:[Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/code/ExecutionStack;->push(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
