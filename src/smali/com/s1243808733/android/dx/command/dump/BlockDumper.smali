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
    .registers 6

    .line 93
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    .line 95
    iput-boolean p4, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->rop:Z

    .line 96
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    .line 97
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 98
    iput-boolean p1, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->first:Z

    .line 99
    iget-boolean p1, p5, Lcom/s1243808733/android/dx/command/dump/Args;->optimize:Z

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->optimize:Z

    return-void
.end method

.method public static dump([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/s1243808733/android/dx/command/dump/Args;)V
    .registers 12

    .line 82
    new-instance v6, Lcom/s1243808733/android/dx/command/dump/BlockDumper;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;ZLcom/s1243808733/android/dx/command/dump/Args;)V

    .line 84
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->dump()V

    return-void
.end method

.method private regularDump(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V
    .registers 16

    .line 207
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v1

    .line 209
    invoke-static {p1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->identifyBlocks(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)Lcom/s1243808733/android/dx/cf/code/ByteBlockList;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->size()I

    move-result v2

    .line 211
    new-instance v3, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;

    invoke-direct {v3, v1, p0}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 213
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 216
    :goto_1a
    const-string v7, "dead code "

    const-string v8, ".."

    const/4 v9, 0x1

    if-ge v5, v2, :cond_105

    .line 217
    invoke-virtual {p1, v5}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    move-result-object v10

    .line 218
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getStart()I

    move-result v11

    .line 219
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getEnd()I

    move-result v12

    if-ge v6, v11, :cond_4e

    .line 222
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 222
    sub-int v13, v11, v6

    invoke-virtual {p0, v1, v6, v13, v7}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 226
    :cond_4e
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "block "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v7

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 226
    invoke-virtual {p0, v1, v11, v4, v6}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 229
    invoke-virtual {p0, v9}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->changeIndent(I)V

    :goto_80
    if-ge v11, v12, :cond_8b

    .line 233
    invoke-virtual {v0, v11, v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v6

    .line 234
    invoke-virtual {v3, v11}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->setPreviousOffset(I)V

    add-int/2addr v11, v6

    goto :goto_80

    .line 237
    :cond_8b
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v6

    .line 238
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v7

    if-nez v7, :cond_9b

    .line 240
    const-string v6, "returns"

    invoke-virtual {p0, v1, v12, v4, v6}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    goto :goto_ba

    :cond_9b
    const/4 v8, 0x0

    :goto_9c
    if-ge v8, v7, :cond_ba

    .line 243
    invoke-virtual {v6, v8}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v9

    .line 244
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "next "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v1, v12, v4, v9}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9c

    .line 248
    :cond_ba
    :goto_ba
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v6

    .line 249
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_c3
    if-ge v8, v7, :cond_fc

    .line 251
    invoke-virtual {v6, v8}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v9

    .line 252
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v10

    .line 253
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "catch "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    sget-object v13, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    if-ne v10, v13, :cond_db

    const-string v10, "<any>"

    goto :goto_df

    .line 256
    :cond_db
    invoke-virtual {v10}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v10

    :goto_df
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " -> "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getHandlerPc()I

    move-result v9

    invoke-static {v9}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 253
    invoke-virtual {p0, v1, v12, v4, v9}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c3

    .line 260
    :cond_fc
    const/4 v6, -0x1

    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->changeIndent(I)V

    add-int/lit8 v5, v5, 0x1

    move v6, v12

    goto/16 :goto_1a

    .line 264
    :cond_105
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result p1

    if-ge v6, p1, :cond_129

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    sub-int/2addr p1, v6

    invoke-virtual {p0, v1, v6, p1, v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 270
    :cond_129
    iput-boolean v9, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    return-void
.end method

.method private ropDump(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V
    .registers 18

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v3

    .line 281
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v3

    .line 282
    iget-object v4, v0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object v4

    iget-object v5, v0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-static {v1, v2, v4, v5}, Lcom/s1243808733/android/dx/cf/code/Ropper;->convert(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v4

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x7d0

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 285
    iget-boolean v6, v0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->optimize:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_36

    .line 286
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v6

    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v6

    .line 287
    invoke-static {v1, v6}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->computeParamWidth(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Z)I

    move-result v1

    .line 289
    invoke-static {v4, v1, v6, v7, v2}, Lcom/s1243808733/android/dx/ssa/Optimizer;->optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v4

    .line 292
    :cond_36
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    .line 293
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getLabelsInOrder()[I

    move-result-object v2

    .line 295
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "first "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v8

    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    array-length v6, v2

    const/4 v10, 0x0

    :goto_5e
    if-ge v10, v6, :cond_f8

    aget v11, v2, v10

    .line 298
    invoke-virtual {v1, v11}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v12

    .line 299
    const-string v13, "block "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v4, v11}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v11

    .line 304
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_82
    if-ge v14, v13, :cond_9a

    .line 306
    const-string v15, "  pred "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v11, v14}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v15

    invoke-static {v15}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_82

    .line 311
    :cond_9a
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v11

    .line 312
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_a3
    if-ge v14, v13, :cond_be

    .line 314
    invoke-virtual {v11, v14}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    .line 315
    const-string v15, "  "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v11, v14}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v15

    invoke-virtual {v15}, Lcom/s1243808733/android/dx/rop/code/Insn;->toHuman()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_a3

    .line 320
    :cond_be
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v11

    .line 321
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v13

    if-nez v13, :cond_ce

    .line 323
    const-string v11, "  returns\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f4

    .line 325
    :cond_ce
    invoke-virtual {v12}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v12

    const/4 v14, 0x0

    :goto_d3
    if-ge v14, v13, :cond_f4

    .line 327
    invoke-virtual {v11, v14}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v15

    .line 328
    const-string v9, "  next "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {v15}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v13, v7, :cond_ee

    if-ne v15, v12, :cond_ee

    .line 332
    const-string v9, " *"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_ee
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_d3

    :cond_f4
    :goto_f4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5e

    .line 340
    :cond_f8
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 341
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 342
    iput-boolean v7, v0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    return-void
.end method


# virtual methods
.method public changeIndent(I)V
    .registers 3

    .line 128
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    if-nez v0, :cond_7

    .line 129
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->changeIndent(I)V

    :cond_7
    return-void
.end method

.method public dump()V
    .registers 5

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
    nop

    .line 119
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
    .registers 6

    .line 178
    instance-of p1, p5, Lcom/s1243808733/android/dx/cf/iface/Method;

    if-nez p1, :cond_5

    return-void

    .line 182
    :cond_5
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    .line 186
    :cond_c
    invoke-interface {p5}, Lcom/s1243808733/android/dx/cf/iface/Member;->getAccessFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x500

    if-eqz p1, :cond_15

    return-void

    .line 191
    :cond_15
    new-instance p1, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    check-cast p5, Lcom/s1243808733/android/dx/cf/iface/Method;

    iget-object p2, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    const/4 p3, 0x1

    invoke-direct {p1, p5, p2, p3, p3}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/s1243808733/android/dx/cf/iface/Method;Lcom/s1243808733/android/dx/cf/iface/ClassFile;ZZ)V

    .line 194
    iget-boolean p2, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->rop:Z

    if-eqz p2, :cond_27

    .line 195
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->ropDump(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V

    goto :goto_2a

    .line 197
    :cond_27
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->regularDump(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V

    :goto_2a
    return-void
.end method

.method public parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V
    .registers 6

    .line 136
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    if-nez v0, :cond_7

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected shouldDumpMethod(Ljava/lang/String;)Z
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->method:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->method:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public startParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 153
    const/16 v0, 0x28

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    return-void

    .line 158
    :cond_9
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 162
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 164
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->first:Z

    if-eqz v1, :cond_1a

    .line 165
    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->first:Z

    goto :goto_1f

    .line 167
    :cond_1a
    const-string v1, "\n"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 170
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 171
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    return-void
.end method
