.class public Lcom/s1243808733/android/dx/command/dump/BlockDumper;
.super Lcom/s1243808733/android/dx/command/dump/BaseDumper;
.source "BlockDumper.java"


# instance fields
.field protected classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

.field private first:Z

.field private final optimize:Z

.field private final rop:Z

.field protected suppressDump:Z


# direct methods
.method constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/s1243808733/android/dx/command/dump/Args;)V
    .locals 2

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    .line 95
    iput-boolean p4, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->rop:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    .line 97
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 98
    iput-boolean v1, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->first:Z

    .line 99
    iget-boolean v0, p5, Lcom/s1243808733/android/dx/command/dump/Args;->optimize:Z

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->optimize:Z

    return-void
.end method

.method public static dump([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/s1243808733/android/dx/command/dump/Args;)V
    .locals 6

    .line 82
    new-instance v0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/s1243808733/android/dx/command/dump/Args;)V

    .line 84
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->dump()V

    return-void
.end method

.method private regularDump(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V
    .locals 14

    .line 207
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v4

    .line 208
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v5

    .line 209
    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->identifyBlocks(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)Lcom/s1243808733/android/dx/cf/code/ByteBlockList;

    move-result-object v6

    .line 210
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->size()I

    move-result v7

    .line 211
    new-instance v8, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;

    invoke-direct {v8, v5, p0}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    .line 216
    :goto_0
    if-ge v2, v7, :cond_6

    .line 217
    invoke-virtual {v6, v2}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    move-result-object v9

    .line 218
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getStart()I

    move-result v3

    .line 219
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getEnd()I

    move-result v1

    if-ge v0, v3, :cond_0

    .line 222
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "dead code "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 222
    sub-int v11, v3, v0

    invoke-virtual {p0, v5, v0, v11, v10}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 226
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "block "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v10

    invoke-static {v10}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    const/4 v10, 0x0

    invoke-virtual {p0, v5, v3, v10, v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->changeIndent(I)V

    move v0, v3

    :goto_1
    if-ge v0, v1, :cond_1

    .line 233
    invoke-virtual {v4, v0, v8}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v3

    .line 234
    invoke-virtual {v8, v0}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->setPreviousOffset(I)V

    add-int/2addr v0, v3

    goto :goto_1

    .line 237
    :cond_1
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 240
    const/4 v0, 0x0

    const-string v3, "returns"

    invoke-virtual {p0, v5, v1, v0, v3}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 248
    :cond_2
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v9

    .line 249
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v10

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    if-ge v3, v10, :cond_5

    .line 251
    invoke-virtual {v9, v3}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v11

    .line 252
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 253
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "catch "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    sget-object v13, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-ne v0, v13, :cond_4

    const-string v0, "<any>"

    .line 256
    :goto_3
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getHandlerPc()I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    const/4 v11, 0x0

    invoke-virtual {p0, v5, v1, v11, v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 240
    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v10, :cond_2

    .line 243
    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v11

    .line 244
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "next "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v5, v1, v11, v12}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 256
    :cond_4
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 260
    :cond_5
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->changeIndent(I)V

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto/16 :goto_0

    .line 264
    :cond_6
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dead code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    sub-int/2addr v1, v0

    invoke-virtual {p0, v5, v0, v1, v2}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 270
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    return-void
.end method

.method private ropDump(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V
    .locals 13

    .line 279
    sget-object v1, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    .line 280
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v3

    .line 282
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-static {p1, v1, v0, v2}, Lcom/s1243808733/android/dx/cf/code/Ropper;->convert(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v2, 0x7d0

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 285
    iget-boolean v2, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->optimize:Z

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v2

    .line 287
    invoke-static {p1, v2}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->computeParamWidth(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Z)I

    move-result v5

    .line 289
    const/4 v6, 0x1

    invoke-static {v0, v5, v2, v6, v1}, Lcom/s1243808733/android/dx/ssa/Optimizer;->optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v5

    .line 293
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getLabelsInOrder()[I

    move-result-object v6

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "first "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v2

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    array-length v7, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_6

    aget v2, v6, v1

    .line 298
    invoke-virtual {v5, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v8

    .line 299
    const-string v9, "block "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v9

    .line 304
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v10

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_1

    .line 306
    const-string v11, "  pred "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v9, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v11

    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v11, "\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 311
    :cond_1
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v9

    .line 312
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v10

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_2

    .line 314
    invoke-virtual {v9, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    .line 315
    const-string v11, "  "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v9, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v11

    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/Insn;->toHuman()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v11, "\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 320
    :cond_2
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v9

    .line 321
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v10

    if-nez v10, :cond_4

    .line 323
    const-string v2, "  returns\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_4
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v8

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v10, :cond_3

    .line 327
    invoke-virtual {v9, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v11

    .line 328
    const-string v12, "  next "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    if-eq v10, v12, :cond_5

    if-ne v11, v8, :cond_5

    .line 332
    const-string v11, " *"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_5
    const-string v11, "\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 340
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 341
    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    return-void
.end method


# virtual methods
.method public changeIndent(I)V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    if-nez v0, :cond_0

    .line 129
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->changeIndent(I)V

    :cond_0
    return-void
.end method

.method public dump()V
    .locals 4

    .line 106
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->getBytes()[B

    move-result-object v0

    .line 107
    new-instance v1, Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([B)V

    .line 113
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->getStrictParse()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    .line 114
    sget-object v2, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 115
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic()I

    .line 118
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->getStrictParse()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    .line 120
    sget-object v1, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 121
    invoke-virtual {v0, p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 122
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic()I

    return-void
.end method

.method public endParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/s1243808733/android/dx/cf/iface/Member;)V
    .locals 3

    const/4 v2, 0x1

    .line 178
    instance-of v0, p5, Lcom/s1243808733/android/dx/cf/iface/Method;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {p5}, Lcom/s1243808733/android/dx/cf/iface/Member;->getAccessFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x500

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    check-cast p5, Lcom/s1243808733/android/dx/cf/iface/Method;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-direct {v0, p5, v1, v2, v2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/s1243808733/android/dx/cf/iface/Method;Lcom/s1243808733/android/dx/cf/iface/ClassFile;ZZ)V

    .line 194
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->rop:Z

    if-eqz v1, :cond_2

    .line 195
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->ropDump(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->regularDump(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V

    goto :goto_0
.end method

.method public parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected shouldDumpMethod(Ljava/lang/String;)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->method:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    .line 153
    const/16 v0, 0x28

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 164
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->first:Z

    if-eqz v0, :cond_2

    .line 165
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->first:Z

    .line 170
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    goto :goto_0

    .line 167
    :cond_2
    const-string v0, "\n"

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    goto :goto_1
.end method
