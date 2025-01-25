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
    .registers 6

    if-eqz p3, :cond_108

    const/16 v0, 0x14

    if-eq p3, v0, :cond_fe

    const/16 v0, 0x15

    const/4 v1, 0x0

    if-eq p3, v0, :cond_f6

    const/16 v0, 0xab

    if-eq p3, v0, :cond_108

    const/16 v0, 0xac

    if-eq p3, v0, :cond_108

    sparse-switch p3, :sswitch_data_110

    packed-switch p3, :pswitch_data_152

    packed-switch p3, :pswitch_data_16a

    packed-switch p3, :pswitch_data_1ba

    packed-switch p3, :pswitch_data_1e4

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "shouldn\'t happen: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {p3}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 134
    :pswitch_3a  #0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    .line 135
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxInt()I

    move-result p2

    :goto_41
    if-eqz p2, :cond_10b

    .line 137
    and-int/lit8 p3, p2, 0xf

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->addResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    shr-int/lit8 p2, p2, 0x4

    goto :goto_41

    .line 143
    :pswitch_51  #0xa8
    new-instance p2, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxTarget()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/s1243808733/android/dx/cf/code/ReturnAddress;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_10b

    .line 199
    :pswitch_5f  #0xc1
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_10b

    .line 124
    :pswitch_66  #0x60, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8a, 0x8b, 0x8c, 0x8d, 0x8e, 0x8f, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0xbe
    :sswitch_66
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_10b

    .line 194
    :pswitch_6f  #0xbd
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    .line 195
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->getArrayType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_10b

    .line 182
    :pswitch_82  #0xbb
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p3

    check-cast p3, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p3

    .line 183
    invoke-virtual {p3, p2}, Lcom/s1243808733/android/dx/rop/type/Type;->asUninitialized(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto/16 :goto_10b

    .line 173
    :pswitch_95  #0xba
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstCallSiteRef;->getReturnType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    .line 174
    sget-object p3, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p2, p3, :cond_a7

    .line 175
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto :goto_10b

    .line 177
    :cond_a7
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_10b

    .line 160
    :pswitch_ab  #0xb7
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p2

    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    .line 161
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->isUninitialized()Z

    move-result p3

    if-eqz p3, :cond_bc

    .line 162
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/cf/code/Frame;->makeInitialized(Lcom/s1243808733/android/dx/rop/type/Type;)V

    .line 164
    :cond_bc
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    .line 165
    sget-object p3, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p2, p3, :cond_ce

    .line 166
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto :goto_10b

    .line 168
    :cond_ce
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_10b

    .line 151
    :pswitch_d2  #0xb2, 0xb4, 0xb6, 0xb8, 0xb9
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-interface {p2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    .line 152
    sget-object p3, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    if-ne p2, p3, :cond_e4

    .line 153
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto :goto_10b

    .line 155
    :cond_e4
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_10b

    .line 189
    :pswitch_e8  #0xbc, 0xc0, 0xc5
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->getClassType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    .line 190
    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_10b

    .line 86
    :cond_f6
    :sswitch_f6
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_10b

    .line 81
    :cond_fe
    :sswitch_fe
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    invoke-virtual {p0, p2}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/s1243808733/android/dx/rop/type/TypeBearer;)V

    goto :goto_10b

    .line 76
    :cond_108
    :pswitch_108  #0x57, 0x58, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa9, 0xb1, 0xb3, 0xb5, 0xbf, 0xc2, 0xc3, 0xc6, 0xc7
    :sswitch_108
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    .line 208
    :cond_10b
    :goto_10b
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/cf/code/ValueAwareMachine;->storeResults(Lcom/s1243808733/android/dx/cf/code/Frame;)V

    return-void

    nop

    :sswitch_data_110
    .sparse-switch
        0x0 -> :sswitch_108
        0x12 -> :sswitch_fe
        0x2e -> :sswitch_66
        0x36 -> :sswitch_f6
        0x4f -> :sswitch_108
        0x64 -> :sswitch_66
        0x68 -> :sswitch_66
        0x6c -> :sswitch_66
        0x70 -> :sswitch_66
        0x74 -> :sswitch_66
        0x78 -> :sswitch_66
        0x7a -> :sswitch_66
        0x7c -> :sswitch_66
        0x7e -> :sswitch_66
        0x80 -> :sswitch_66
        0x82 -> :sswitch_66
    .end sparse-switch

    :pswitch_data_152
    .packed-switch 0x57
        :pswitch_108  #00000057
        :pswitch_108  #00000058
        :pswitch_3a  #00000059
        :pswitch_3a  #0000005a
        :pswitch_3a  #0000005b
        :pswitch_3a  #0000005c
        :pswitch_3a  #0000005d
        :pswitch_3a  #0000005e
        :pswitch_3a  #0000005f
        :pswitch_66  #00000060
    .end packed-switch

    :pswitch_data_16a
    .packed-switch 0x84
        :pswitch_66  #00000084
        :pswitch_66  #00000085
        :pswitch_66  #00000086
        :pswitch_66  #00000087
        :pswitch_66  #00000088
        :pswitch_66  #00000089
        :pswitch_66  #0000008a
        :pswitch_66  #0000008b
        :pswitch_66  #0000008c
        :pswitch_66  #0000008d
        :pswitch_66  #0000008e
        :pswitch_66  #0000008f
        :pswitch_66  #00000090
        :pswitch_66  #00000091
        :pswitch_66  #00000092
        :pswitch_66  #00000093
        :pswitch_66  #00000094
        :pswitch_66  #00000095
        :pswitch_66  #00000096
        :pswitch_66  #00000097
        :pswitch_66  #00000098
        :pswitch_108  #00000099
        :pswitch_108  #0000009a
        :pswitch_108  #0000009b
        :pswitch_108  #0000009c
        :pswitch_108  #0000009d
        :pswitch_108  #0000009e
        :pswitch_108  #0000009f
        :pswitch_108  #000000a0
        :pswitch_108  #000000a1
        :pswitch_108  #000000a2
        :pswitch_108  #000000a3
        :pswitch_108  #000000a4
        :pswitch_108  #000000a5
        :pswitch_108  #000000a6
        :pswitch_108  #000000a7
        :pswitch_51  #000000a8
        :pswitch_108  #000000a9
    .end packed-switch

    :pswitch_data_1ba
    .packed-switch 0xb1
        :pswitch_108  #000000b1
        :pswitch_d2  #000000b2
        :pswitch_108  #000000b3
        :pswitch_d2  #000000b4
        :pswitch_108  #000000b5
        :pswitch_d2  #000000b6
        :pswitch_ab  #000000b7
        :pswitch_d2  #000000b8
        :pswitch_d2  #000000b9
        :pswitch_95  #000000ba
        :pswitch_82  #000000bb
        :pswitch_e8  #000000bc
        :pswitch_6f  #000000bd
        :pswitch_66  #000000be
        :pswitch_108  #000000bf
        :pswitch_e8  #000000c0
        :pswitch_5f  #000000c1
        :pswitch_108  #000000c2
        :pswitch_108  #000000c3
    .end packed-switch

    :pswitch_data_1e4
    .packed-switch 0xc5
        :pswitch_e8  #000000c5
        :pswitch_108  #000000c6
        :pswitch_108  #000000c7
    .end packed-switch
.end method
