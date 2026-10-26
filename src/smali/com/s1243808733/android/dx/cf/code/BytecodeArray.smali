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
    .locals 1

    .line 40
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$BaseVisitor;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$BaseVisitor;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->EMPTY_VISITOR:Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 67
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 68
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseLookupswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .locals 9

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x4

    and-int/lit8 v2, v0, -0x4

    add-int/lit8 v0, p1, 0x1

    move v5, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 876
    shl-int/lit8 v3, v5, 0x8

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v4

    or-int v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v3

    .line 880
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v6

    add-int/lit8 v0, v2, 0x8

    .line 883
    new-instance v4, Lcom/s1243808733/android/dx/cf/code/SwitchList;

    invoke-direct {v4, v6}, Lcom/s1243808733/android/dx/cf/code/SwitchList;-><init>(I)V

    :goto_1
    if-ge v1, v6, :cond_1

    .line 885
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v2

    .line 886
    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v8, v0, 0x4

    invoke-virtual {v7, v8}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v7

    add-int/lit8 v0, v0, 0x8

    .line 888
    add-int/2addr v7, p1

    invoke-virtual {v4, v2, v7}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 890
    :cond_1
    add-int v1, v3, p1

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setDefaultTarget(I)V

    .line 891
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->removeSuperfluousDefaults()V

    .line 892
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setImmutable()V

    sub-int v3, v0, p1

    .line 895
    const/16 v1, 0xab

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V

    return v3
.end method

.method private parseNewarray(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .locals 11

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 909
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad newarray code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 946
    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 941
    :pswitch_0
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 951
    :goto_0
    invoke-interface {p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->getPreviousOffset()I

    move-result v1

    .line 952
    new-instance v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;

    invoke-direct {v6, p0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;-><init>(Lcom/s1243808733/android/dx/cf/code/BytecodeArray;)V

    if-ltz v1, :cond_2

    .line 960
    invoke-virtual {p0, v1, v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 961
    iget-object v3, v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    instance-of v3, v3, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v3, :cond_2

    iget v3, v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v1, v3

    if-ne v1, p1, :cond_2

    .line 963
    iget v1, v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->value:I

    :goto_1
    add-int/lit8 v3, p1, 0x2

    .line 982
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    .line 989
    :goto_2
    iget-object v8, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v8

    const/16 v10, 0x59

    if-eq v8, v10, :cond_3

    .line 1018
    :cond_0
    :goto_3
    if-lt v2, v4, :cond_1

    if-eq v2, v1, :cond_5

    .line 1081
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p2, p1, v4, v0, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V

    move v0, v4

    .line 1084
    :goto_4
    return v0

    .line 937
    :pswitch_1
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 933
    :pswitch_2
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 929
    :pswitch_3
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 921
    :pswitch_4
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 925
    :pswitch_5
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 917
    :pswitch_6
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    .line 913
    :pswitch_7
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    goto :goto_0

    :cond_2
    move v1, v2

    .line 963
    goto :goto_1

    .line 997
    :cond_3
    invoke-virtual {p0, v9, v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 998
    iget v8, v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    if-eqz v8, :cond_0

    iget-object v8, v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    instance-of v8, v8, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v8, :cond_0

    iget v8, v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->value:I

    if-ne v8, v2, :cond_0

    .line 1004
    iget v8, v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v8, v9

    .line 1010
    invoke-virtual {p0, v8, v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 1011
    iget v9, v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    if-eqz v9, :cond_0

    iget-object v9, v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    instance-of v9, v9, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    if-eqz v9, :cond_0

    .line 1015
    iget v9, v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v8, v9

    .line 1016
    iget-object v9, v6, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    iget-object v9, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v9, v8}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v9

    packed-switch v5, :pswitch_data_1

    goto :goto_3

    :pswitch_8
    const/16 v10, 0x54

    if-ne v9, v10, :cond_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v8, 0x1

    goto :goto_2

    :pswitch_9
    const/16 v10, 0x50

    if-eq v9, v10, :cond_4

    goto :goto_3

    :pswitch_a
    const/16 v10, 0x4f

    if-eq v9, v10, :cond_4

    goto :goto_3

    :pswitch_b
    const/16 v10, 0x56

    if-eq v9, v10, :cond_4

    goto :goto_3

    :pswitch_c
    const/16 v10, 0x52

    if-eq v9, v10, :cond_4

    goto :goto_3

    :pswitch_d
    const/16 v10, 0x51

    if-eq v9, v10, :cond_4

    goto :goto_3

    :pswitch_e
    const/16 v10, 0x55

    if-eq v9, v10, :cond_4

    goto :goto_3

    :cond_5
    sub-int v1, v3, p1

    .line 1084
    invoke-interface {p2, p1, v1, v0, v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V

    move v0, v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1018
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_8
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private parseTableswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .locals 9

    const/4 v1, 0x0

    add-int/lit8 v0, p1, 0x4

    and-int/lit8 v2, v0, -0x4

    add-int/lit8 v0, p1, 0x1

    move v5, v1

    :goto_0
    if-ge v0, v2, :cond_0

    .line 833
    shl-int/lit8 v3, v5, 0x8

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v4

    or-int v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v3

    .line 837
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v6

    .line 838
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x8

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v4

    sub-int v0, v4, v6

    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v0, v2, 0xc

    if-gt v6, v4, :cond_2

    .line 846
    new-instance v4, Lcom/s1243808733/android/dx/cf/code/SwitchList;

    invoke-direct {v4, v7}, Lcom/s1243808733/android/dx/cf/code/SwitchList;-><init>(I)V

    :goto_1
    if-ge v1, v7, :cond_1

    .line 848
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v2

    add-int/lit8 v0, v0, 0x4

    .line 850
    add-int v8, v6, v1

    add-int/2addr v2, p1

    invoke-virtual {v4, v8, v2}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 852
    :cond_1
    add-int v1, v3, p1

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setDefaultTarget(I)V

    .line 853
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->removeSuperfluousDefaults()V

    .line 854
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setImmutable()V

    sub-int v3, v0, p1

    .line 857
    const/16 v1, 0xab

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V

    return v3

    .line 843
    :cond_2
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v1, "low / high inversion"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseWide(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .locals 8

    const/4 v0, 0x1

    const/16 v7, 0x36

    const/16 v1, 0x15

    const/4 v6, 0x0

    const/4 v3, 0x4

    .line 1098
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v2

    .line 1099
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, p1, 0x2

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    const/16 v5, 0x84

    if-eq v2, v5, :cond_1

    const/16 v5, 0xa9

    if-eq v2, v5, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    .line 1163
    const/16 v1, 0xc4

    invoke-interface {p2, v1, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitInvalid(III)V

    move v3, v0

    :goto_0
    return v3

    .line 1122
    :pswitch_0
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1117
    :pswitch_1
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1112
    :pswitch_2
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1107
    :pswitch_3
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1102
    :pswitch_4
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1147
    :pswitch_5
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v7

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1142
    :pswitch_6
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v7

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1137
    :pswitch_7
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v7

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1132
    :pswitch_8
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v7

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1127
    :pswitch_9
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v7

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1152
    :cond_0
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getShort(I)I

    move-result v6

    .line 1158
    const/4 v3, 0x6

    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    const/4 v3, 0x6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public forEach(Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBytes()Lcom/s1243808733/android/dx/util/ByteArray;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    return-object v0
.end method

.method public getInstructionOffsets()[I
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v1

    .line 128
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 132
    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/s1243808733/android/dx/util/Bits;->set([IIZ)V

    .line 133
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .locals 11

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 218
    if-nez p2, :cond_3

    .line 219
    sget-object v1, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->EMPTY_VISITOR:Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;

    .line 218
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v2

    .line 224
    invoke-static {v2}, Lcom/s1243808733/android/dx/cf/code/ByteOps;->opInfo(I)I

    packed-switch v2, :pswitch_data_0

    .line 806
    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitInvalid(III)V

    :goto_1
    move v1, v9

    .line 802
    :goto_2
    return v1

    .line 798
    :pswitch_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    const/16 v2, 0xa7

    .line 802
    :goto_3
    const/4 v4, 0x5

    add-int/2addr v3, p1

    invoke-interface {v1, v2, p1, v4, v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitBranch(IIII)V

    const/4 v1, 0x5

    goto :goto_2

    .line 798
    :cond_0
    const/16 v2, 0xa8

    goto :goto_3

    .line 790
    :pswitch_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 791
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 792
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v4, v3}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 793
    const/4 v4, 0x4

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    const/4 v1, 0x4

    goto :goto_2

    .line 787
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseWide(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v1

    goto :goto_2

    .line 784
    :pswitch_3
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseNewarray(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v1

    goto :goto_2

    .line 777
    :pswitch_4
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 779
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v4, v3}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    .line 780
    const/4 v4, 0x5

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    const/4 v1, 0x5

    goto :goto_2

    .line 768
    :pswitch_5
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 769
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 770
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, p1, 0x4

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v7

    .line 771
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v4, v3}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 772
    const/4 v4, 0x5

    shl-int/lit8 v3, v7, 0x8

    or-int/2addr v6, v3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    const/4 v1, 0x5

    goto :goto_2

    .line 762
    :pswitch_6
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 763
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v4, v3}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 764
    const/4 v4, 0x3

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    goto/16 :goto_2

    .line 748
    :pswitch_7
    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 740
    :pswitch_8
    const/16 v2, 0xac

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 735
    :pswitch_9
    const/16 v2, 0xac

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 730
    :pswitch_a
    const/16 v2, 0xac

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 725
    :pswitch_b
    const/16 v2, 0xac

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 721
    :pswitch_c
    const/16 v2, 0xac

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 718
    :pswitch_d
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseLookupswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v1

    goto/16 :goto_2

    .line 715
    :pswitch_e
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseTableswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v1

    goto/16 :goto_2

    .line 709
    :pswitch_f
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 710
    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    goto/16 :goto_2

    .line 704
    :pswitch_10
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getShort(I)I

    move-result v3

    .line 705
    const/4 v4, 0x3

    add-int/2addr v3, p1

    invoke-interface {v1, v2, p1, v4, v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitBranch(IIII)V

    move v1, v8

    goto/16 :goto_2

    .line 683
    :pswitch_11
    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 668
    :pswitch_12
    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 662
    :pswitch_13
    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 656
    :pswitch_14
    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 647
    :pswitch_15
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 648
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte(I)I

    move-result v7

    .line 649
    const/4 v4, 0x3

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v8

    goto/16 :goto_2

    .line 643
    :pswitch_16
    add-int/lit8 v2, v2, -0x3

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 630
    :pswitch_17
    add-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 617
    :pswitch_18
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 598
    :pswitch_19
    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 583
    :pswitch_1a
    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 570
    :pswitch_1b
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 565
    :pswitch_1c
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 560
    :pswitch_1d
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 551
    :pswitch_1e
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 546
    :pswitch_1f
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 541
    :pswitch_20
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 536
    :pswitch_21
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 532
    :pswitch_22
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 527
    :pswitch_23
    const/16 v3, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x4b

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v9

    goto/16 :goto_2

    .line 518
    :pswitch_24
    const/16 v3, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x47

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v9

    goto/16 :goto_2

    .line 509
    :pswitch_25
    const/16 v3, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x43

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v9

    goto/16 :goto_2

    .line 500
    :pswitch_26
    const/16 v3, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x3f

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v9

    goto/16 :goto_2

    .line 491
    :pswitch_27
    const/16 v3, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x3b

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v9

    goto/16 :goto_2

    .line 481
    :pswitch_28
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 482
    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    goto/16 :goto_2

    .line 475
    :pswitch_29
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 476
    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    goto/16 :goto_2

    .line 469
    :pswitch_2a
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 470
    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    goto/16 :goto_2

    .line 463
    :pswitch_2b
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 464
    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    goto/16 :goto_2

    .line 457
    :pswitch_2c
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 458
    const/16 v2, 0x36

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    goto/16 :goto_2

    .line 452
    :pswitch_2d
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 448
    :pswitch_2e
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 444
    :pswitch_2f
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 435
    :pswitch_30
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 430
    :pswitch_31
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 425
    :pswitch_32
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 421
    :pswitch_33
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 417
    :pswitch_34
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v9

    goto/16 :goto_2

    .line 412
    :pswitch_35
    const/16 v3, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x2a

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v9

    goto/16 :goto_2

    .line 403
    :pswitch_36
    const/16 v3, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x26

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v9

    goto/16 :goto_2

    .line 394
    :pswitch_37
    const/16 v3, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x22

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v9

    goto/16 :goto_2

    .line 385
    :pswitch_38
    const/16 v3, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x1e

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v9

    goto/16 :goto_2

    .line 376
    :pswitch_39
    const/16 v3, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v2, -0x1a

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v9

    goto/16 :goto_2

    .line 366
    :pswitch_3a
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 367
    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    goto/16 :goto_2

    .line 360
    :pswitch_3b
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 361
    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    goto/16 :goto_2

    .line 354
    :pswitch_3c
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 355
    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    goto/16 :goto_2

    .line 348
    :pswitch_3d
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 349
    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    goto/16 :goto_2

    .line 342
    :pswitch_3e
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 343
    const/16 v2, 0x15

    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    goto/16 :goto_2

    .line 336
    :pswitch_3f
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 337
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v3, v2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 338
    const/16 v2, 0x14

    const/4 v4, 0x3

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    goto/16 :goto_2

    .line 328
    :pswitch_40
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

    if-eqz v2, :cond_1

    .line 331
    move-object v0, v5

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v6

    .line 332
    :cond_1
    const/16 v2, 0x12

    const/4 v4, 0x3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    goto/16 :goto_2

    .line 320
    :pswitch_41
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

    if-eqz v2, :cond_2

    .line 323
    move-object v0, v5

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v6

    .line 324
    :cond_2
    const/16 v2, 0x12

    const/4 v4, 0x2

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v10

    goto/16 :goto_2

    .line 314
    :pswitch_42
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getShort(I)I

    move-result v6

    .line 316
    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v5

    .line 315
    const/16 v2, 0x12

    const/4 v4, 0x3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    goto/16 :goto_2

    .line 308
    :pswitch_43
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte(I)I

    move-result v6

    .line 310
    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v5

    .line 309
    const/16 v2, 0x12

    const/4 v4, 0x2

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v10

    goto/16 :goto_2

    .line 303
    :pswitch_44
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 298
    :pswitch_45
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 293
    :pswitch_46
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_2:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 288
    :pswitch_47
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 283
    :pswitch_48
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 278
    :pswitch_49
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstLong;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstLong;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 273
    :pswitch_4a
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstLong;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstLong;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 268
    :pswitch_4b
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_5:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x5

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 263
    :pswitch_4c
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_4:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x4

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 258
    :pswitch_4d
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_3:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 253
    :pswitch_4e
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_2:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x2

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 248
    :pswitch_4f
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x1

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 243
    :pswitch_50
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 238
    :pswitch_51
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_M1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, -0x1

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 233
    :pswitch_52
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    goto/16 :goto_2

    .line 229
    :pswitch_53
    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 816
    :catch_0
    move-exception v1

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...at bytecode offset "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 812
    throw v1

    .line 229
    :catch_1
    move-exception v1

    .line 814
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/Throwable;)V

    .line 815
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "...at bytecode offset "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 816
    throw v2

    :cond_3
    move-object v1, p2

    goto/16 :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_13
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_11
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processWorkSet([ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 157
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/util/Bits;->clear([II)V

    .line 162
    invoke-virtual {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 163
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->setPreviousOffset(I)V

    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "visitor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    return v0
.end method
