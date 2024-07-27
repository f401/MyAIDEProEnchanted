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
    .registers 8

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;-><init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    .line 95
    iput-boolean p4, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->rop:Z

    .line 96
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

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
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/io/PrintStream;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/s1243808733/android/dx/command/dump/Args;",
            ")V"
        }
    .end annotation

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
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;",
            ")V"
        }
    .end annotation

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v6

    .line 208
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v7

    .line 209
    invoke-static/range {p1 .. p1}, Lcom/s1243808733/android/dx/cf/code/BasicBlocker;->identifyBlocks(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)Lcom/s1243808733/android/dx/cf/code/ByteBlockList;

    move-result-object v8

    .line 210
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->size()I

    move-result v9

    .line 211
    new-instance v10, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;

    move-object/from16 v0, p0

    invoke-direct {v10, v7, v0}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 213
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 215
    const/4 v2, 0x0

    .line 216
    const/4 v4, 0x0

    move v3, v2

    move v5, v4

    :goto_0
    if-lt v5, v9, :cond_1

    .line 264
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v2

    .line 265
    if-ge v3, v2, :cond_0

    .line 266
    sub-int v4, v2, v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "dead code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, ".."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3, v4, v2}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 270
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    return-void

    .line 217
    :cond_1
    invoke-virtual {v8, v5}, Lcom/s1243808733/android/dx/cf/code/ByteBlockList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteBlock;

    move-result-object v11

    .line 218
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getStart()I

    move-result v2

    .line 219
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getEnd()I

    move-result v4

    .line 221
    if-ge v3, v2, :cond_2

    .line 222
    sub-int v12, v2, v3

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "dead code "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3, v12, v13}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 226
    :cond_2
    const/4 v3, 0x0

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "block "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual {v11}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ".."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2, v3, v12}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 229
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->changeIndent(I)V

    .line 232
    :goto_1
    if-lt v2, v4, :cond_4

    .line 237
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v3

    .line 238
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v12

    .line 239
    if-nez v12, :cond_5

    .line 240
    const/4 v2, 0x0

    const-string v3, "returns"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v2, v3}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 248
    :cond_3
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/cf/code/ByteBlock;->getCatches()Lcom/s1243808733/android/dx/cf/code/ByteCatchList;

    move-result-object v11

    .line 249
    invoke-virtual {v11}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->size()I

    move-result v12

    .line 250
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-lt v3, v12, :cond_6

    .line 260
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->changeIndent(I)V

    .line 216
    add-int/lit8 v2, v5, 0x1

    move v3, v4

    move v5, v2

    goto/16 :goto_0

    .line 233
    :cond_4
    invoke-virtual {v6, v2, v10}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/s1243808733/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v3

    .line 234
    invoke-virtual {v10, v2}, Lcom/s1243808733/android/dx/cf/direct/CodeObserver;->setPreviousOffset(I)V

    .line 232
    add-int/2addr v2, v3

    goto :goto_1

    .line 242
    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v12, :cond_3

    .line 243
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v13

    .line 244
    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "next "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-static {v13}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4, v14, v13}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 251
    :cond_6
    invoke-virtual {v11, v3}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList;->get(I)Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v13

    .line 252
    invoke-virtual {v13}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    .line 253
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "catch "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    sget-object v17, Lcom/s1243808733/android/dx/rop/cst/CstType;->OBJECT:Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-object/from16 v0, v17

    if-ne v2, v0, :cond_7

    const-string v2, "<any>"

    :goto_4
    const/16 v17, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v15, " -> "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v13}, Lcom/s1243808733/android/dx/cf/code/ByteCatchList$Item;->getHandlerPc()I

    move-result v13

    invoke-static {v13}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v4, v1, v2}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 250
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    .line 253
    :cond_7
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method private ropDump(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;",
            ")V"
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 279
    sget-object v1, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    .line 280
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getCode()Lcom/s1243808733/android/dx/cf/code/BytecodeArray;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/code/BytecodeArray;->getBytes()Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v4

    .line 282
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object v0

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-static {p1, v1, v0, v3}, Lcom/s1243808733/android/dx/cf/code/Ropper;->convert(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v3, 0x7d0

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 285
    iget-boolean v3, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->optimize:Z

    if-eqz v3, :cond_0

    .line 286
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v3

    .line 287
    invoke-static {p1, v3}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->computeParamWidth(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Z)I

    move-result v6

    .line 288
    invoke-static {v0, v6, v3, v13, v1}, Lcom/s1243808733/android/dx/ssa/Optimizer;->optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v0

    .line 292
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v6

    .line 293
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->getLabelsInOrder()[I

    move-result-object v7

    .line 295
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "first "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v8

    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 326
    :goto_0
    array-length v3, v7

    if-lt v1, v3, :cond_1

    .line 340
    iput-boolean v2, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 341
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v2, v0, v1}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 342
    iput-boolean v13, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    return-void

    .line 297
    :cond_1
    aget v3, v7, v1

    .line 298
    invoke-virtual {v6, v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v8

    .line 299
    const-string v9, "block "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v9

    .line 304
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v10

    move v3, v2

    .line 305
    :goto_1
    if-lt v3, v10, :cond_3

    .line 311
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getInsns()Lcom/s1243808733/android/dx/rop/code/InsnList;

    move-result-object v9

    .line 312
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v10

    move v3, v2

    .line 313
    :goto_2
    if-lt v3, v10, :cond_4

    .line 320
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v9

    .line 321
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v10

    .line 322
    if-nez v10, :cond_5

    .line 323
    const-string v3, "  returns\n"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    :cond_3
    const-string v11, "  pred "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v9, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v11

    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v11, "\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 314
    :cond_4
    invoke-virtual {v9, v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    .line 315
    const-string v11, "  "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v9, v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v11

    invoke-virtual {v11}, Lcom/s1243808733/android/dx/rop/code/Insn;->toHuman()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v11, "\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 325
    :cond_5
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v8

    move v3, v2

    .line 326
    :goto_3
    if-ge v3, v10, :cond_2

    .line 327
    invoke-virtual {v9, v3}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v11

    .line 328
    const-string v12, "  next "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {v11}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    if-eq v10, v13, :cond_6

    if-ne v11, v8, :cond_6

    .line 332
    const-string v11, " *"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_6
    const-string v11, "\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public changeIndent(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 128
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    if-nez v0, :cond_0

    .line 129
    invoke-super {p0, p1}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->changeIndent(I)V

    :cond_0
    return-void
.end method

.method public dump()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

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
    .registers 9
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/ByteArray;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 136
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected shouldDumpMethod(Ljava/lang/String;)Z
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->method:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/ByteArray;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x0

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
    iput-boolean v4, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    .line 164
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->first:Z

    if-eqz v0, :cond_2

    .line 165
    iput-boolean v4, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->first:Z

    .line 170
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v4, v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->suppressDump:Z

    goto :goto_0

    .line 167
    :cond_2
    const-string v0, "\n"

    invoke-virtual {p0, p1, p2, v4, v0}, Lcom/s1243808733/android/dx/command/dump/BlockDumper;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    goto :goto_1
.end method
