.class public final Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;
.super Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;
.source "MultiCstInsn.java"


# static fields
.field private static final NOT_SET:I = -0x1


# instance fields
.field private classIndex:I

.field private final constants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

.field private final index:[I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;[Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 6

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    if-eqz p4, :cond_27

    .line 65
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->constants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 66
    array-length p1, p4

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->index:[I

    const/4 p1, 0x0

    .line 67
    :goto_d
    iget-object p2, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->index:[I

    array-length p3, p2

    const/4 v0, -0x1

    if-ge p1, p3, :cond_24

    .line 68
    aget-object p3, p4, p1

    if-eqz p3, :cond_1c

    .line 71
    aput v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 69
    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constants[i] == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_24
    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->classIndex:I

    return-void

    .line 62
    :cond_27
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constants == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :goto_2f
    throw p1

    :goto_30
    goto :goto_2f
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;[Lcom/s1243808733/android/dx/rop/cst/Constant;[II)V
    .registers 7

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 80
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->constants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 81
    iput-object p5, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->index:[I

    .line 82
    iput p6, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->classIndex:I

    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 4

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 217
    :goto_6
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->constants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    array-length v2, v2

    if-ge v1, v2, :cond_24

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_16

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_16
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->constants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 221
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cstComment()Ljava/lang/String;
    .registers 5

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 234
    :goto_6
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->constants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    array-length v2, v2

    if-ge v1, v2, :cond_45

    .line 235
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->hasIndex(I)Z

    move-result v2

    if-nez v2, :cond_14

    .line 236
    const-string v0, ""

    return-object v0

    :cond_14
    if-lez v1, :cond_1b

    .line 240
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_1b
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_3b

    .line 247
    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 249
    :cond_3b
    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 252
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cstString()Ljava/lang/String;
    .registers 2

    .line 227
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->argString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassIndex()I
    .registers 3

    .line 173
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->hasClassIndex()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 177
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->classIndex:I

    return v0

    .line 174
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class index not yet set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConstant(I)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->constants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getIndex(I)I
    .registers 4

    .line 125
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->hasIndex(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 130
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->index:[I

    aget p1, v0, p1

    return p1

    .line 126
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "index not yet set for constant "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->constants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getNumberOfConstants()I
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->constants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    array-length v0, v0

    return v0
.end method

.method public hasClassIndex()Z
    .registers 3

    .line 189
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->classIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public hasIndex(I)Z
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->index:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public setClassIndex(I)V
    .registers 3

    if-ltz p1, :cond_13

    .line 206
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->hasClassIndex()Z

    move-result v0

    if-nez v0, :cond_b

    .line 210
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->classIndex:I

    return-void

    .line 207
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "class index already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndex(II)V
    .registers 4

    if-ltz p2, :cond_15

    .line 157
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->hasIndex(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 161
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->index:[I

    aput p2, v0, p1

    return-void

    .line 158
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "index already set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 154
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 10

    .line 88
    new-instance v7, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->constants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->index:[I

    iget v6, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->classIndex:I

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;[Lcom/s1243808733/android/dx/rop/cst/Constant;[II)V

    return-object v7
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 10

    .line 95
    new-instance v7, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->constants:[Lcom/s1243808733/android/dx/rop/cst/Constant;

    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->index:[I

    iget v6, p0, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;->classIndex:I

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/android/dx/dex/code/MultiCstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;[Lcom/s1243808733/android/dx/rop/cst/Constant;[II)V

    return-object v7
.end method
