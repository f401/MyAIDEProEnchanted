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
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/LabeledList;-><init>(I)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/android/dx/rop/code/BasicBlockList;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/LabeledList;-><init>(Lcom/s1243808733/android/dx/util/LabeledList;)V

    .line 54
    iget v0, p1, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    return-void
.end method


# virtual methods
.method public catchesEqual(Lcom/s1243808733/android/dx/rop/code/BasicBlock;Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v7, -0x1

    .line 260
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getExceptionHandlerTypes()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v1

    .line 261
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getExceptionHandlerTypes()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v2

    .line 263
    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->equalContents(Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/type/TypeList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v2

    .line 268
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v3

    .line 269
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v4

    .line 271
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v5

    .line 272
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v6

    .line 274
    if-eq v5, v7, :cond_2

    if-ne v6, v7, :cond_3

    :cond_2
    if-ne v5, v6, :cond_0

    :cond_3
    move v1, v0

    .line 285
    :goto_1
    if-lt v1, v4, :cond_4

    .line 306
    const/4 v0, 0x1

    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v7

    .line 287
    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v8

    .line 289
    if-ne v7, v5, :cond_6

    .line 295
    if-ne v8, v6, :cond_0

    .line 285
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 301
    :cond_6
    if-eq v7, v8, :cond_5

    goto :goto_0
.end method

.method public forEachInsn(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;",
            ")V"
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v1

    .line 176
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v2

    .line 179
    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->forEach(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;
    .registers 3

    .line 67
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    return-object v0
.end method

.method public getEffectiveInstructionCount()I
    .registers 10

    const/4 v3, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v5

    move v4, v3

    move v1, v3

    .line 131
    :goto_0
    if-lt v4, v5, :cond_0

    .line 147
    return v1

    .line 132
    :cond_0
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    .line 133
    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v6

    .line 135
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v7

    move v2, v3

    move v0, v1

    .line 137
    :goto_1
    if-lt v2, v7, :cond_1

    .line 131
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v1, v0

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v6, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v8, 0x36

    if-eq v1, v8, :cond_2

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 137
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public getInstructionCount()I
    .registers 5

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 111
    :goto_0
    if-lt v2, v3, :cond_0

    .line 118
    return v1

    .line 112
    :cond_0
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    .line 113
    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 111
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
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

    if-ne v0, v1, :cond_0

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
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    return v0
.end method

.method public labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;
    .registers 5

    .line 158
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v0

    .line 160
    if-gez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "no such label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    return-object v0
.end method

.method public preferredSuccessorOf(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/rop/code/BasicBlock;
    .registers 6

    const/4 v3, 0x0

    .line 230
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    .line 231
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v2

    .line 234
    packed-switch v2, :pswitch_data_0

    .line 243
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 244
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    .line 236
    :pswitch_0
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v1, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public set(ILcom/s1243808733/android/dx/rop/code/BasicBlock;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/code/BasicBlock;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-super {p0, p1, p2}, Lcom/s1243808733/android/dx/util/LabeledList;->set(ILcom/s1243808733/android/dx/util/LabeledItem;)V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->regCount:I

    return-void
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/BasicBlockList;
    .registers 6

    .line 193
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v2

    .line 194
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    invoke-direct {v3, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;-><init>(I)V

    .line 196
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->setImmutable()V

    .line 207
    :cond_0
    return-object v3

    .line 197
    :cond_1
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    .line 198
    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->set(ILcom/s1243808733/android/dx/rop/code/BasicBlock;)V

    .line 196
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
