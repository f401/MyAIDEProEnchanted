.class public final Lcom/s1243808733/android/dx/rop/code/BasicBlock;
.super Ljava/lang/Object;
.source "BasicBlock.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/LabeledItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/rop/code/BasicBlock$Visitor;
    }
.end annotation


# instance fields
.field private final insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

.field private final label:I

.field private final primarySuccessor:I

.field private final successors:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V
    .locals 4

    const/4 v3, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_7

    .line 66
    :try_start_0
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->throwIfMutable()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v0, v1, -0x2

    :goto_0
    if-ltz v0, :cond_1

    .line 79
    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insns["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] is a branch or can throw"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 94
    :try_start_1
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/util/IntList;->throwIfMutable()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, -0x1

    if-lt p4, v0, :cond_4

    if-ltz p4, :cond_2

    .line 104
    invoke-virtual {p3, p4}, Lcom/s1243808733/android/dx/util/IntList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    :cond_2
    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->label:I

    .line 110
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    .line 111
    iput-object p3, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    .line 112
    iput p4, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    return-void

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "primarySuccessor "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not in successors "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "primarySuccessor < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "successors == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "insns does not end with a branch or throwing instruction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "insns.size() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "insns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "label < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canThrow()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->getLast()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->canThrow()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExceptionHandlerTypes()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->getLast()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v0

    return-object v0
.end method

.method public getFirstInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    return-object v0
.end method

.method public getLabel()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->label:I

    return v0
.end method

.method public getLastInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->getLast()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public getPrimarySuccessor()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    return v0
.end method

.method public getSecondarySuccessor()I
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 188
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    :cond_0
    return v0

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessors()Lcom/s1243808733/android/dx/util/IntList;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public hasExceptionHandlers()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->getLast()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .line 134
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->label:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;
    .locals 5

    .line 264
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->label:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    iget v4, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    return-object v0
.end method
