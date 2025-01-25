.class public Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;
.super Lcom/s1243808733/android/dx/util/MutabilityControl;
.source "LocalVariableInfo.java"


# instance fields
.field private final blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

.field private final emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

.field private final insnAssignments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/s1243808733/android/dx/ssa/SsaInsn;",
            "Lcom/s1243808733/android/dx/rop/code/RegisterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final regCount:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Lcom/s1243808733/android/dx/util/MutabilityControl;-><init>()V

    if-eqz p1, :cond_29

    .line 61
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result p1

    iput p1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->regCount:I

    .line 64
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v1, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    .line 66
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    .line 69
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    return-void

    .line 58
    :cond_29
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "method == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 3

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    aget-object p1, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 247
    :catch_5
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus index"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addAssignment(Lcom/s1243808733/android/dx/ssa/SsaInsn;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 4

    .line 187
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->throwIfImmutable()V

    if-eqz p1, :cond_15

    if-eqz p2, :cond_d

    .line 197
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 194
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insn == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public debugDump()V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 221
    :goto_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    array-length v3, v2

    if-ge v1, v3, :cond_3a

    .line 222
    aget-object v2, v2, v1

    if-nez v2, :cond_c

    goto :goto_37

    .line 226
    :cond_c
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_21

    .line 227
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "%04x: empty set\n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_37

    .line 229
    :cond_21
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    iget-object v5, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    const-string v4, "%04x: %s\n"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3a
    return-void
.end method

.method public getAssignment(Lcom/s1243808733/android/dx/ssa/SsaInsn;)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    return-object p1
.end method

.method public getAssignmentCount()I
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->insnAssignments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 2

    .line 139
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_9

    .line 141
    :cond_7
    iget-object p1, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->emptySet:Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    :goto_9
    return-object p1
.end method

.method public getStarts(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 2

    .line 153
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->getStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    return-object p1
.end method

.method public mergeStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)Z
    .registers 6

    .line 109
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->setStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    return v1

    .line 117
    :cond_b
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object v2

    .line 118
    invoke-virtual {v2, p2, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->intersect(Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;Z)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_1a
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 125
    invoke-virtual {p0, p1, v2}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->setStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V

    return v1
.end method

.method public mutableCopyOfStarts(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;
    .registers 3

    .line 166
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->getStarts0(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 169
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;->mutableCopy()Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    move-result-object p1

    goto :goto_12

    :cond_b
    new-instance p1, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    iget v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->regCount:I

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    :goto_12
    return-object p1
.end method

.method public setStarts(ILcom/s1243808733/android/dx/rop/code/RegisterSpecSet;)V
    .registers 4

    .line 80
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->throwIfImmutable()V

    if-eqz p2, :cond_13

    .line 87
    :try_start_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/LocalVariableInfo;->blockStarts:[Lcom/s1243808733/android/dx/rop/code/RegisterSpecSet;

    aput-object p2, v0, p1
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_9} :catch_a

    return-void

    .line 90
    :catch_a
    move-exception p1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "specs == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
