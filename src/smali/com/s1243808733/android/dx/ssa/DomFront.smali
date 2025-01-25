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
.field private static final DEBUG:Z = false


# instance fields
.field private final domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

.field private final meth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

.field private final nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/ssa/SsaMethod;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->meth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 60
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 63
    new-array v0, p1, [Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    iput-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    const/4 v0, 0x0

    :goto_14
    if-ge v0, p1, :cond_22

    .line 66
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    new-instance v2, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    invoke-direct {v2}, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_22
    return-void
.end method

.method private buildDomTree()V
    .registers 6

    .line 148
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2b

    .line 151
    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    aget-object v2, v2, v1

    .line 153
    iget v3, v2, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->idom:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_13

    goto :goto_28

    .line 155
    :cond_13
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    iget v2, v2, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->idom:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 156
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v2, v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->addDomChild(Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;)V

    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2b
    return-void
.end method

.method private calcDomFronts()V
    .registers 9

    .line 166
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_4f

    .line 169
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 170
    iget-object v4, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    aget-object v4, v4, v2

    .line 171
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_4c

    .line 174
    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    :goto_25
    if-ltz v5, :cond_4c

    move v6, v5

    .line 178
    :goto_28
    iget v7, v4, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->idom:I

    if-eq v6, v7, :cond_45

    const/4 v7, -0x1

    if-ne v6, v7, :cond_30

    goto :goto_45

    .line 186
    :cond_30
    iget-object v7, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    aget-object v6, v7, v6

    .line 188
    iget-object v7, v6, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/s1243808733/android/dx/util/IntSet;

    invoke-interface {v7, v2}, Lcom/s1243808733/android/dx/util/IntSet;->has(I)Z

    move-result v7

    if-eqz v7, :cond_3d

    goto :goto_45

    .line 193
    :cond_3d
    iget-object v7, v6, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/s1243808733/android/dx/util/IntSet;

    invoke-interface {v7, v2}, Lcom/s1243808733/android/dx/util/IntSet;->add(I)V

    .line 194
    iget v6, v6, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->idom:I

    goto :goto_28

    .line 175
    :cond_45
    :goto_45
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    goto :goto_25

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4f
    return-void
.end method

.method private debugPrintDomChildren()V
    .registers 9

    .line 120
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_5d

    .line 123
    iget-object v3, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 124
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "{"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getDomChildren()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    if-eqz v6, :cond_35

    .line 130
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    :cond_35
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v6, 0x1

    goto :goto_22

    .line 135
    :cond_3a
    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "domChildren["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_5d
    return-void
.end method


# virtual methods
.method public run()[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->meth:Lcom/s1243808733/android/dx/ssa/SsaMethod;

    iget-object v2, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/s1243808733/android/dx/ssa/Dominators;->make(Lcom/s1243808733/android/dx/ssa/SsaMethod;[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;Z)Lcom/s1243808733/android/dx/ssa/Dominators;

    .line 96
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/DomFront;->buildDomTree()V

    :goto_11
    if-ge v3, v0, :cond_20

    .line 103
    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    aget-object v1, v1, v3

    .line 104
    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/SetFactory;->makeDomFrontSet(I)Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v2

    iput-object v2, v1, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->dominanceFrontiers:Lcom/s1243808733/android/dx/util/IntSet;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 107
    :cond_20
    invoke-direct {p0}, Lcom/s1243808733/android/dx/ssa/DomFront;->calcDomFronts()V

    .line 116
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront;->domInfos:[Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;

    return-object v0
.end method
