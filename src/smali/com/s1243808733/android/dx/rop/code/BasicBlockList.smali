.class public final Lcom/s1243808733/android/dx/rop/code/BasicBlockList;
.super Lcom/s1243808733/android/dx/util/LabeledList;
.source "BasicBlockList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;
    }
.end annotation


# instance fields
.field private regCount:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/LabeledList;-><init>(I)V

    .line 44
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    return-void
.end method

.method private constructor <init>(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;)V
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/LabeledList;-><init>(Lcom/s1243808733/android/dx/util/LabeledList;)V

    .line 54
    iget p1, p1, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    return-void
.end method


# virtual methods
.method public catchesEqual(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z
    .registers 10

    .line 260
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getExceptionHandlerTypes()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v0

    .line 261
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getExceptionHandlerTypes()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v1

    .line 263
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->equalContents(Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 267
    :cond_10
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v0

    .line 268
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 269
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v3

    .line 271
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result p1

    .line 272
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result p2

    const/4 v4, -0x1

    if-eq p1, v4, :cond_29

    if-ne p2, v4, :cond_2c

    :cond_29
    if-eq p1, p2, :cond_2c

    return v1

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v3, :cond_42

    .line 286
    invoke-virtual {v0, v4}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v5

    .line 287
    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v6

    if-ne v5, p1, :cond_3c

    if-eq v6, p2, :cond_3f

    return v1

    :cond_3c
    if-eq v5, v6, :cond_3f

    return v1

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_42
    const/4 p1, 0x1

    return p1
.end method

.method public forEachInsn(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .registers 5

    .line 174
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 177
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v2

    .line 179
    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->forEach(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return-void
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;
    .registers 2

    .line 67
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    return-object p1
.end method

.method public getEffectiveInstructionCount()I
    .registers 10

    .line 128
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_34

    .line 132
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    if-eqz v4, :cond_31

    .line 134
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v4

    .line 135
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_31

    .line 138
    invoke-virtual {v4, v6}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v7

    .line 140
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v7

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v7

    const/16 v8, 0x36

    if-eq v7, v8, :cond_2e

    add-int/lit8 v3, v3, 0x1

    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_34
    return v3
.end method

.method public getInstructionCount()I
    .registers 5

    .line 108
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_1c

    .line 112
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    if-eqz v3, :cond_19

    .line 114
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v3

    add-int/2addr v2, v3

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return v2
.end method

.method public getMutableCopy()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;
    .registers 2

    .line 216
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;-><init>(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;)V

    return-object v0
.end method

.method public getRegCount()I
    .registers 3

    .line 92
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 93
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;-><init>()V

    .line 94
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->forEachInsn(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V

    .line 95
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList$RegCountVisitor;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    .line 98
    :cond_13
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    return v0
.end method

.method public labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;
    .registers 4

    .line 158
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v0

    if-ltz v0, :cond_b

    .line 165
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object p1

    return-object p1

    .line 161
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no such label: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public preferredSuccessorOf(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/rop/code/BasicBlock;
    .registers 6

    .line 230
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    .line 231
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_23

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 244
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object p1

    return-object p1

    .line 246
    :cond_1a
    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object p1

    return-object p1

    .line 239
    :cond_23
    invoke-virtual {p1, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object p1

    return-object p1

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method public set(ILcom/s1243808733/android/dx/rop/code/BasicBlock;)V
    .registers 3

    .line 77
    invoke-super {p0, p1, p2}, Lcom/s1243808733/android/dx/util/LabeledList;->set(ILcom/s1243808733/android/dx/util/LabeledItem;)V

    .line 80
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    return-void
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/BasicBlockList;
    .registers 6

    .line 193
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    .line 194
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1e

    .line 197
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    if-eqz v3, :cond_1b

    .line 199
    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->set(ILcom/s1243808733/android/dx/rop/code/BasicBlock;)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 203
    :cond_1e
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 204
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->setImmutable()V

    :cond_27
    return-object v1
.end method
