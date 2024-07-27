.class public Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;
.super Lcom/s1243808733/android/dx/cf/code/BaseMachine;
.source "ValueAwareMachine.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/Frame;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    .line 44
    packed-switch p3, :pswitch_data_0

    .line 203
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "shouldn\'t happen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    .line 208
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->storeResults(Lcom/s1243808733/android/dx/cf/code/Frame;)V

    return-void

    .line 81
    :pswitch_2
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_0

    .line 86
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_0

    .line 124
    :pswitch_4
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_0

    .line 134
    :pswitch_5
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    .line 135
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxInt()I

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    .line 136
    and-int/lit8 v1, v0, 0xf

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->addResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    .line 135
    shr-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 143
    :pswitch_6
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxTarget()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_0

    .line 151
    :pswitch_7
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v0, v1, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_0

    .line 160
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isUninitialized()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/cf/code/Frame;->makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v0, v1, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_0

    .line 173
    :pswitch_9
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 174
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v0, v1, :cond_4

    .line 175
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto/16 :goto_0

    .line 177
    :cond_4
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_0

    .line 182
    :pswitch_a
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/rop/type/Type;->asUninitialized(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_0

    .line 189
    :pswitch_b
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_0

    .line 194
    :pswitch_c
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_0

    .line 199
    :pswitch_d
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_1
        :pswitch_b
        :pswitch_d
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
