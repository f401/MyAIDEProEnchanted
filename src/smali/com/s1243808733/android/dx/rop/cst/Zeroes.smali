.class public final Lcom/s1243808733/android/dx/rop/cst/Zeroes;
.super Ljava/lang/Object;
.source "Zeroes.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zeroFor(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 3

    .line 39
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no zero for type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :pswitch_1f  #0x9
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    return-object p0

    .line 47
    :pswitch_22  #0x8
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstShort;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstShort;

    return-object p0

    .line 46
    :pswitch_25  #0x7
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstLong;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstLong;

    return-object p0

    .line 45
    :pswitch_28  #0x6
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    return-object p0

    .line 44
    :pswitch_2b  #0x5
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    return-object p0

    .line 43
    :pswitch_2e  #0x4
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    return-object p0

    .line 42
    :pswitch_31  #0x3
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstChar;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstChar;

    return-object p0

    .line 41
    :pswitch_34  #0x2
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstByte;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstByte;

    return-object p0

    .line 40
    :pswitch_37  #0x1
    sget-object p0, Lcom/s1243808733/android/dx/rop/cst/CstBoolean;->VALUE_FALSE:Lcom/s1243808733/android/dx/rop/cst/CstBoolean;

    return-object p0

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_37  #00000001
        :pswitch_34  #00000002
        :pswitch_31  #00000003
        :pswitch_2e  #00000004
        :pswitch_2b  #00000005
        :pswitch_28  #00000006
        :pswitch_25  #00000007
        :pswitch_22  #00000008
        :pswitch_1f  #00000009
    .end packed-switch
.end method
