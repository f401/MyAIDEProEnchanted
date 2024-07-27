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
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$BaseVisitor;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$BaseVisitor;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->EMPTY_VISITOR:Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/rop/cst/ConstantPool;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    if-nez p2, :cond_1

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 68
    iput-object p2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    return-void
.end method

.method private parseLookupswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .registers 12

    const/4 v1, 0x0

    .line 871
    add-int/lit8 v0, p1, 0x4

    and-int/lit8 v2, v0, -0x4

    .line 875
    add-int/lit8 v0, p1, 0x1

    move v5, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 879
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v3

    .line 880
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v6

    .line 881
    add-int/lit8 v0, v2, 0x8

    .line 883
    new-instance v4, Lcom/s1243808733/android/dx/cf/code/SwitchList;

    invoke-direct {v4, v6}, Lcom/s1243808733/android/dx/cf/code/SwitchList;-><init>(I)V

    .line 884
    :goto_1
    if-lt v1, v6, :cond_1

    .line 890
    add-int v1, p1, v3

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setDefaultTarget(I)V

    .line 891
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->removeSuperfluousDefaults()V

    .line 892
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setImmutable()V

    .line 894
    sub-int v3, v0, p1

    .line 895
    const/16 v1, 0xab

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V

    .line 898
    return v3

    .line 876
    :cond_0
    shl-int/lit8 v3, v5, 0x8

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v4

    or-int v5, v3, v4

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 885
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v2

    .line 886
    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v8, v0, 0x4

    invoke-virtual {v7, v8}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v7

    .line 887
    add-int/lit8 v0, v0, 0x8

    .line 888
    add-int/2addr v7, p1

    invoke-virtual {v4, v2, v7}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->add(II)V

    .line 884
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private parseNewarray(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .registers 16

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 909
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v9

    .line 910
    packed-switch v9, :pswitch_data_0

    .line 945
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "bad newarray code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v9}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :pswitch_0
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BOOLEAN_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-object v1, v0

    .line 951
    :goto_0
    invoke-interface {p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->getPreviousOffset()I

    move-result v0

    .line 952
    new-instance v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;

    invoke-direct {v10, p0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;-><init>(Lcom/s1243808733/android/dx/cf/code/BytecodeArray;)V

    .line 959
    if-ltz v0, :cond_6

    .line 960
    invoke-virtual {p0, v0, v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 961
    iget-object v3, v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    instance-of v3, v3, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v3, :cond_6

    iget v3, v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v0, v3

    if-ne v0, p1, :cond_6

    .line 963
    iget v0, v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->value:I

    .line 980
    :goto_1
    add-int/lit8 v5, p1, 0x2

    .line 982
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 984
    if-eqz v0, :cond_5

    move v3, v2

    move v4, v5

    move v6, v5

    .line 989
    :goto_2
    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 990
    const/16 v6, 0x59

    if-eq v5, v6, :cond_2

    .line 1080
    :cond_0
    :goto_3
    if-lt v3, v7, :cond_1

    if-eq v3, v0, :cond_3

    .line 1081
    :cond_1
    const/4 v0, 0x0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {p2, p1, v7, v1, v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V

    move v0, v7

    .line 1085
    :goto_4
    return v0

    .line 917
    :pswitch_1
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->CHAR_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-object v1, v0

    .line 918
    goto :goto_0

    .line 921
    :pswitch_2
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->DOUBLE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-object v1, v0

    .line 922
    goto :goto_0

    .line 925
    :pswitch_3
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->FLOAT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-object v1, v0

    .line 926
    goto :goto_0

    .line 929
    :pswitch_4
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->BYTE_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-object v1, v0

    .line 930
    goto :goto_0

    .line 933
    :pswitch_5
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->SHORT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-object v1, v0

    .line 934
    goto :goto_0

    .line 937
    :pswitch_6
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-object v1, v0

    .line 938
    goto :goto_0

    .line 941
    :pswitch_7
    sget-object v0, Lcom/s1243808733/android/dx/rop/cst/CstType;->LONG_ARRAY:Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-object v1, v0

    .line 942
    goto :goto_0

    .line 997
    :cond_2
    invoke-virtual {p0, v12, v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 998
    iget v5, v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    if-eqz v5, :cond_0

    iget-object v5, v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    instance-of v5, v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v5, :cond_0

    iget v5, v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->value:I

    if-ne v5, v3, :cond_0

    .line 1004
    iget v5, v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v5, v12

    .line 1010
    invoke-virtual {p0, v5, v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 1011
    iget v6, v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    if-eqz v6, :cond_0

    iget-object v6, v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    instance-of v6, v6, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;

    if-eqz v6, :cond_0

    .line 1015
    iget v6, v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v6, v5

    .line 1016
    iget-object v5, v10, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    iget-object v12, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v12, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 1020
    packed-switch v9, :pswitch_data_1

    move v6, v8

    .line 1068
    :goto_5
    if-nez v6, :cond_0

    .line 1072
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    move v6, v5

    goto :goto_2

    .line 1023
    :pswitch_8
    const/16 v12, 0x54

    if-eq v6, v12, :cond_4

    move v6, v8

    .line 1024
    goto :goto_5

    .line 1029
    :pswitch_9
    const/16 v12, 0x55

    if-eq v6, v12, :cond_4

    move v6, v8

    .line 1030
    goto :goto_5

    .line 1035
    :pswitch_a
    const/16 v12, 0x52

    if-eq v6, v12, :cond_4

    move v6, v8

    .line 1036
    goto :goto_5

    .line 1041
    :pswitch_b
    const/16 v12, 0x51

    if-eq v6, v12, :cond_4

    move v6, v8

    .line 1042
    goto :goto_5

    .line 1047
    :pswitch_c
    const/16 v12, 0x56

    if-eq v6, v12, :cond_4

    move v6, v8

    .line 1048
    goto :goto_5

    .line 1053
    :pswitch_d
    const/16 v12, 0x4f

    if-eq v6, v12, :cond_4

    move v6, v8

    .line 1054
    goto :goto_5

    .line 1059
    :pswitch_e
    const/16 v12, 0x50

    if-eq v6, v12, :cond_4

    move v6, v8

    .line 1060
    goto :goto_5

    .line 1084
    :cond_3
    sub-int v0, v4, p1

    invoke-interface {p2, p1, v0, v1, v11}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNewarray(IILcom/s1243808733/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V

    .line 1085
    sub-int v0, v4, p1

    goto/16 :goto_4

    :cond_4
    move v6, v2

    goto :goto_5

    :cond_5
    move v3, v2

    move v4, v5

    goto/16 :goto_3

    :cond_6
    move v0, v2

    goto/16 :goto_1

    .line 910
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1020
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private parseTableswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .registers 12

    const/4 v1, 0x0

    .line 828
    add-int/lit8 v0, p1, 0x4

    and-int/lit8 v2, v0, -0x4

    .line 832
    add-int/lit8 v0, p1, 0x1

    move v5, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 836
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

    .line 839
    sub-int v0, v4, v6

    add-int/lit8 v7, v0, 0x1

    .line 840
    add-int/lit8 v0, v2, 0xc

    .line 842
    if-le v6, v4, :cond_1

    .line 843
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/SimException;

    const-string v1, "low / high inversion"

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_0
    shl-int/lit8 v3, v5, 0x8

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v4

    or-int v5, v3, v4

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :cond_1
    new-instance v4, Lcom/s1243808733/android/dx/cf/code/SwitchList;

    invoke-direct {v4, v7}, Lcom/s1243808733/android/dx/cf/code/SwitchList;-><init>(I)V

    .line 847
    :goto_1
    if-lt v1, v7, :cond_2

    .line 852
    add-int v1, p1, v3

    invoke-virtual {v4, v1}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setDefaultTarget(I)V

    .line 853
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->removeSuperfluousDefaults()V

    .line 854
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->setImmutable()V

    .line 856
    sub-int v3, v0, p1

    .line 857
    const/16 v1, 0xab

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitSwitch(IIILcom/s1243808733/android/dx/cf/code/SwitchList;I)V

    .line 860
    return v3

    .line 848
    :cond_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v2

    .line 849
    add-int/lit8 v0, v0, 0x4

    .line 850
    add-int v8, v6, v1

    add-int/2addr v2, p1

    invoke-virtual {v4, v8, v2}, Lcom/s1243808733/android/dx/cf/code/SwitchList;->add(II)V

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private parseWide(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .registers 11

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

    .line 1100
    sparse-switch v2, :sswitch_data_0

    .line 1163
    const/16 v1, 0xc4

    invoke-interface {p2, v1, p1, v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitInvalid(III)V

    move v3, v0

    .line 1164
    :goto_0
    return v3

    .line 1102
    :sswitch_0
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1107
    :sswitch_1
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1112
    :sswitch_2
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1117
    :sswitch_3
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1122
    :sswitch_4
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1127
    :sswitch_5
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v7

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1132
    :sswitch_6
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v7

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1137
    :sswitch_7
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v7

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1142
    :sswitch_8
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v7

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1147
    :sswitch_9
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v7

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1152
    :sswitch_a
    sget-object v5, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    move-object v0, p2

    move v1, v2

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    goto :goto_0

    .line 1157
    :sswitch_b
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

    .line 1160
    const/4 v3, 0x6

    goto :goto_0

    .line 1100
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x36 -> :sswitch_5
        0x37 -> :sswitch_6
        0x38 -> :sswitch_7
        0x39 -> :sswitch_8
        0x3a -> :sswitch_9
        0x84 -> :sswitch_b
        0xa9 -> :sswitch_a
    .end sparse-switch
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;",
            ")V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v1

    .line 108
    const/4 v0, 0x0

    .line 110
    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
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

    move-result v2

    .line 128
    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v3

    .line 129
    const/4 v0, 0x0

    move v1, v0

    .line 131
    :goto_0
    if-lt v1, v2, :cond_0

    .line 137
    return-object v3

    .line 132
    :cond_0
    const/4 v0, 0x1

    invoke-static {v3, v1, v0}, Lcom/s1243808733/android/dx/util/Bits;->set([IIZ)V

    .line 133
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;

    invoke-virtual {p0, v1, v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v0

    .line 134
    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I
    .registers 14

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 218
    if-nez p2, :cond_3

    .line 219
    sget-object v1, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->EMPTY_VISITOR:Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;

    .line 223
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v3

    .line 224
    invoke-static {v3}, Lcom/s1243808733/android/dx/cf/code/ByteOps;->opInfo(I)I

    .line 225
    packed-switch v3, :pswitch_data_0

    .line 806
    const/4 v2, 0x1

    invoke-interface {v1, v3, p1, v2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitInvalid(III)V

    move v1, v8

    .line 807
    :goto_1
    return v1

    .line 229
    :pswitch_0
    const/4 v2, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v2, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 230
    goto :goto_1

    .line 233
    :pswitch_1
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 235
    goto :goto_1

    .line 238
    :pswitch_2
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_M1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, -0x1

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 240
    goto :goto_1

    .line 243
    :pswitch_3
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 245
    goto :goto_1

    .line 248
    :pswitch_4
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x1

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 250
    goto :goto_1

    .line 253
    :pswitch_5
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_2:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x2

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 255
    goto :goto_1

    .line 258
    :pswitch_6
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_3:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 260
    goto :goto_1

    .line 263
    :pswitch_7
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_4:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x4

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 265
    goto :goto_1

    .line 268
    :pswitch_8
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->VALUE_5:Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    const/4 v6, 0x5

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 270
    goto :goto_1

    .line 273
    :pswitch_9
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstLong;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstLong;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 275
    goto :goto_1

    .line 278
    :pswitch_a
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstLong;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstLong;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 280
    goto :goto_1

    .line 283
    :pswitch_b
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 285
    goto/16 :goto_1

    .line 288
    :pswitch_c
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 290
    goto/16 :goto_1

    .line 293
    :pswitch_d
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->VALUE_2:Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 295
    goto/16 :goto_1

    .line 298
    :pswitch_e
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->VALUE_0:Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 300
    goto/16 :goto_1

    .line 303
    :pswitch_f
    const/16 v2, 0x12

    const/4 v4, 0x1

    sget-object v5, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->VALUE_1:Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    const/4 v6, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v8

    .line 305
    goto/16 :goto_1

    .line 308
    :pswitch_10
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte(I)I

    move-result v6

    .line 309
    const/16 v2, 0x12

    const/4 v4, 0x2

    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v5

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    .line 311
    goto/16 :goto_1

    .line 314
    :pswitch_11
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getShort(I)I

    move-result v6

    .line 315
    const/16 v2, 0x12

    const/4 v4, 0x3

    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v5

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v10

    .line 317
    goto/16 :goto_1

    .line 320
    :pswitch_12
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

    if-eqz v2, :cond_0

    move-object v0, v5

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v6

    .line 324
    :cond_0
    const/16 v2, 0x12

    const/4 v4, 0x2

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v9

    .line 325
    goto/16 :goto_1

    .line 328
    :pswitch_13
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

    move v1, v10

    .line 333
    goto/16 :goto_1

    .line 336
    :pswitch_14
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

    move v1, v10

    .line 339
    goto/16 :goto_1

    .line 342
    :pswitch_15
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

    move v1, v9

    .line 345
    goto/16 :goto_1

    .line 348
    :pswitch_16
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

    move v1, v9

    .line 351
    goto/16 :goto_1

    .line 354
    :pswitch_17
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

    move v1, v9

    .line 357
    goto/16 :goto_1

    .line 360
    :pswitch_18
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

    move v1, v9

    .line 363
    goto/16 :goto_1

    .line 366
    :pswitch_19
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

    move v1, v9

    .line 369
    goto/16 :goto_1

    .line 375
    :pswitch_1a
    const/16 v2, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v3, -0x1a

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v8

    .line 378
    goto/16 :goto_1

    .line 384
    :pswitch_1b
    const/16 v2, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v3, -0x1e

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v8

    .line 387
    goto/16 :goto_1

    .line 393
    :pswitch_1c
    const/16 v2, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v3, -0x22

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v8

    .line 396
    goto/16 :goto_1

    .line 402
    :pswitch_1d
    const/16 v2, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v3, -0x26

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v8

    .line 405
    goto/16 :goto_1

    .line 411
    :pswitch_1e
    const/16 v2, 0x15

    const/4 v4, 0x1

    add-int/lit8 v5, v3, -0x2a

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v8

    .line 414
    goto/16 :goto_1

    .line 417
    :pswitch_1f
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 418
    goto/16 :goto_1

    .line 421
    :pswitch_20
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 422
    goto/16 :goto_1

    .line 425
    :pswitch_21
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 427
    goto/16 :goto_1

    .line 430
    :pswitch_22
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 432
    goto/16 :goto_1

    .line 435
    :pswitch_23
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 437
    goto/16 :goto_1

    .line 444
    :pswitch_24
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 445
    goto/16 :goto_1

    .line 448
    :pswitch_25
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 449
    goto/16 :goto_1

    .line 452
    :pswitch_26
    const/16 v2, 0x2e

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 454
    goto/16 :goto_1

    .line 457
    :pswitch_27
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

    move v1, v9

    .line 460
    goto/16 :goto_1

    .line 463
    :pswitch_28
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

    move v1, v9

    .line 466
    goto/16 :goto_1

    .line 469
    :pswitch_29
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

    move v1, v9

    .line 472
    goto/16 :goto_1

    .line 475
    :pswitch_2a
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

    move v1, v9

    .line 478
    goto/16 :goto_1

    .line 481
    :pswitch_2b
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

    move v1, v9

    .line 484
    goto/16 :goto_1

    .line 490
    :pswitch_2c
    const/16 v2, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v3, -0x3b

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v8

    .line 493
    goto/16 :goto_1

    .line 499
    :pswitch_2d
    const/16 v2, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v3, -0x3f

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v8

    .line 502
    goto/16 :goto_1

    .line 508
    :pswitch_2e
    const/16 v2, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v3, -0x43

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v8

    .line 511
    goto/16 :goto_1

    .line 517
    :pswitch_2f
    const/16 v2, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v3, -0x47

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v8

    .line 520
    goto/16 :goto_1

    .line 526
    :pswitch_30
    const/16 v2, 0x36

    const/4 v4, 0x1

    add-int/lit8 v5, v3, -0x4b

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v8

    .line 529
    goto/16 :goto_1

    .line 532
    :pswitch_31
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 533
    goto/16 :goto_1

    .line 536
    :pswitch_32
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 538
    goto/16 :goto_1

    .line 541
    :pswitch_33
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 543
    goto/16 :goto_1

    .line 546
    :pswitch_34
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 548
    goto/16 :goto_1

    .line 551
    :pswitch_35
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 553
    goto/16 :goto_1

    .line 560
    :pswitch_36
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->BYTE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 562
    goto/16 :goto_1

    .line 565
    :pswitch_37
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->CHAR:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 567
    goto/16 :goto_1

    .line 570
    :pswitch_38
    const/16 v2, 0x4f

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->SHORT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 572
    goto/16 :goto_1

    .line 583
    :pswitch_39
    const/4 v2, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v2, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 584
    goto/16 :goto_1

    .line 598
    :pswitch_3a
    const/4 v2, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v2, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 599
    goto/16 :goto_1

    .line 617
    :pswitch_3b
    add-int/lit8 v2, v3, -0x1

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 618
    goto/16 :goto_1

    .line 630
    :pswitch_3c
    add-int/lit8 v2, v3, -0x2

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 631
    goto/16 :goto_1

    .line 643
    :pswitch_3d
    add-int/lit8 v2, v3, -0x3

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 644
    goto/16 :goto_1

    .line 647
    :pswitch_3e
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 648
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x2

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getByte(I)I

    move-result v7

    .line 649
    const/4 v4, 0x3

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v10

    .line 651
    goto/16 :goto_1

    .line 656
    :pswitch_3f
    const/4 v2, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v2, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 657
    goto/16 :goto_1

    .line 662
    :pswitch_40
    const/4 v2, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v2, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 663
    goto/16 :goto_1

    .line 668
    :pswitch_41
    const/4 v2, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v2, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 669
    goto/16 :goto_1

    .line 683
    :pswitch_42
    const/4 v2, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v2, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 684
    goto/16 :goto_1

    .line 704
    :pswitch_43
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getShort(I)I

    move-result v2

    .line 705
    const/4 v4, 0x3

    add-int/2addr v2, p1

    invoke-interface {v1, v3, p1, v4, v2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitBranch(IIII)V

    move v1, v10

    .line 706
    goto/16 :goto_1

    .line 709
    :pswitch_44
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    .line 710
    const/4 v4, 0x2

    sget-object v6, Lcom/s1243808733/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/s1243808733/android/dx/rop/type/Type;

    const/4 v7, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v7}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/s1243808733/android/dx/rop/type/Type;I)V

    move v1, v9

    .line 712
    goto/16 :goto_1

    .line 715
    :pswitch_45
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseTableswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v1

    goto/16 :goto_1

    .line 718
    :pswitch_46
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseLookupswitch(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v1

    goto/16 :goto_1

    .line 721
    :pswitch_47
    const/16 v2, 0xac

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->INT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 722
    goto/16 :goto_1

    .line 725
    :pswitch_48
    const/16 v2, 0xac

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->LONG:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 727
    goto/16 :goto_1

    .line 730
    :pswitch_49
    const/16 v2, 0xac

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->FLOAT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 732
    goto/16 :goto_1

    .line 735
    :pswitch_4a
    const/16 v2, 0xac

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->DOUBLE:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 737
    goto/16 :goto_1

    .line 740
    :pswitch_4b
    const/16 v2, 0xac

    const/4 v3, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->OBJECT:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 742
    goto/16 :goto_1

    .line 748
    :pswitch_4c
    const/4 v2, 0x1

    sget-object v4, Lcom/s1243808733/android/dx/rop/type/Type;->VOID:Lcom/s1243808733/android/dx/rop/type/Type;

    invoke-interface {v1, v3, p1, v2, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/s1243808733/android/dx/rop/type/Type;)V

    move v1, v8

    .line 749
    goto/16 :goto_1

    .line 762
    :pswitch_4d
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 763
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v4, v2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 764
    const/4 v4, 0x3

    const/4 v6, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    move v1, v10

    .line 765
    goto/16 :goto_1

    .line 768
    :pswitch_4e
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

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

    invoke-interface {v4, v2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 772
    const/4 v4, 0x5

    shl-int/lit8 v2, v7, 0x8

    or-int/2addr v6, v2

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    .line 774
    const/4 v1, 0x5

    goto/16 :goto_1

    .line 777
    :pswitch_4f
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 779
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v4, v2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    .line 780
    const/4 v4, 0x5

    const/4 v6, 0x0

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    .line 781
    const/4 v1, 0x5

    goto/16 :goto_1

    .line 784
    :pswitch_50
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseNewarray(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v1

    goto/16 :goto_1

    .line 787
    :pswitch_51
    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseWide(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v1

    goto/16 :goto_1

    .line 790
    :pswitch_52
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    .line 791
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, p1, 0x3

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 792
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->pool:Lcom/s1243808733/android/dx/rop/cst/ConstantPool;

    invoke-interface {v4, v2}, Lcom/s1243808733/android/dx/rop/cst/ConstantPool;->get(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 793
    const/4 v4, 0x4

    move v2, v3

    move v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/s1243808733/android/dx/rop/cst/Constant;I)V

    .line 794
    const/4 v1, 0x4

    goto/16 :goto_1

    .line 798
    :pswitch_53
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v4

    .line 799
    const/16 v2, 0xc8

    if-ne v3, v2, :cond_2

    const/16 v2, 0xa7

    .line 802
    :goto_2
    const/4 v3, 0x5

    add-int/2addr v4, p1

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->visitBranch(IIII)V
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 803
    const/4 v1, 0x5

    goto/16 :goto_1

    .line 799
    :cond_2
    const/16 v2, 0xa8

    goto :goto_2

    .line 807
    :catch_0
    move-exception v1

    .line 811
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "...at bytecode offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 812
    throw v1

    :catch_1
    move-exception v1

    .line 814
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/SimException;

    invoke-direct {v2, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;-><init>(Ljava/lang/Throwable;)V

    .line 815
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "...at bytecode offset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 816
    throw v2

    :cond_3
    move-object v1, p2

    goto/16 :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3a
        :pswitch_3b
        :pswitch_3a
        :pswitch_3b
        :pswitch_3a
        :pswitch_3b
        :pswitch_3a
        :pswitch_3b
        :pswitch_3a
        :pswitch_3b
        :pswitch_3a
        :pswitch_3b
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_3f
        :pswitch_41
        :pswitch_42
        :pswitch_3f
        :pswitch_40
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_42
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_4d
        :pswitch_50
        :pswitch_4d
        :pswitch_42
        :pswitch_4c
        :pswitch_4d
        :pswitch_4d
        :pswitch_4c
        :pswitch_4c
        :pswitch_51
        :pswitch_52
        :pswitch_43
        :pswitch_43
        :pswitch_53
        :pswitch_53
    .end packed-switch
.end method

.method public processWorkSet([ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;",
            ")V"
        }
    .end annotation

    .line 152
    if-nez p2, :cond_1

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "visitor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/util/Bits;->clear([II)V

    .line 162
    invoke-virtual {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 163
    invoke-interface {p2, v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;->setPreviousOffset(I)V

    .line 157
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/s1243808733/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    .line 158
    if-gez v0, :cond_0

    .line 163
    return-void
.end method

.method public size()I
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    return v0
.end method
