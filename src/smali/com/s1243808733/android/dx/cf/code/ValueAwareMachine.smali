.class public Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;
.super Lcom/s1243808733/android/dx/cf/code/BaseMachine;
.source "ValueAwareMachine.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/code/BaseMachine;-><init>(Lcom/s1243808733/android/dx/rop/type/Prototype;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/s1243808733/android/dx/cf/code/Frame;II)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p3, :cond_7

    const/16 v0, 0x14

    if-eq p3, v0, :cond_6

    const/16 v0, 0x15

    if-eq p3, v0, :cond_5

    const/16 v0, 0xab

    if-eq p3, v0, :cond_7

    const/16 v0, 0xac

    if-eq p3, v0, :cond_7

    sparse-switch p3, :sswitch_data_0

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    packed-switch p3, :pswitch_data_2

    packed-switch p3, :pswitch_data_3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldn\'t happen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :pswitch_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    .line 135
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxInt()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    .line 137
    and-int/lit8 v1, v0, 0xf

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->addResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 143
    :pswitch_1
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxTarget()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    .line 208
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->storeResults(Lcom/s1243808733/android/dx/cf/code/Frame;)V

    return-void

    .line 199
    :pswitch_2
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    .line 124
    :pswitch_3
    :sswitch_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    .line 194
    :pswitch_4
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    .line 182
    :pswitch_5
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/rop/type/Type;->asUninitialized(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    .line 173
    :pswitch_6
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 174
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v0, v1, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    .line 160
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

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

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_1

    .line 151
    :pswitch_8
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne v0, v1, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto/16 :goto_1

    .line 155
    :cond_4
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_1

    .line 189
    :pswitch_9
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_1

    .line 86
    :cond_5
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_1

    .line 81
    :cond_6
    :sswitch_2
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_1

    .line 76
    :cond_7
    :pswitch_a
    :sswitch_3
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto/16 :goto_1

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x12 -> :sswitch_2
        0x2e -> :sswitch_0
        0x36 -> :sswitch_1
        0x4f -> :sswitch_3
        0x64 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6c -> :sswitch_0
        0x70 -> :sswitch_0
        0x74 -> :sswitch_0
        0x78 -> :sswitch_0
        0x7a -> :sswitch_0
        0x7c -> :sswitch_0
        0x7e -> :sswitch_0
        0x80 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x84
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb1
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_9
        :pswitch_2
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc5
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method
