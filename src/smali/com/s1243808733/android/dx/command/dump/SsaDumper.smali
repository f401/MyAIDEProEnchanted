.class public Lcom/s1243808733/android/dx/command/dump/SsaDumper;
.super Lcom/s1243808733/android/dx/command/dump/BlockDumper;
.source "SsaDumper.java"


# direct methods
.method private constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V
    .registers 11

    .line 70
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/s1243808733/android/dx/command/dump/Args;)V

    return-void
.end method

.method public static dump([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V
    .registers 5

    .line 55
    new-instance v0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/s1243808733/android/dx/command/dump/SsaDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    .line 56
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->dump()V

    return-void
.end method


# virtual methods
.method public endParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/s1243808733/android/dx/cf/iface/Member;)V
    .registers 14

    .line 77
    instance-of p2, p5, Lcom/s1243808733/android/dx/cf/iface/Method;

    if-nez p2, :cond_5

    return-void

    .line 81
    :cond_5
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_c

    return-void

    .line 85
    :cond_c
    invoke-interface {p5}, Lcom/s1243808733/android/dx/cf/iface/Member;->getAccessFlags()I

    move-result p2

    and-int/lit16 p2, p2, 0x500

    if-eqz p2, :cond_15

    return-void

    .line 90
    :cond_15
    new-instance p2, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    check-cast p5, Lcom/s1243808733/android/dx/cf/iface/Method;

    iget-object p3, p0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    const/4 p4, 0x1

    invoke-direct {p2, p5, p3, p4, p4}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/s1243808733/android/dx/cf/iface/Method;Lcom/s1243808733/android/dx/cf/iface/ClassFile;ZZ)V

    .line 92
    sget-object v4, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    .line 93
    iget-object p3, p0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {p3}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object p3

    iget-object p5, p0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-static {p2, v4, p3, p5}, Lcom/s1243808733/android/dx/cf/code/Ropper;->convert(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    .line 95
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result p3

    invoke-static {p3}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v2

    .line 96
    invoke-static {p2, v2}, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->computeParamWidth(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Z)I

    move-result v1

    .line 98
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object p2, p2, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    if-nez p2, :cond_4c

    .line 99
    nop

    .line 101
    const-class p2, Lcom/s1243808733/android/dx/ssa/Optimizer$OptionalStep;

    invoke-static {p2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    .line 99
    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/Optimizer;->debugNoRegisterAllocation(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;Ljava/util/EnumSet;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object p2

    goto :goto_91

    .line 102
    :cond_4c
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object p2, p2, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    const-string p3, "edge-split"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 103
    invoke-static {v0, v1, v2, p4, v4}, Lcom/s1243808733/android/dx/ssa/Optimizer;->debugEdgeSplit(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object p2

    goto :goto_91

    .line 105
    :cond_5d
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object p2, p2, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    const-string p3, "phi-placement"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 106
    invoke-static {v0, v1, v2, p4, v4}, Lcom/s1243808733/android/dx/ssa/Optimizer;->debugPhiPlacement(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object p2

    goto :goto_91

    .line 108
    :cond_6e
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object p2, p2, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    const-string p3, "renaming"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 109
    invoke-static {v0, v1, v2, p4, v4}, Lcom/s1243808733/android/dx/ssa/Optimizer;->debugRenaming(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object p2

    goto :goto_91

    .line 111
    :cond_7f
    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object p2, p2, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    const-string p3, "dead-code"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_90

    .line 112
    invoke-static {v0, v1, v2, p4, v4}, Lcom/s1243808733/android/dx/ssa/Optimizer;->debugDeadCodeRemover(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object p2

    goto :goto_91

    :cond_90
    const/4 p2, 0x0

    .line 116
    :goto_91
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 p5, 0x7d0

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    const-string p5, "first "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    move-result p5

    invoke-virtual {p2, p5}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    move-result p5

    .line 119
    invoke-static {p5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/16 p5, 0xa

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    sget-object v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->LABEL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 129
    const-string v3, "block "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v3

    .line 134
    invoke-virtual {v3, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    :goto_ec
    if-ltz v4, :cond_108

    .line 136
    const-string v5, "  pred "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p2, v4}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    move-result v5

    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    goto :goto_ec

    .line 141
    :cond_108
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  live in:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getLiveInRegs()Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v3, "\n"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_146

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 145
    const-string v6, "  "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->toHuman()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12a

    .line 150
    :cond_146
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/BitSet;->cardinality()I

    move-result v4

    if-nez v4, :cond_156

    .line 151
    const-string v2, "  returns\n"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_187

    .line 153
    :cond_156
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorRopLabel()I

    move-result v4

    .line 155
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabelSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v5

    .line 157
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v6

    :goto_162
    if-ge v2, v6, :cond_187

    .line 160
    const-string v7, "  next "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v7

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v6, p4, :cond_181

    .line 163
    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v7

    if-ne v4, v7, :cond_181

    .line 164
    const-string v7, " *"

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_181
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_162

    .line 170
    :cond_187
    :goto_187
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  live out:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getLiveOutRegs()Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c4

    .line 174
    :cond_1a1
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->suppressDump:Z

    .line 175
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 176
    iput-boolean p4, p0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->suppressDump:Z

    return-void
.end method
