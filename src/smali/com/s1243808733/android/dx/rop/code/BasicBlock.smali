.class public final Lcom/s1243808733/android/dx/rop/code/BasicBlock;
.super Ljava/lang/Object;
.source "BasicBlock.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/LabeledItem;


# instance fields
.field private final insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

.field private final label:I

.field private final primarySuccessor:I

.field private final successors:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V
    .registers 9

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_aa

    .line 66
    :try_start_5
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->throwIfMutable()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_8} :catch_a1

    .line 72
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v0

    if-eqz v0, :cond_99

    add-int/lit8 v1, v0, -0x2

    :goto_10
    const/4 v2, 0x1

    if-ltz v1, :cond_3d

    .line 79
    invoke-virtual {p2, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    if-ne v3, v2, :cond_24

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 81
    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "insns["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] is a branch or can throw"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 86
    :cond_3d
    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    if-eq v0, v2, :cond_91

    .line 94
    :try_start_4c
    invoke-virtual {p3}, Lcom/s1243808733/android/dx/util/IntList;->throwIfMutable()V
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_4c .. :try_end_4f} :catch_88

    const/4 v0, -0x1

    if-lt p4, v0, :cond_80

    if-ltz p4, :cond_77

    .line 104
    invoke-virtual {p3, p4}, Lcom/s1243808733/android/dx/util/IntList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_77

    .line 105
    :cond_5b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "primarySuccessor "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not in successors "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 109
    :cond_77
    :goto_77
    iput p1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->label:I

    .line 110
    iput-object p2, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    .line 111
    iput-object p3, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    .line 112
    iput p4, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    return-void

    .line 101
    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "primarySuccessor < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :catch_88
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "successors == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns does not end with a branch or throwing instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :catch_a1
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_aa
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "label < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_b3

    :goto_b2
    throw p1

    :goto_b3
    goto :goto_b2
.end method


# virtual methods
.method public canThrow()Z
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->getLast()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->canThrow()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public getExceptionHandlerTypes()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2

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
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    return-object v0
.end method

.method public getLabel()I
    .registers 2

    .line 144
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->label:I

    return v0
.end method

.method public getLastInsn()Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->getLast()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public getPrimarySuccessor()I
    .registers 2

    .line 172
    iget v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    return v0
.end method

.method public getSecondarySuccessor()I
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 187
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 188
    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    if-ne v0, v1, :cond_1b

    .line 189
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v0

    :cond_1b
    return v0

    .line 183
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSuccessors()Lcom/s1243808733/android/dx/util/IntList;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public hasExceptionHandlers()Z
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->getLast()Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Insn;->getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v0

    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 134
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

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
    .registers 6

    .line 264
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->label:I

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->insns:Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object p1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->successors:Lcom/s1243808733/android/dx/util/IntList;

    iget v3, p0, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->primarySuccessor:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;-><init>(ILcom/s1243808733/android/dx/rop/code/InsnList;Lcom/s1243808733/android/dx/util/IntList;I)V

    return-object v0
.end method
