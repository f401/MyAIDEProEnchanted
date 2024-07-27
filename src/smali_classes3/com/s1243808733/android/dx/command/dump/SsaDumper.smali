.class public Lcom/s1243808733/android/dx/command/dump/SsaDumper;
.super Lcom/s1243808733/android/dx/command/dump/BlockDumper;
.source "SsaDumper.java"


# direct methods
.method constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/io/PrintStream;",
            "Ljava/lang/String;",
            "Lcom/s1243808733/android/dx/command/dump/Args;",
            ")V"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/s1243808733/android/dx/command/dump/SsaDumper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/s1243808733/android/dx/command/dump/SsaDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    .line 56
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->dump()V

    return-void
.end method


# virtual methods
.method public endParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/s1243808733/android/dx/cf/iface/Member;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/ByteArray;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/s1243808733/android/dx/cf/iface/Member;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 77
    instance-of v0, p5, Lcom/s1243808733/android/dx/cf/iface/Method;

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {p5}, Lcom/s1243808733/android/dx/cf/iface/Member;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x500

    if-nez v0, :cond_0

    .line 90
    new-instance v5, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    check-cast p5, Lcom/s1243808733/android/dx/cf/iface/Method;

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v5, p5, v0, v1, v2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/s1243808733/android/dx/cf/iface/Method;Lcom/s1243808733/android/dx/cf/iface/ClassFile;ZZ)V

    .line 92
    sget-object v4, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    .line 93
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-static {v5, v4, v0, v1}, Lcom/s1243808733/android/dx/cf/code/Ropper;->convert(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    move-object v3, v1

    check-cast v3, Lcom/s1243808733/android/dx/ssa/SsaMethod;

    .line 95
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v1

    invoke-static {v1}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v2

    .line 96
    invoke-static {v5, v2}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->computeParamWidth(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Z)I

    move-result v1

    .line 98
    iget-object v5, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v5, v5, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 99
    :try_start_0
    const-string v3, "com.s1243808733.android.dx.ssa.Optimizer$OptionalStep"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/android/dx/ssa/Optimizer;->debugNoRegisterAllocation(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;Ljava/util/EnumSet;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v3

    .line 116
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x7d0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 118
    const-string v0, "first "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getEntryBlockIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    sget-object v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->LABEL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 171
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/s1243808733/android/dx/command/dump/SsaDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    goto/16 :goto_0

    .line 99
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_3
    const-string v5, "edge-split"

    iget-object v6, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v6, v6, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 103
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/ssa/Optimizer;->debugEdgeSplit(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v3

    goto :goto_1

    .line 105
    :cond_4
    const-string v5, "phi-placement"

    iget-object v6, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v6, v6, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 106
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/ssa/Optimizer;->debugPhiPlacement(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v3

    goto :goto_1

    .line 108
    :cond_5
    const-string v5, "renaming"

    iget-object v6, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v6, v6, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 109
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/ssa/Optimizer;->debugRenaming(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v3

    goto/16 :goto_1

    .line 111
    :cond_6
    const-string v5, "dead-code"

    iget-object v6, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v6, v6, Lcom/s1243808733/android/dx/command/dump/Args;->ssaStep:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/ssa/Optimizer;->debugDeadCodeRemover(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v3

    goto/16 :goto_1

    .line 128
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;

    .line 129
    const-string v0, "block "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result v5

    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v5

    .line 134
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 135
    :goto_3
    if-gez v0, :cond_9

    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "  live in:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getLiveInRegs()Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 147
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 150
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-nez v0, :cond_b

    .line 151
    const-string v0, "  returns\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "  live out:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getLiveOutRegs()Lcom/s1243808733/android/dx/util/IntSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 136
    :cond_9
    const-string v6, "  pred "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->blockIndexToRopLabel(I)I

    move-result v6

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_3

    .line 144
    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/ssa/SsaInsn;

    .line 145
    const-string v6, "  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/ssa/SsaInsn;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 153
    :cond_b
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorRopLabel()I

    move-result v5

    .line 155
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/ssa/SsaBasicBlock;->getRopLabelSuccessorList()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v6

    .line 157
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v7

    .line 159
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v7, :cond_8

    .line 160
    const-string v8, "  next "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v8

    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const/4 v8, 0x1

    if-eq v7, v8, :cond_c

    invoke-virtual {v6, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v8

    if-ne v5, v8, :cond_c

    .line 164
    const-string v8, " *"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_c
    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
