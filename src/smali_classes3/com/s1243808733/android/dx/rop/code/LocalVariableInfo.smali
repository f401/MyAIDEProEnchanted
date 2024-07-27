.class public final Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "LocalVariableInfo.java"


# instance fields
.field private final blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

.field private final emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

.field private final insnAssignments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/s1243808733/android/dx/rop/code/Insn;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final regCount:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/RopMethod;)V
    .registers 6

    .line 54
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>()V

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v1

    .line 62
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v2

    iput v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->regCount:I

    .line 63
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    iget v3, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->regCount:I

    invoke-direct {v2, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    iput-object v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    .line 64
    new-array v1, v1, [Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    iput-object v1, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getInstructionCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    .line 68
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    return-void
.end method

.method private getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 4

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAssignment(Lcom/s1243808733/android/dx/rop/code/Insn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/code/Insn;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->throwIfImmutable()V

    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "insn == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    if-nez p2, :cond_1

    .line 197
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public debugDump()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    move v0, v1

    .line 224
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 224
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    if-ne v2, v3, :cond_2

    .line 230
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%04x: empty set\n"

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    .line 232
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "%04x: %s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    aget-object v5, v5, v0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1
.end method

.method public getAssignment(Lcom/s1243808733/android/dx/rop/code/Insn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public getAssignmentCount()I
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 3

    .line 142
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    goto :goto_0
.end method

.method public getStarts(Lcom/s1243808733/android/dx/rop/code/BasicBlock;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 3

    .line 156
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->getStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    return-object v0
.end method

.method public mergeStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)Z
    .registers 7

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    .line 111
    if-nez v2, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->setStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    .line 130
    :goto_0
    return v0

    .line 116
    :cond_0
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v1

    .line 117
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {v1, p2, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->intersect(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;Z)V

    .line 123
    :goto_1
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v1

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 128
    invoke-virtual {p0, p1, v1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->setStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    goto :goto_0
.end method

.method public mutableCopyOfStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 4

    .line 169
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    iget v1, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->regCount:I

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    goto :goto_0
.end method

.method public setStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;",
            ")V"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->throwIfImmutable()V

    .line 81
    if-nez p2, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "specs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
