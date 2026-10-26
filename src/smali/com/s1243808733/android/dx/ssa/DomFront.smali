.class public Lcom/s1243808733/android/dx/ssa/DomFront;
.super Ljava/lang/Object;
.source "DomFront.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

.field private final meth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private final nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->meth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 60
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 63
    new-array v0, v1, [Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 66
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    new-instance v3, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    invoke-direct {v3}, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;-><init>()V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private buildDomTree()V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 151
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    aget-object v0, v0, v2

    .line 153
    iget v1, v0, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->idom:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 156
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    iget v0, v0, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->idom:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 156
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addDomChild(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private calcDomFronts()V
    .locals 8

    const/4 v3, 0x0

    .line 166
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_3

    .line 169
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 170
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    aget-object v5, v1, v2

    .line 171
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v6

    .line 173
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 174
    invoke-virtual {v6, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    :goto_1
    if-ltz v1, :cond_2

    move v0, v1

    .line 178
    :goto_2
    iget v7, v5, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->idom:I

    if-eq v0, v7, :cond_0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_1

    .line 175
    :cond_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    goto :goto_1

    .line 186
    :cond_1
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    aget-object v0, v7, v0

    .line 188
    iget-object v7, v0, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/s1243808733/android/dx/util/IntSet;

    invoke-interface {v7, v2}, Lcom/s1243808733/android/dx/util/IntSet;->has(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 193
    iget-object v7, v0, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/s1243808733/android/dx/util/IntSet;

    invoke-interface {v7, v2}, Lcom/s1243808733/android/dx/util/IntSet;->add(I)V

    .line 194
    iget v0, v0, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->idom:I

    goto :goto_2

    .line 175
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private debugPrintDomChildren()V
    .locals 8

    const/4 v3, 0x0

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    .line 123
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 124
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getDomChildren()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    if-eqz v2, :cond_0

    .line 130
    const/16 v2, 0x2c

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    :cond_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    move v2, v1

    goto :goto_1

    .line 135
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "domChildren["

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public run()[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;
    .locals 4

    const/4 v0, 0x0

    .line 76
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->meth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    invoke-static {v2, v3, v0}, Lcom/s1243808733/android/dx/ssa/Dominators;->make(Lcom/s1243808733/android/dx/ssa/SsaMethod;[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;Z)Lcom/s1243808733/android/dx/ssa/Dominators;

    .line 96
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/DomFront;->buildDomTree()V

    :goto_0
    if-ge v0, v1, :cond_0

    .line 103
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    aget-object v2, v2, v0

    .line 104
    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/SetFactory;->makeDomFrontSet(I)Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v3

    iput-object v3, v2, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/s1243808733/android/dx/util/IntSet;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/DomFront;->calcDomFronts()V

    .line 116
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    return-object v0
.end method
