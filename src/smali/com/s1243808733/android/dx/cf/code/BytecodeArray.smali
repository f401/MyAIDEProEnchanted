.class public final Lcom/s1243808733/android/dx/cf/code/BytecodeArray;
.super Ljava/lang/Object;
.source "BytecodeArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/cf/code/BytecodeArray$BaseVisitor;,
        Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;,
        Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;
    }
.end annotation


# static fields
.field public static final EMPTY_VISITOR:Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;


# instance fields
.field private final bytes:Lcom/s1243808733/android/dx/util/ByteArray;

.field private final pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$BaseVisitor;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$BaseVisitor;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->EMPTY_VISITOR:Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 67
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 68
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    return-void

    .line 64
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "pool == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bytes == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseLookupswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .registers 12

    add-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, -0x4

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_8
    if-ge v1, v0, :cond_17

    .line 876
    shl-int/lit8 v3, v8, 0x8

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v4

    or-int v8, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 879
    :cond_17
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v1

    .line 880
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x8

    .line 883
    new-instance v7, Lcom/s1243808733/android/dx/cf/code/SwitchList;

    invoke-direct {v7, v3}, Lcom/s1243808733/android/dx/cf/code/SwitchList;-><init>(I)V

    :goto_2c
    if-ge v2, v3, :cond_45

    .line 885
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v4

    .line 886
    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v5

    add-int/lit8 v0, v0, 0x8

    .line 888
    add-int/2addr v5, p1

    invoke-virtual {v7, v4, v5}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->add(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 890
    :cond_45
    add-int/2addr v1, p1

    invoke-virtual {v7, v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setDefaultTarget(I)V

    .line 891
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->removeSuperfluousDefaults()V

    .line 892
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setImmutable()V

    sub-int/2addr v0, p1

    .line 895
    const/16 v4, 0xab

    move-object v3, p2

    move v5, p1

    move v6, v0

    invoke-interface/range {v3 .. v8}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V

    return v0
.end method

.method private parseNewarray(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .registers 13

    .line 909
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v0

    packed-switch v0, :pswitch_data_dc

    .line 945
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bad newarray code "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 946
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 941
    :pswitch_23  #0xb
    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_3a

    .line 937
    :pswitch_26  #0xa
    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_3a

    .line 933
    :pswitch_29  #0x9
    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_3a

    .line 929
    :pswitch_2c  #0x8
    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_3a

    .line 921
    :pswitch_2f  #0x7
    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_3a

    .line 925
    :pswitch_32  #0x6
    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_3a

    .line 917
    :pswitch_35  #0x5
    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_3a

    .line 913
    :pswitch_38  #0x4
    sget-object v1, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 951
    :goto_3a
    invoke-interface {p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->getPreviousOffset()I

    move-result v2

    .line 952
    new-instance v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;

    invoke-direct {v3, p0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;-><init>(Lcom/s1243808733/android/dx/cf/code/BytecodeArray;)V

    const/4 v4, 0x0

    if-ltz v2, :cond_57

    .line 960
    invoke-virtual {p0, v2, v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 961
    iget-object v5, v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    instance-of v5, v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v5, :cond_57

    iget v5, v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v5, v2

    if-ne v5, p1, :cond_57

    .line 963
    iget v2, v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->value:I

    goto :goto_58

    :cond_57
    const/4 v2, 0x0

    :goto_58
    add-int/lit8 v5, p1, 0x2

    .line 982
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_cc

    .line 989
    :goto_61
    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v7

    const/16 v9, 0x59

    if-eq v7, v9, :cond_6f

    goto/16 :goto_cc

    .line 997
    :cond_6f
    invoke-virtual {p0, v8, v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 998
    iget v7, v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    if-eqz v7, :cond_cc

    iget-object v7, v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    instance-of v7, v7, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v7, :cond_cc

    iget v7, v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->value:I

    if-eq v7, v4, :cond_81

    goto :goto_cc

    .line 1004
    :cond_81
    iget v7, v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v8, v7

    .line 1010
    invoke-virtual {p0, v8, v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 1011
    iget v7, v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    if-eqz v7, :cond_cc

    iget-object v7, v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    instance-of v7, v7, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    if-nez v7, :cond_92

    goto :goto_cc

    .line 1015
    :cond_92
    iget v7, v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v8, v7

    .line 1016
    iget-object v7, v3, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v7, v8}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v7

    packed-switch v0, :pswitch_data_f0

    :goto_a3
    goto :goto_cc

    :pswitch_a4  #0xb
    const/16 v9, 0x50

    if-eq v7, v9, :cond_c7

    goto :goto_a3

    :pswitch_a9  #0xa
    const/16 v9, 0x4f

    if-eq v7, v9, :cond_c7

    goto :goto_a3

    :pswitch_ae  #0x9
    const/16 v9, 0x56

    if-eq v7, v9, :cond_c7

    goto :goto_a3

    :pswitch_b3  #0x7
    const/16 v9, 0x52

    if-eq v7, v9, :cond_c7

    goto :goto_c1

    :pswitch_b8  #0x6
    const/16 v9, 0x51

    if-eq v7, v9, :cond_c7

    goto :goto_a3

    :pswitch_bd  #0x5
    const/16 v9, 0x55

    if-eq v7, v9, :cond_c7

    :goto_c1
    goto :goto_a3

    :pswitch_c2  #0x4, 0x8
    const/16 v9, 0x54

    if-eq v7, v9, :cond_c7

    goto :goto_a3

    :cond_c7
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v8, 0x1

    goto :goto_61

    :cond_cc
    :goto_cc
    const/4 v0, 0x2

    if-lt v4, v0, :cond_d7

    if-eq v4, v2, :cond_d2

    goto :goto_d7

    :cond_d2
    sub-int/2addr v5, p1

    .line 1084
    invoke-interface {p2, p1, v5, v1, v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V

    return v5

    .line 1081
    :cond_d7
    :goto_d7
    const/4 v2, 0x0

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V

    return v0

    :pswitch_data_dc
    .packed-switch 0x4
        :pswitch_38  #00000004
        :pswitch_35  #00000005
        :pswitch_32  #00000006
        :pswitch_2f  #00000007
        :pswitch_2c  #00000008
        :pswitch_29  #00000009
        :pswitch_26  #0000000a
        :pswitch_23  #0000000b
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x4
        :pswitch_c2  #00000004
        :pswitch_bd  #00000005
        :pswitch_b8  #00000006
        :pswitch_b3  #00000007
        :pswitch_c2  #00000008
        :pswitch_ae  #00000009
        :pswitch_a9  #0000000a
        :pswitch_a4  #0000000b
    .end packed-switch
.end method

.method private parseTableswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .registers 12

    add-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, -0x4

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_8
    if-ge v1, v0, :cond_17

    .line 833
    shl-int/lit8 v3, v8, 0x8

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v4

    or-int v8, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 836
    :cond_17
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v1

    .line 837
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v3

    .line 838
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v0, 0x8

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v4

    sub-int v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, 0xc

    if-gt v3, v4, :cond_61

    .line 846
    new-instance v7, Lcom/s1243808733/android/dx/cf/code/SwitchList;

    invoke-direct {v7, v5}, Lcom/s1243808733/android/dx/cf/code/SwitchList;-><init>(I)V

    :goto_3a
    if-ge v2, v5, :cond_4d

    .line 848
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v4

    add-int/lit8 v0, v0, 0x4

    .line 850
    add-int v6, v3, v2

    add-int/2addr v4, p1

    invoke-virtual {v7, v6, v4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->add(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 852
    :cond_4d
    add-int/2addr v1, p1

    invoke-virtual {v7, v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setDefaultTarget(I)V

    .line 853
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->removeSuperfluousDefaults()V

    .line 854
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setImmutable()V

    sub-int/2addr v0, p1

    .line 857
    const/16 v4, 0xab

    move-object v3, p2

    move v5, p1

    move v6, v0

    invoke-interface/range {v3 .. v8}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V

    return v0

    .line 843
    :cond_61
    new-instance p1, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string p2, "low / high inversion"

    invoke-direct {p1, p2}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    goto :goto_6a

    :goto_69
    throw p1

    :goto_6a
    goto :goto_69
.end method

.method private parseWide(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .registers 14

    .line 1098
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v3

    .line 1099
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v8

    const/16 v0, 0x84

    if-eq v3, v0, :cond_aa

    const/16 v0, 0xa9

    const/4 v1, 0x4

    if-eq v3, v0, :cond_9e

    packed-switch v3, :pswitch_data_be

    packed-switch v3, :pswitch_data_cc

    .line 1163
    const/16 v0, 0xc4

    const/4 v1, 0x1

    invoke-interface {p2, v0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitInvalid(III)V

    return v1

    .line 1122
    :pswitch_26  #0x19
    const/16 v5, 0x15

    const/4 v7, 0x4

    sget-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v1

    .line 1117
    :pswitch_32  #0x18
    const/16 v5, 0x15

    const/4 v7, 0x4

    sget-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v1

    .line 1112
    :pswitch_3e  #0x17
    const/16 v5, 0x15

    const/4 v7, 0x4

    sget-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v1

    .line 1107
    :pswitch_4a  #0x16
    const/16 v5, 0x15

    const/4 v7, 0x4

    sget-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v1

    .line 1102
    :pswitch_56  #0x15
    const/16 v5, 0x15

    const/4 v7, 0x4

    sget-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v1

    .line 1147
    :pswitch_62  #0x3a
    const/16 v5, 0x36

    const/4 v7, 0x4

    sget-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v1

    .line 1142
    :pswitch_6e  #0x39
    const/16 v5, 0x36

    const/4 v7, 0x4

    sget-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v1

    .line 1137
    :pswitch_7a  #0x38
    const/16 v5, 0x36

    const/4 v7, 0x4

    sget-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v1

    .line 1132
    :pswitch_86  #0x37
    const/16 v5, 0x36

    const/4 v7, 0x4

    sget-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v1

    .line 1127
    :pswitch_92  #0x36
    const/16 v5, 0x36

    const/4 v7, 0x4

    sget-object v9, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v10, 0x0

    move-object v4, p2

    move v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v1

    .line 1152
    :cond_9e
    const/4 v5, 0x4

    sget-object v7, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v0, 0x0

    move-object v2, p2

    move v4, p1

    move v6, v8

    move v8, v0

    invoke-interface/range {v2 .. v8}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v1

    .line 1157
    :cond_aa
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getShort(I)I

    move-result v0

    .line 1158
    const/4 v5, 0x6

    sget-object v7, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v2, p2

    move v4, p1

    move v6, v8

    move v8, v0

    invoke-interface/range {v2 .. v8}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    const/4 p1, 0x6

    return p1

    :pswitch_data_be
    .packed-switch 0x15
        :pswitch_56  #00000015
        :pswitch_4a  #00000016
        :pswitch_3e  #00000017
        :pswitch_32  #00000018
        :pswitch_26  #00000019
    .end packed-switch

    :pswitch_data_cc
    .packed-switch 0x36
        :pswitch_92  #00000036
        :pswitch_86  #00000037
        :pswitch_7a  #00000038
        :pswitch_6e  #00000039
        :pswitch_62  #0000003a
    .end packed-switch
.end method


# virtual methods
.method public byteLength()I
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public forEach(Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_f

    .line 115
    invoke-virtual {p0, v1, p1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_f
    return-void
.end method

.method public getBytes()Lcom/s1243808733/android/dx/util/ByteArray;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    return-object v0
.end method

.method public getInstructionOffsets()[I
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    .line 128
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_18

    .line 132
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/s1243808733/android/dx/util/Bits;->set([IIZ)V

    .line 133
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_b

    :cond_18
    return-object v1
.end method

.method public parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .registers 14

    .line 218
    const-string v0, "...at bytecode offset "

    if-nez p2, :cond_8

    .line 219
    sget-object p2, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->EMPTY_VISITOR:Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;

    move-object v1, p2

    goto :goto_9

    .line 218
    :cond_8
    move-object v1, p2

    .line 223
    :goto_9
    :try_start_9
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v2

    .line 224
    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/code/ByteOps;->opInfo(I)I

    const/4 p2, 0x0

    const/4 v7, 0x5

    const/16 v3, 0xac

    const/16 v4, 0x4f

    const/16 v5, 0x2e

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    packed-switch v2, :pswitch_data_460

    .line 806
    invoke-interface {v1, v2, p1, v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitInvalid(III)V

    goto/16 :goto_430

    .line 798
    :pswitch_25  #0xc8, 0xc9
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result p2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_34

    const/16 v2, 0xa7

    goto :goto_36

    :cond_34
    const/16 v2, 0xa8

    .line 802
    :goto_36
    add-int/2addr p2, p1

    invoke-interface {v1, v2, p1, v7, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitBranch(IIII)V

    return v7

    .line 790
    :pswitch_3b  #0xc5
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result p2

    .line 791
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 792
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v3, p2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 793
    const/4 v4, 0x4

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    const/4 p1, 0x4

    return p1

    .line 787
    :pswitch_58  #0xc4
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseWide(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result p1

    return p1

    .line 784
    :pswitch_5d  #0xbc
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseNewarray(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result p1

    return p1

    .line 777
    :pswitch_62  #0xba
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result p2

    .line 779
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v3, p2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    .line 780
    const/4 v4, 0x5

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v7

    .line 768
    :pswitch_7a  #0xb9
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result p2

    .line 769
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x3

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v3

    .line 770
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, p1, 0x4

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v4

    .line 771
    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v5, p2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 772
    const/4 p2, 0x5

    shl-int/lit8 v4, v4, 0x8

    or-int v6, v3, v4

    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v7

    .line 762
    :pswitch_a3  #0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 0xbb, 0xbd, 0xc0, 0xc1
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result p2

    .line 763
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v3, p2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 764
    const/4 v4, 0x3

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v8

    .line 748
    :pswitch_b8  #0xb1, 0xbf, 0xc2, 0xc3
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 740
    :pswitch_be  #0xb0
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 735
    :pswitch_c4  #0xaf
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 730
    :pswitch_ca  #0xae
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 725
    :pswitch_d0  #0xad
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 721
    :pswitch_d6  #0xac
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 718
    :pswitch_dc  #0xab
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseLookupswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result p1

    return p1

    .line 715
    :pswitch_e1  #0xaa
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseTableswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result p1

    return p1

    .line 709
    :pswitch_e6  #0xa9
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 710
    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v9

    .line 704
    :pswitch_f7  #0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xc6, 0xc7
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getShort(I)I

    move-result p2

    .line 705
    add-int/2addr p2, p1

    invoke-interface {v1, v2, p1, v8, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitBranch(IIII)V

    return v8

    .line 683
    :pswitch_104  #0x88, 0x8b, 0x8e, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0xbe
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 668
    :pswitch_10a  #0x87, 0x8a, 0x8d
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 662
    :pswitch_110  #0x86, 0x89, 0x90
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 656
    :pswitch_116  #0x85, 0x8c, 0x8f
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 647
    :pswitch_11c  #0x84
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 648
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte(I)I

    move-result v7

    .line 649
    const/4 v4, 0x3

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v8

    .line 643
    :pswitch_134  #0x63, 0x67, 0x6b, 0x6f, 0x73, 0x77
    sub-int/2addr v2, v8

    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 630
    :pswitch_13b  #0x62, 0x66, 0x6a, 0x6e, 0x72, 0x76
    sub-int/2addr v2, v9

    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 617
    :pswitch_142  #0x61, 0x65, 0x69, 0x6d, 0x71, 0x75, 0x79, 0x7b, 0x7d, 0x7f, 0x81, 0x83
    sub-int/2addr v2, v10

    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 598
    :pswitch_149  #0x60, 0x64, 0x68, 0x6c, 0x70, 0x74, 0x78, 0x7a, 0x7c, 0x7e, 0x80, 0x82
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 583
    :pswitch_14f  #0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 570
    :pswitch_155  #0x56
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v4, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 565
    :pswitch_15b  #0x55
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v4, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 560
    :pswitch_161  #0x54
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v4, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 551
    :pswitch_167  #0x53
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v4, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 546
    :pswitch_16d  #0x52
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v4, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 541
    :pswitch_173  #0x51
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v4, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 536
    :pswitch_179  #0x50
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v4, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 532
    :pswitch_17f  #0x4f
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v4, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 527
    :pswitch_185  #0x4b, 0x4c, 0x4d, 0x4e
    const/16 p2, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x4b

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, p2

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v10

    .line 518
    :pswitch_193  #0x47, 0x48, 0x49, 0x4a
    const/16 p2, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x47

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, p2

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v10

    .line 509
    :pswitch_1a1  #0x43, 0x44, 0x45, 0x46
    const/16 p2, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x43

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, p2

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v10

    .line 500
    :pswitch_1af  #0x3f, 0x40, 0x41, 0x42
    const/16 p2, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x3f

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, p2

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v10

    .line 491
    :pswitch_1bd  #0x3b, 0x3c, 0x3d, 0x3e
    const/16 p2, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x3b

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, p2

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v10

    .line 481
    :pswitch_1cb  #0x3a
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 482
    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v9

    .line 475
    :pswitch_1de  #0x39
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 476
    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v9

    .line 469
    :pswitch_1f1  #0x38
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 470
    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v9

    .line 463
    :pswitch_204  #0x37
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 464
    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v9

    .line 457
    :pswitch_217  #0x36
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 458
    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v9

    .line 452
    :pswitch_22a  #0x35
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v5, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 448
    :pswitch_230  #0x34
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v5, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 444
    :pswitch_236  #0x33
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v5, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 435
    :pswitch_23c  #0x32
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v5, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 430
    :pswitch_242  #0x31
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v5, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 425
    :pswitch_248  #0x30
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v5, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 421
    :pswitch_24e  #0x2f
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v5, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 417
    :pswitch_254  #0x2e
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v5, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    return v10

    .line 412
    :pswitch_25a  #0x2a, 0x2b, 0x2c, 0x2d
    const/16 p2, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x2a

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, p2

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v10

    .line 403
    :pswitch_268  #0x26, 0x27, 0x28, 0x29
    const/16 p2, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x26

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, p2

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v10

    .line 394
    :pswitch_276  #0x22, 0x23, 0x24, 0x25
    const/16 p2, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x22

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, p2

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v10

    .line 385
    :pswitch_284  #0x1e, 0x1f, 0x20, 0x21
    const/16 p2, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x1e

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, p2

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v10

    .line 376
    :pswitch_292  #0x1a, 0x1b, 0x1c, 0x1d
    const/16 p2, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x1a

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, p2

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v10

    .line 366
    :pswitch_2a0  #0x19
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 367
    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v9

    .line 360
    :pswitch_2b3  #0x18
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 361
    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v9

    .line 354
    :pswitch_2c6  #0x17
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 355
    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v9

    .line 348
    :pswitch_2d9  #0x16
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 349
    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v9

    .line 342
    :pswitch_2ec  #0x15
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 343
    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    return v9

    .line 336
    :pswitch_2ff  #0x14
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result p2

    .line 337
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v2, p2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 338
    const/16 v2, 0x14

    const/4 v4, 0x3

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v8

    .line 328
    :pswitch_316  #0x13
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 329
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v3, v2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 330
    instance-of v2, v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v2, :cond_331

    .line 331
    move-object p2, v5

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p2

    move v6, p2

    goto :goto_332

    :cond_331
    const/4 v6, 0x0

    .line 332
    :goto_332
    const/16 v2, 0x12

    const/4 v4, 0x3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v8

    .line 320
    :pswitch_33a  #0x12
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v2

    .line 321
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v3, v2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 322
    instance-of v2, v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v2, :cond_355

    .line 323
    move-object p2, v5

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p2

    move v6, p2

    goto :goto_356

    :cond_355
    const/4 v6, 0x0

    .line 324
    :goto_356
    const/16 v2, 0x12

    const/4 v4, 0x2

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v9

    .line 314
    :pswitch_35e  #0x11
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getShort(I)I

    move-result v6

    .line 316
    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v5

    .line 315
    const/16 v2, 0x12

    const/4 v4, 0x3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v8

    .line 308
    :pswitch_372  #0x10
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte(I)I

    move-result v6

    .line 310
    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v5

    .line 309
    const/16 v2, 0x12

    const/4 v4, 0x2

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v9

    .line 303
    :pswitch_386  #0xf
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 298
    :pswitch_391  #0xe
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 293
    :pswitch_39c  #0xd
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_2:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 288
    :pswitch_3a7  #0xc
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 283
    :pswitch_3b2  #0xb
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 278
    :pswitch_3bd  #0xa
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstLong;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstLong;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 273
    :pswitch_3c8  #0x9
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstLong;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstLong;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 268
    :pswitch_3d3  #0x8
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_5:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x5

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 263
    :pswitch_3de  #0x7
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_4:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x4

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 258
    :pswitch_3e9  #0x6
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_3:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 253
    :pswitch_3f4  #0x5
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_2:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x2

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 248
    :pswitch_3ff  #0x4
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x1

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 243
    :pswitch_40a  #0x3
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 238
    :pswitch_415  #0x2
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_M1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, -0x1

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 233
    :pswitch_420  #0x1
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    return v10

    .line 229
    :pswitch_42b  #0x0
    sget-object p2, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v10, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V
    :try_end_430
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_9 .. :try_end_430} :catch_44b
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_430} :catch_431

    :goto_430
    return v10

    :catch_431
    move-exception p2

    .line 814
    new-instance v1, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-direct {v1, p2}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/Throwable;)V

    .line 815
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 816
    throw v1

    :catch_44b
    move-exception p2

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 812
    throw p2

    :pswitch_data_460
    .packed-switch 0x0
        :pswitch_42b  #00000000
        :pswitch_420  #00000001
        :pswitch_415  #00000002
        :pswitch_40a  #00000003
        :pswitch_3ff  #00000004
        :pswitch_3f4  #00000005
        :pswitch_3e9  #00000006
        :pswitch_3de  #00000007
        :pswitch_3d3  #00000008
        :pswitch_3c8  #00000009
        :pswitch_3bd  #0000000a
        :pswitch_3b2  #0000000b
        :pswitch_3a7  #0000000c
        :pswitch_39c  #0000000d
        :pswitch_391  #0000000e
        :pswitch_386  #0000000f
        :pswitch_372  #00000010
        :pswitch_35e  #00000011
        :pswitch_33a  #00000012
        :pswitch_316  #00000013
        :pswitch_2ff  #00000014
        :pswitch_2ec  #00000015
        :pswitch_2d9  #00000016
        :pswitch_2c6  #00000017
        :pswitch_2b3  #00000018
        :pswitch_2a0  #00000019
        :pswitch_292  #0000001a
        :pswitch_292  #0000001b
        :pswitch_292  #0000001c
        :pswitch_292  #0000001d
        :pswitch_284  #0000001e
        :pswitch_284  #0000001f
        :pswitch_284  #00000020
        :pswitch_284  #00000021
        :pswitch_276  #00000022
        :pswitch_276  #00000023
        :pswitch_276  #00000024
        :pswitch_276  #00000025
        :pswitch_268  #00000026
        :pswitch_268  #00000027
        :pswitch_268  #00000028
        :pswitch_268  #00000029
        :pswitch_25a  #0000002a
        :pswitch_25a  #0000002b
        :pswitch_25a  #0000002c
        :pswitch_25a  #0000002d
        :pswitch_254  #0000002e
        :pswitch_24e  #0000002f
        :pswitch_248  #00000030
        :pswitch_242  #00000031
        :pswitch_23c  #00000032
        :pswitch_236  #00000033
        :pswitch_230  #00000034
        :pswitch_22a  #00000035
        :pswitch_217  #00000036
        :pswitch_204  #00000037
        :pswitch_1f1  #00000038
        :pswitch_1de  #00000039
        :pswitch_1cb  #0000003a
        :pswitch_1bd  #0000003b
        :pswitch_1bd  #0000003c
        :pswitch_1bd  #0000003d
        :pswitch_1bd  #0000003e
        :pswitch_1af  #0000003f
        :pswitch_1af  #00000040
        :pswitch_1af  #00000041
        :pswitch_1af  #00000042
        :pswitch_1a1  #00000043
        :pswitch_1a1  #00000044
        :pswitch_1a1  #00000045
        :pswitch_1a1  #00000046
        :pswitch_193  #00000047
        :pswitch_193  #00000048
        :pswitch_193  #00000049
        :pswitch_193  #0000004a
        :pswitch_185  #0000004b
        :pswitch_185  #0000004c
        :pswitch_185  #0000004d
        :pswitch_185  #0000004e
        :pswitch_17f  #0000004f
        :pswitch_179  #00000050
        :pswitch_173  #00000051
        :pswitch_16d  #00000052
        :pswitch_167  #00000053
        :pswitch_161  #00000054
        :pswitch_15b  #00000055
        :pswitch_155  #00000056
        :pswitch_14f  #00000057
        :pswitch_14f  #00000058
        :pswitch_14f  #00000059
        :pswitch_14f  #0000005a
        :pswitch_14f  #0000005b
        :pswitch_14f  #0000005c
        :pswitch_14f  #0000005d
        :pswitch_14f  #0000005e
        :pswitch_14f  #0000005f
        :pswitch_149  #00000060
        :pswitch_142  #00000061
        :pswitch_13b  #00000062
        :pswitch_134  #00000063
        :pswitch_149  #00000064
        :pswitch_142  #00000065
        :pswitch_13b  #00000066
        :pswitch_134  #00000067
        :pswitch_149  #00000068
        :pswitch_142  #00000069
        :pswitch_13b  #0000006a
        :pswitch_134  #0000006b
        :pswitch_149  #0000006c
        :pswitch_142  #0000006d
        :pswitch_13b  #0000006e
        :pswitch_134  #0000006f
        :pswitch_149  #00000070
        :pswitch_142  #00000071
        :pswitch_13b  #00000072
        :pswitch_134  #00000073
        :pswitch_149  #00000074
        :pswitch_142  #00000075
        :pswitch_13b  #00000076
        :pswitch_134  #00000077
        :pswitch_149  #00000078
        :pswitch_142  #00000079
        :pswitch_149  #0000007a
        :pswitch_142  #0000007b
        :pswitch_149  #0000007c
        :pswitch_142  #0000007d
        :pswitch_149  #0000007e
        :pswitch_142  #0000007f
        :pswitch_149  #00000080
        :pswitch_142  #00000081
        :pswitch_149  #00000082
        :pswitch_142  #00000083
        :pswitch_11c  #00000084
        :pswitch_116  #00000085
        :pswitch_110  #00000086
        :pswitch_10a  #00000087
        :pswitch_104  #00000088
        :pswitch_110  #00000089
        :pswitch_10a  #0000008a
        :pswitch_104  #0000008b
        :pswitch_116  #0000008c
        :pswitch_10a  #0000008d
        :pswitch_104  #0000008e
        :pswitch_116  #0000008f
        :pswitch_110  #00000090
        :pswitch_104  #00000091
        :pswitch_104  #00000092
        :pswitch_104  #00000093
        :pswitch_104  #00000094
        :pswitch_104  #00000095
        :pswitch_104  #00000096
        :pswitch_104  #00000097
        :pswitch_104  #00000098
        :pswitch_f7  #00000099
        :pswitch_f7  #0000009a
        :pswitch_f7  #0000009b
        :pswitch_f7  #0000009c
        :pswitch_f7  #0000009d
        :pswitch_f7  #0000009e
        :pswitch_f7  #0000009f
        :pswitch_f7  #000000a0
        :pswitch_f7  #000000a1
        :pswitch_f7  #000000a2
        :pswitch_f7  #000000a3
        :pswitch_f7  #000000a4
        :pswitch_f7  #000000a5
        :pswitch_f7  #000000a6
        :pswitch_f7  #000000a7
        :pswitch_f7  #000000a8
        :pswitch_e6  #000000a9
        :pswitch_e1  #000000aa
        :pswitch_dc  #000000ab
        :pswitch_d6  #000000ac
        :pswitch_d0  #000000ad
        :pswitch_ca  #000000ae
        :pswitch_c4  #000000af
        :pswitch_be  #000000b0
        :pswitch_b8  #000000b1
        :pswitch_a3  #000000b2
        :pswitch_a3  #000000b3
        :pswitch_a3  #000000b4
        :pswitch_a3  #000000b5
        :pswitch_a3  #000000b6
        :pswitch_a3  #000000b7
        :pswitch_a3  #000000b8
        :pswitch_7a  #000000b9
        :pswitch_62  #000000ba
        :pswitch_a3  #000000bb
        :pswitch_5d  #000000bc
        :pswitch_a3  #000000bd
        :pswitch_104  #000000be
        :pswitch_b8  #000000bf
        :pswitch_a3  #000000c0
        :pswitch_a3  #000000c1
        :pswitch_b8  #000000c2
        :pswitch_b8  #000000c3
        :pswitch_58  #000000c4
        :pswitch_3b  #000000c5
        :pswitch_f7  #000000c6
        :pswitch_f7  #000000c7
        :pswitch_25  #000000c8
        :pswitch_25  #000000c9
    .end packed-switch
.end method

.method public processWorkSet([ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)V
    .registers 4

    if-eqz p2, :cond_14

    .line 157
    :goto_2
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    if-gez v0, :cond_a

    return-void

    .line 161
    :cond_a
    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/util/Bits;->clear([II)V

    .line 162
    invoke-virtual {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 163
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->setPreviousOffset(I)V

    goto :goto_2

    .line 153
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "visitor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_1d

    :goto_1c
    throw p1

    :goto_1d
    goto :goto_1c
.end method

.method public size()I
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    return v0
.end method
