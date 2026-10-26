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
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->bytes:[B

    .line 58
    iput-object p2, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->filePath:Ljava/lang/String;

    .line 59
    iget-boolean v0, p3, Lcom/s1243808733/android/dx/command/dump/Args;->strictParse:Z

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->strictParse:Z

    .line 60
    iget-boolean v0, p3, Lcom/s1243808733/android/dx/command/dump/Args;->optimize:Z

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->optimize:Z

    .line 61
    iput-object p3, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    .line 62
    new-instance v0, Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/DexOptions;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    return-void
.end method

.method static dump([BLjava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/s1243808733/android/dx/command/dump/DotDumper;

    invoke-direct {v0, p0, p1, p2}, Lcom/s1243808733/android/dx/command/dump/DotDumper;-><init>([BLjava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V

    invoke-direct {v0}, Lcom/s1243808733/android/dx/command/dump/DotDumper;->run()V

    return-void
.end method

.method private run()V
    .locals 4

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
    .locals 0

    return-void
.end method

.method public endParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/s1243808733/android/dx/cf/iface/Member;)V
    .locals 12

    .line 112
    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/s1243808733/android/dx/cf/iface/Method;

    if-nez v1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/command/dump/DotDumper;->shouldDumpMethod(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    new-instance v2, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;

    check-cast p5, Lcom/s1243808733/android/dx/cf/iface/Method;

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p5

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;-><init>(Lcom/s1243808733/android/dx/cf/iface/Method;Lcom/s1243808733/android/dx/cf/iface/ClassFile;ZZ)V

    .line 123
    sget-object v3, Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/s1243808733/android/dx/rop/code/DexTranslationAdvice;

    .line 124
    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->classFile:Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;

    .line 125
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/cf/direct/DirectClassFile;->getMethods()Lcom/s1243808733/android/dx/cf/iface/MethodList;

    move-result-object v1

    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-static {v2, v3, v1, v4}, Lcom/s1243808733/android/dx/cf/code/Ropper;->convert(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Lcom/s1243808733/android/dx/rop/code/TranslationAdvice;Lcom/s1243808733/android/dx/cf/iface/MethodList;Lcom/s1243808733/android/dx/dex/DexOptions;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v1

    .line 127
    iget-boolean v4, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->optimize:Z

    if-eqz v4, :cond_2

    .line 128
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/rop/code/AccessFlags;->isStatic(I)Z

    move-result v4

    .line 130
    invoke-static {v2, v4}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->computeParamWidth(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Z)I

    move-result v2

    .line 129
    const/4 v5, 0x1

    invoke-static {v1, v2, v4, v5, v3}, Lcom/s1243808733/android/dx/ssa/Optimizer;->optimize(Lcom/s1243808733/android/dx/rop/code/RopMethod;IZZLcom/s1243808733/android/dx/rop/code/TranslationAdvice;)Lcom/s1243808733/android/dx/rop/code/RopMethod;

    move-result-object v1

    .line 134
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "digraph "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\tfirst -> n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v4

    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RopMethod;->getBlocks()Lcom/s1243808733/android/dx/rop/code/BasicBlockList;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->size()I

    move-result v4

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_7

    .line 143
    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/BasicBlockList;->get(I)Lcom/s1243808733/android/dx/rop/code/BasicBlock;

    move-result-object v5

    .line 144
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v6

    .line 145
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/s1243808733/android/dx/util/IntList;

    move-result-object v7

    .line 147
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 148
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "\tn"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> returns;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_4

    .line 150
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "\tn"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v6

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 153
    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\tn"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -> {"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 154
    :goto_3
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/util/IntList;->size()I

    move-result v8

    if-ge v1, v8, :cond_6

    .line 155
    invoke-virtual {v7, v1}, Lcom/s1243808733/android/dx/util/IntList;->get(I)I

    move-result v8

    .line 157
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v9

    if-eq v8, v9, :cond_5

    .line 158
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, " n"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 162
    :cond_6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "};"

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\tn"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v5

    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " [label=\"primary\"];"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 172
    :cond_7
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected shouldDumpMethod(Ljava/lang/String;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    iget-object v0, v0, Lcom/s1243808733/android/dx/command/dump/Args;->method:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/DotDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

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
    .locals 0

    return-void
.end method
