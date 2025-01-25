.class public Lcom/FR1ENDS/tools/asm/utils/AsmUtils;
.super Ljava/lang/Object;
.source "AsmUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asList(Lorg/objectweb/asm/tree/AbstractInsnNode;[Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/InsnList;
    .registers 5

    .line 220
    new-instance v1, Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {v1}, Lorg/objectweb/asm/tree/InsnList;-><init>()V

    .line 221
    invoke-virtual {v1, p0}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 222
    if-eqz p1, :cond_e

    .line 223
    const/4 v0, 0x0

    .line 224
    :goto_b
    array-length v2, p1

    if-lt v0, v2, :cond_f

    .line 226
    :cond_e
    return-object v1

    .line 223
    :cond_f
    aget-object v2, p1, v0

    .line 224
    invoke-virtual {v1, v2}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static getDefaultValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 3

    .line 236
    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 252
    :pswitch_7  #0x9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 242
    :pswitch_d  #0x1, 0x2, 0x3, 0x4, 0x5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    .line 250
    :goto_12
    return-object v0

    .line 244
    :pswitch_13  #0x6
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(F)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_12

    .line 246
    :pswitch_19  #0x7
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(J)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_12

    .line 248
    :pswitch_20  #0x8
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(D)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_12

    .line 250
    :pswitch_27  #0xa
    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    goto :goto_12

    .line 236
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_d  #00000001
        :pswitch_d  #00000002
        :pswitch_d  #00000003
        :pswitch_d  #00000004
        :pswitch_d  #00000005
        :pswitch_13  #00000006
        :pswitch_19  #00000007
        :pswitch_20  #00000008
        :pswitch_7  #00000009
        :pswitch_27  #0000000a
    .end packed-switch
.end method

.method public static getDoubleFromInsn(Lorg/objectweb/asm/tree/AbstractInsnNode;)D
    .registers 3

    .line 148
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    .line 150
    const/16 v1, 0xe

    if-lt v0, v1, :cond_10

    const/16 v1, 0xf

    if-gt v0, v1, :cond_10

    .line 151
    add-int/lit8 v0, v0, -0xe

    int-to-double v0, v0

    .line 154
    :goto_f
    return-wide v0

    .line 152
    :cond_10
    instance-of v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    if-eqz v0, :cond_28

    move-object v0, p0

    check-cast v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_28

    .line 154
    check-cast p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_f

    .line 157
    :cond_28
    new-instance v0, Lcom/FR1ENDS/tools/asm/utils/AsmException;

    const-string v1, "Unexpected instruction"

    invoke-direct {v0, v1}, Lcom/FR1ENDS/tools/asm/utils/AsmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFloatFromInsn(Lorg/objectweb/asm/tree/AbstractInsnNode;)F
    .registers 3

    .line 135
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    .line 137
    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    const/16 v1, 0xd

    if-gt v0, v1, :cond_10

    .line 138
    add-int/lit8 v0, v0, -0xb

    int-to-float v0, v0

    .line 141
    :goto_f
    return v0

    .line 139
    :cond_10
    instance-of v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    if-eqz v0, :cond_28

    move-object v0, p0

    check-cast v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_28

    .line 141
    check-cast p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_f

    .line 144
    :cond_28
    new-instance v0, Lcom/FR1ENDS/tools/asm/utils/AsmException;

    const-string v1, "Unexpected instruction"

    invoke-direct {v0, v1}, Lcom/FR1ENDS/tools/asm/utils/AsmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGenericMethodDesc(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 161
    invoke-static {p0}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v1

    .line 162
    invoke-static {p0}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v2

    .line 163
    const/4 v0, 0x0

    :goto_9
    array-length v3, v2

    if-lt v0, v3, :cond_11

    .line 170
    invoke-static {v1, v2}, Lorg/objectweb/asm/Type;->getMethodDescriptor(Lorg/objectweb/asm/Type;[Lorg/objectweb/asm/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_11
    aget-object v3, v2, v0

    .line 166
    invoke-virtual {v3}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_23

    .line 167
    const-string v3, "Ljava/lang/Object;"

    invoke-static {v3}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v3

    aput-object v3, v2, v0

    .line 163
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static getIntegerFromInsn(Lorg/objectweb/asm/tree/AbstractInsnNode;)I
    .registers 3

    .line 106
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    .line 108
    const/4 v1, 0x2

    if-lt v0, v1, :cond_e

    const/16 v1, 0x8

    if-gt v0, v1, :cond_e

    .line 109
    add-int/lit8 v0, v0, -0x3

    .line 115
    :goto_d
    return v0

    .line 110
    :cond_e
    instance-of v0, p0, Lorg/objectweb/asm/tree/IntInsnNode;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0xbc

    if-eq v0, v1, :cond_1f

    .line 112
    check-cast p0, Lorg/objectweb/asm/tree/IntInsnNode;

    iget v0, p0, Lorg/objectweb/asm/tree/IntInsnNode;->operand:I

    goto :goto_d

    .line 113
    :cond_1f
    instance-of v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    if-eqz v0, :cond_37

    move-object v0, p0

    check-cast v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_37

    .line 115
    check-cast p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_d

    .line 118
    :cond_37
    new-instance v0, Lcom/FR1ENDS/tools/asm/utils/AsmException;

    const-string v1, "Unexpected instruction"

    invoke-direct {v0, v1}, Lcom/FR1ENDS/tools/asm/utils/AsmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLongFromInsn(Lorg/objectweb/asm/tree/AbstractInsnNode;)J
    .registers 3

    .line 122
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    .line 124
    const/16 v1, 0x9

    if-lt v0, v1, :cond_10

    const/16 v1, 0xa

    if-gt v0, v1, :cond_10

    .line 125
    add-int/lit8 v0, v0, -0x9

    int-to-long v0, v0

    .line 128
    :goto_f
    return-wide v0

    .line 126
    :cond_10
    instance-of v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    if-eqz v0, :cond_28

    move-object v0, p0

    check-cast v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_28

    .line 128
    check-cast p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_f

    .line 131
    :cond_28
    new-instance v0, Lcom/FR1ENDS/tools/asm/utils/AsmException;

    const-string v1, "Unexpected instruction"

    invoke-direct {v0, v1}, Lcom/FR1ENDS/tools/asm/utils/AsmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getNumberInsn(D)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 6

    .line 100
    const/4 v0, 0x0

    int-to-double v0, v0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_17

    const/4 v0, 0x1

    int-to-double v0, v0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_17

    .line 101
    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    const/16 v1, 0xe

    int-to-double v2, v1

    add-double/2addr v2, p0

    double-to-int v1, v2

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    .line 103
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p0, p1}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public static getNumberInsn(F)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 3

    .line 93
    const/4 v0, 0x0

    int-to-float v0, v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_17

    const/4 v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_17

    .line 94
    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    const/16 v1, 0xb

    int-to-float v1, v1

    add-float/2addr v1, p0

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    .line 96
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p0}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public static getNumberInsn(I)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 3

    .line 77
    const/4 v0, -0x1

    if-lt p0, v0, :cond_e

    const/4 v0, 0x5

    if-gt p0, v0, :cond_e

    .line 78
    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    add-int/lit8 v1, p0, 0x3

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    .line 84
    :goto_d
    return-object v0

    .line 79
    :cond_e
    const/16 v0, -0x80

    if-lt p0, v0, :cond_1e

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_1e

    .line 80
    new-instance v0, Lorg/objectweb/asm/tree/IntInsnNode;

    const/16 v1, 0x10

    invoke-direct {v0, v1, p0}, Lorg/objectweb/asm/tree/IntInsnNode;-><init>(II)V

    goto :goto_d

    .line 81
    :cond_1e
    const/16 v0, -0x8000

    if-lt p0, v0, :cond_2e

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_2e

    .line 82
    new-instance v0, Lorg/objectweb/asm/tree/IntInsnNode;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Lorg/objectweb/asm/tree/IntInsnNode;-><init>(II)V

    goto :goto_d

    .line 84
    :cond_2e
    new-instance v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public static getNumberInsn(J)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 6

    .line 87
    const/4 v0, 0x0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_17

    const/4 v0, 0x1

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_17

    .line 88
    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    const/16 v1, 0x9

    int-to-long v2, v1

    add-long/2addr v2, p0

    long-to-int v1, v2

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    .line 90
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p0, p1}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public static getRandomValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 3

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_6a

    .line 278
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 259
    :pswitch_e  #0x1
    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/FR1ENDS/tools/asm/utils/RandomUtil;->getRandomInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    .line 276
    :goto_17
    return-object v0

    .line 261
    :pswitch_18  #0x2
    const v0, 0xffff

    invoke-static {v1, v0}, Lcom/FR1ENDS/tools/asm/utils/RandomUtil;->getRandomInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_17

    .line 263
    :pswitch_24  #0x3
    const/16 v0, -0x80

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/FR1ENDS/tools/asm/utils/RandomUtil;->getRandomInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_17

    .line 265
    :pswitch_31  #0x4
    const/16 v0, -0x8000

    const/16 v1, 0x7fff

    invoke-static {v0, v1}, Lcom/FR1ENDS/tools/asm/utils/RandomUtil;->getRandomInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_17

    .line 267
    :pswitch_3e  #0x5
    invoke-static {}, Lcom/FR1ENDS/tools/asm/utils/RandomUtil;->getRandomInt()I

    move-result v0

    invoke-static {v0}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_17

    .line 269
    :pswitch_47  #0x6
    invoke-static {}, Lcom/FR1ENDS/tools/asm/utils/RandomUtil;->getRandomFloat()F

    move-result v0

    invoke-static {v0}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(F)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_17

    .line 271
    :pswitch_50  #0x7
    invoke-static {}, Lcom/FR1ENDS/tools/asm/utils/RandomUtil;->getRandomLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(J)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_17

    .line 273
    :pswitch_59  #0x8
    invoke-static {}, Lcom/FR1ENDS/tools/asm/utils/RandomUtil;->getRandomDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/FR1ENDS/tools/asm/utils/AsmUtils;->getNumberInsn(D)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_17

    .line 276
    :pswitch_62  #0x9, 0xa
    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    goto :goto_17

    .line 257
    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_e  #00000001
        :pswitch_18  #00000002
        :pswitch_24  #00000003
        :pswitch_31  #00000004
        :pswitch_3e  #00000005
        :pswitch_47  #00000006
        :pswitch_50  #00000007
        :pswitch_59  #00000008
        :pswitch_62  #00000009
        :pswitch_62  #0000000a
    .end packed-switch
.end method

.method public static getReturnOpcode(Lorg/objectweb/asm/Type;)I
    .registers 4

    .line 174
    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 193
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown type sort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 180
    :pswitch_24  #0x1, 0x2, 0x3, 0x4, 0x5
    const/16 v0, 0xac

    .line 191
    :goto_26
    return v0

    .line 182
    :pswitch_27  #0x6
    const/16 v0, 0xae

    goto :goto_26

    .line 184
    :pswitch_2a  #0x7
    const/16 v0, 0xad

    goto :goto_26

    .line 186
    :pswitch_2d  #0x8
    const/16 v0, 0xaf

    goto :goto_26

    .line 189
    :pswitch_30  #0x9, 0xa
    const/16 v0, 0xb0

    goto :goto_26

    .line 191
    :pswitch_33  #0x0
    const/16 v0, 0xb1

    goto :goto_26

    .line 174
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_33  #00000000
        :pswitch_24  #00000001
        :pswitch_24  #00000002
        :pswitch_24  #00000003
        :pswitch_24  #00000004
        :pswitch_24  #00000005
        :pswitch_27  #00000006
        :pswitch_2a  #00000007
        :pswitch_2d  #00000008
        :pswitch_30  #00000009
        :pswitch_30  #0000000a
    .end packed-switch
.end method

.method public static getVarOpcode(Lorg/objectweb/asm/Type;Z)I
    .registers 5

    .line 198
    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    .line 215
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 204
    :pswitch_24  #0x1, 0x2, 0x3, 0x4, 0x5
    if-eqz p1, :cond_29

    const/16 v0, 0x36

    .line 213
    :goto_28
    return v0

    .line 204
    :cond_29
    const/16 v0, 0x15

    goto :goto_28

    .line 206
    :pswitch_2c  #0x6
    if-eqz p1, :cond_31

    const/16 v0, 0x38

    goto :goto_28

    :cond_31
    const/16 v0, 0x17

    goto :goto_28

    .line 208
    :pswitch_34  #0x7
    if-eqz p1, :cond_39

    const/16 v0, 0x37

    goto :goto_28

    :cond_39
    const/16 v0, 0x16

    goto :goto_28

    .line 210
    :pswitch_3c  #0x8
    if-eqz p1, :cond_41

    const/16 v0, 0x39

    goto :goto_28

    :cond_41
    const/16 v0, 0x18

    goto :goto_28

    .line 213
    :pswitch_44  #0x9, 0xa
    if-eqz p1, :cond_49

    const/16 v0, 0x3a

    goto :goto_28

    :cond_49
    const/16 v0, 0x19

    goto :goto_28

    .line 198
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_24  #00000002
        :pswitch_24  #00000003
        :pswitch_24  #00000004
        :pswitch_24  #00000005
        :pswitch_2c  #00000006
        :pswitch_34  #00000007
        :pswitch_3c  #00000008
        :pswitch_44  #00000009
        :pswitch_44  #0000000a
    .end packed-switch
.end method

.method public static hasAnnotations(Lorg/objectweb/asm/tree/ClassNode;)Z
    .registers 2

    .line 30
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public static hasAnnotations(Lorg/objectweb/asm/tree/FieldNode;)Z
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public static hasAnnotations(Lorg/objectweb/asm/tree/MethodNode;)Z
    .registers 2

    .line 35
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public static hasInstructions(Lorg/objectweb/asm/tree/MethodNode;)Z
    .registers 2

    .line 19
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static isDoubleInsn(Lorg/objectweb/asm/tree/AbstractInsnNode;)Z
    .registers 3

    .line 71
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    .line 72
    const/16 v1, 0xe

    if-lt v0, v1, :cond_c

    const/16 v1, 0xf

    if-le v0, v1, :cond_1a

    :cond_c
    instance-of v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    if-eqz v0, :cond_18

    check-cast p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Double;

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public static isFloatInsn(Lorg/objectweb/asm/tree/AbstractInsnNode;)Z
    .registers 3

    .line 65
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    .line 66
    const/16 v1, 0xb

    if-lt v0, v1, :cond_c

    const/16 v1, 0xd

    if-le v0, v1, :cond_1a

    :cond_c
    instance-of v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    if-eqz v0, :cond_18

    check-cast p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Float;

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public static isInstruction(Lorg/objectweb/asm/tree/AbstractInsnNode;)Z
    .registers 2

    .line 22
    instance-of v0, p0, Lorg/objectweb/asm/tree/FrameNode;

    if-nez v0, :cond_c

    instance-of v0, p0, Lorg/objectweb/asm/tree/LineNumberNode;

    if-nez v0, :cond_c

    instance-of v0, p0, Lorg/objectweb/asm/tree/LabelNode;

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static isIntInsn(Lorg/objectweb/asm/tree/AbstractInsnNode;)Z
    .registers 4

    const/4 v0, 0x0

    .line 45
    if-nez p0, :cond_4

    .line 49
    :cond_3
    :goto_3
    return v0

    .line 48
    :cond_4
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    .line 49
    const/4 v2, 0x2

    if-lt v1, v2, :cond_f

    const/16 v2, 0x8

    if-le v1, v2, :cond_23

    :cond_f
    const/16 v2, 0x10

    if-eq v1, v2, :cond_23

    const/16 v2, 0x11

    if-eq v1, v2, :cond_23

    instance-of v1, p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    if-eqz v1, :cond_3

    check-cast p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    :cond_23
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static isLongInsn(Lorg/objectweb/asm/tree/AbstractInsnNode;)Z
    .registers 3

    .line 57
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    .line 58
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1a

    instance-of v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    if-eqz v0, :cond_18

    check-cast p0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public static isReturn(I)Z
    .registers 2

    .line 26
    const/16 v0, 0xac

    if-lt p0, v0, :cond_8

    const/16 v0, 0xb1

    if-le p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static singletonList(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/InsnList;
    .registers 2

    .line 230
    new-instance v0, Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {v0}, Lorg/objectweb/asm/tree/InsnList;-><init>()V

    .line 231
    invoke-virtual {v0, p0}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 232
    return-object v0
.end method
