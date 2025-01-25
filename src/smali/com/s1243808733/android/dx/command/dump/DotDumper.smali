.class public Lcom/s1243808733/android/dx/command/dump/DotDumper;
.super Ljava/lang/Object;
.source "DotDumper.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/ParseObserver;


# instance fields
.field private final args:Lcom/s1243808733/android/dx/command/dump/Args;

.field private final bytes:[B

.field private classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

.field private final dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

.field private final filePath:Ljava/lang/String;

.field private final optimize:Z

.field private final strictParse:Z


# direct methods
.method constructor <init>([BLjava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->bytes:[B

    .line 58
    iput-object p2, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->filePath:Ljava/lang/String;

    .line 59
    iget-boolean p1, p3, Lcom/s1243808733/android/dx/command/dump/Args;->strictParse:Z

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->strictParse:Z

    .line 60
    iget-boolean p1, p3, Lcom/s1243808733/android/dx/command/dump/Args;->optimize:Z

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->optimize:Z

    .line 61
    iput-object p3, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    .line 62
    new-instance p1, Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/dex/DexOptions;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    return-void
.end method

.method static dump([BLjava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V
    .registers 4

    .line 53
    new-instance v0, Lcom/s1243808733/android/dx/command/dump/DotDumper;

    invoke-direct {v0, p0, p1, p2}, Lcom/s1243808733/android/dx/command/dump/DotDumper;-><init>([BLjava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dump/DotDumper;->run()V

    return-void
.end method

.method private run()V
    .registers 5

    .line 66
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArray;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->bytes:[B

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([B)V

    .line 72
    new-instance v1, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->filePath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->strictParse:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    .line 73
    sget-object v2, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 74
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic()I

    .line 77
    new-instance v1, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->filePath:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->strictParse:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;Ljava/lang/String;Z)V

    .line 79
    sget-object v0, Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;->THE_ONE:Lcom/s1243808733/android/dx/cf/direct/StdAttributeFactory;

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setAttributeFactory(Lcom/s1243808733/android/dx/cf/direct/AttributeFactory;)V

    .line 80
    invoke-virtual {v1, p0}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V

    .line 81
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMagic()I

    return-void
.end method


# virtual methods
.method public changeIndent(I)V
    .registers 2

    return-void
.end method

.method public endParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/s1243808733/android/dx/cf/iface/Member;)V
    .registers 22

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    instance-of v3, v2, Lcom/s1243808733/android/dx/cf/iface/Method;

    if-nez v3, :cond_b

    return-void

    .line 116
    :cond_b
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/command/dump/DotDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    return-void

    .line 120
    :cond_12
    new-instance v3, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    check-cast v2, Lcom/s1243808733/android/dx/cf/iface/Method;

    iget-object v4, v0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5, v5}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/s1243808733/android/dx/cf/iface/Method;Lcom/s1243808733/android/dx/cf/iface/ClassFile;ZZ)V

    .line 123
    sget-object v2, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    .line 124
    iget-object v4, v0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    .line 125
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object v4

    iget-object v6, v0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-static {v3, v2, v4, v6}, Lcom/s1243808733/android/dx/cf/code/Ropper;->convert(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v4

    .line 127
    iget-boolean v6, v0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->optimize:Z

    if-eqz v6, :cond_3e

    .line 128
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v6

    invoke-static {v6}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v6

    .line 130
    invoke-static {v3, v6}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->computeParamWidth(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Z)I

    move-result v3

    .line 129
    invoke-static {v4, v3, v6, v5, v2}, Lcom/s1243808733/android/dx/ssa/Optimizer;->optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v4

    .line 134
    :cond_3e
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "digraph "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\tfirst -> n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v3

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_80
    if-ge v6, v2, :cond_161

    .line 143
    invoke-virtual {v1, v6}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v7

    .line 144
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v8

    .line 145
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v9

    .line 147
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v10

    const-string v11, "\tn"

    if-nez v10, :cond_b2

    .line 148
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " -> returns;"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_15c

    .line 149
    :cond_b2
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v10

    const-string v12, " -> n"

    if-ne v10, v5, :cond_e2

    .line 150
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v9, v4}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v8

    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 150
    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_15c

    .line 153
    :cond_e2
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " -> {"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v10, 0x0

    .line 154
    :goto_fd
    invoke-virtual {v9}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v13

    if-ge v10, v13, :cond_12d

    .line 155
    invoke-virtual {v9, v10}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v13

    .line 157
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v14

    if-eq v13, v14, :cond_129

    .line 158
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v4, " n"

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_129
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_fd

    .line 162
    :cond_12d
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "};"

    invoke-virtual {v4, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v7

    invoke-static {v7}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " [label=\"primary\"];"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 164
    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_15c
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto/16 :goto_80

    .line 172
    :cond_161
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V
    .registers 5

    return-void
.end method

.method protected shouldDumpMethod(Ljava/lang/String;)Z
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->method:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

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
    .registers 5

    return-void
.end method
