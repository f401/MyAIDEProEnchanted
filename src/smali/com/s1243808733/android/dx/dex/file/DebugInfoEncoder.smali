.class public final Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;
.super Ljava/lang/Object;
.source "DebugInfoEncoder.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private address:I

.field private annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

.field private final codeSize:I

.field private debugPrint:Ljava/io/PrintWriter;

.field private final desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

.field private final file:Lcom/s1243808733/android/dx/dex/file/DexFile;

.field private final isStatic:Z

.field private final lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

.field private line:I

.field private final locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

.field private final output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

.field private final positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

.field private prefix:Ljava/lang/String;

.field private final regSize:I

.field private shouldConsume:Z


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/PositionList;Lcom/s1243808733/android/dx/dex/code/LocalList;Lcom/s1243808733/android/dx/dex/file/DexFile;IIZLcom/s1243808733/android/dx/rop/cst/CstMethodRef;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 119
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

    .line 120
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    .line 121
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 122
    invoke-virtual {p7}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 123
    iput-boolean p6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    .line 124
    iput p4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->codeSize:I

    .line 125
    iput p5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    .line 127
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    .line 128
    new-array v0, p5, [Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    return-void
.end method

.method private annotate(ILjava/lang/String;)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-eqz v0, :cond_1

    .line 144
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->shouldConsume:Z

    if-eqz v1, :cond_3

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 144
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private buildSortedPositions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    .line 495
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

    if-nez v0, :cond_0

    move v0, v1

    .line 496
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v1, v0, :cond_1

    .line 499
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/dex/code/PositionList;->get(I)Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 495
    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/PositionList;->size()I

    move-result v0

    goto :goto_0

    .line 503
    :cond_1
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$1;-><init>(Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private static computeOpcode(II)I
    .locals 2

    const/4 v0, -0x4

    if-lt p0, v0, :cond_0

    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x4

    mul-int/lit8 v1, p1, 0xf

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 848
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter out of range"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convert0()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    const v3, 0x7fffffff

    .line 202
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->buildSortedPositions()Ljava/util/ArrayList;

    move-result-object v5

    .line 203
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->extractMethodArguments()Ljava/util/ArrayList;

    move-result-object v0

    .line 205
    invoke-direct {p0, v5, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitHeader(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 208
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 210
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    const-string v0, "%04x: prologue end"

    new-array v2, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 214
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 215
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v7

    move v0, v1

    move v2, v1

    .line 227
    :goto_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalsAtAddress(I)I

    move-result v1

    .line 229
    invoke-direct {p0, v2, v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitPositionsAtAddress(ILjava/util/ArrayList;)I

    move-result v2

    if-ge v1, v7, :cond_3

    .line 239
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v0

    move v4, v0

    :goto_1
    if-ge v2, v6, :cond_4

    .line 243
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v0

    .line 246
    :goto_2
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ne v8, v3, :cond_5

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitEndSequence()V

    .line 273
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_3
    move v4, v3

    .line 239
    goto :goto_1

    :cond_4
    move v0, v3

    .line 243
    goto :goto_2

    .line 257
    :cond_5
    iget v9, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->codeSize:I

    if-ne v8, v9, :cond_6

    if-ne v4, v3, :cond_6

    if-eq v0, v3, :cond_2

    .line 273
    :cond_6
    if-ne v8, v0, :cond_7

    .line 265
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    .line 267
    :cond_7
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    sub-int v0, v8, v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    move v0, v1

    goto :goto_0
.end method

.method private emitAdvanceLine(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 865
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 866
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeSleb128(I)I

    .line 867
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 869
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 870
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 871
    const-string v3, "line = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 870
    sub-int v0, v1, v0

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitAdvancePc(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    .line 887
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 889
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 890
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 891
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 893
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 894
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 895
    const-string v3, "%04x: advance pc"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 894
    sub-int v0, v1, v0

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitEndSequence()V
    .locals 2

    .line 926
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 928
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 929
    :cond_0
    const/4 v0, 0x1

    const-string v1, "end sequence"

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitHeader(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_a

    :cond_0
    move v1, v3

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v4

    .line 383
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 384
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    .line 385
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    iget v6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-virtual {v0, v6}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    if-eqz v1, :cond_2

    .line 390
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "line_start: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 393
    :cond_2
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->getParamBase()I

    move-result v4

    .line 395
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v6

    .line 396
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v7

    .line 402
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    if-nez v0, :cond_12

    .line 403
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 404
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v9

    if-ne v4, v9, :cond_3

    .line 405
    iget-object v8, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    aput-object v0, v8, v4

    :cond_4
    add-int/lit8 v0, v4, 0x1

    .line 413
    :goto_1
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v4

    .line 414
    iget-object v8, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v8, v7}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    if-eqz v1, :cond_5

    .line 417
    iget-object v8, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v8

    .line 418
    const-string v9, "parameters_size: %04x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v2

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 417
    sub-int v4, v8, v4

    invoke-direct {p0, v4, v3}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_5
    move v3, v0

    move v4, v2

    :goto_2
    if-ge v4, v7, :cond_e

    .line 426
    invoke-virtual {v6, v4}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v8

    .line 429
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v9

    .line 431
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 432
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v11

    if-ne v3, v11, :cond_6

    .line 435
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 440
    invoke-direct {p0, v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 444
    :goto_3
    iget-object v10, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    aput-object v0, v10, v3

    :goto_4
    if-nez v0, :cond_7

    .line 456
    invoke-direct {p0, v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    :cond_7
    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    .line 461
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 462
    :cond_8
    const-string v0, "<unnamed>"

    .line 463
    :goto_5
    iget-object v10, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v10}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "parameter "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " v"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sub-int v0, v10, v9

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 468
    :cond_9
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_2

    :cond_a
    move v1, v2

    .line 379
    goto/16 :goto_0

    .line 442
    :cond_b
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    goto :goto_3

    :cond_c
    move-object v0, v5

    .line 444
    goto :goto_4

    .line 462
    :cond_d
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 476
    :cond_e
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    array-length v1, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    if-nez v3, :cond_10

    .line 484
    :cond_f
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 481
    :cond_10
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 484
    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalStartExtended(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_7

    :cond_11
    return-void

    :cond_12
    move v0, v4

    goto/16 :goto_1
.end method

.method private emitLocalEnd(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 762
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 763
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 765
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 767
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%04x: -local %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 766
    sub-int v0, v1, v0

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitLocalRestart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 628
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 629
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    .line 631
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 634
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v3

    .line 633
    const-string v4, "%04x: +local restart %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 632
    sub-int v0, v1, v0

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitLocalStart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 698
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalStartExtended(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 704
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 706
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    .line 707
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 708
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitTypeIndex(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 710
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    .line 711
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 712
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%04x: +local %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 711
    sub-int v0, v1, v0

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private emitLocalStartExtended(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 733
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 735
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitUnsignedLeb128(I)V

    .line 736
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 737
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitTypeIndex(Lcom/s1243808733/android/dx/rop/cst/CstType;)V

    .line 738
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 740
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_1

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 742
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%04x: +localx %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 741
    sub-int v0, v1, v0

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitLocalsAtAddress(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_5

    .line 292
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    .line 293
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    if-ne v1, v2, :cond_5

    .line 294
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v2

    .line 296
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    aget-object v4, v3, v2

    if-ne v1, v4, :cond_1

    .line 340
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 308
    :cond_1
    aput-object v1, v3, v2

    .line 310
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    .line 311
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->matches(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 317
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v2

    if-nez v2, :cond_2

    .line 324
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalRestart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_1

    .line 322
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_3
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalStart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_1

    .line 338
    :cond_4
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v2

    sget-object v3, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-eq v2, v3, :cond_0

    .line 340
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalEnd(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_1

    :cond_5
    return p1
.end method

.method private emitPosition(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 787
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 788
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    .line 789
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v2

    .line 793
    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    sub-int/2addr v0, v3

    .line 794
    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    sub-int v3, v2, v3

    if-ltz v3, :cond_6

    const/4 v2, -0x4

    if-lt v0, v2, :cond_0

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 803
    :cond_0
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    move v0, v1

    .line 807
    :cond_1
    invoke-static {v0, v3}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v2

    and-int/lit16 v4, v2, -0x100

    if-lez v4, :cond_2

    .line 810
    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    .line 812
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v2

    and-int/lit16 v3, v2, -0x100

    if-lez v3, :cond_5

    .line 815
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    .line 817
    invoke-static {v1, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v2

    move v0, v1

    move v3, v1

    .line 821
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v4, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 823
    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 824
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 826
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v2, :cond_4

    .line 828
    :cond_3
    const-string v2, "%04x: line %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-direct {p0, v5, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    move v3, v1

    .line 817
    goto :goto_0

    .line 797
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position entries must be in ascending address order"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private emitPositionsAtAddress(ILjava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_0

    .line 361
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v0

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    if-ne v0, v2, :cond_0

    .line 363
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    if-nez v0, :cond_1

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    .line 656
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v0

    .line 655
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_0
.end method

.method private emitTypeIndex(Lcom/s1243808733/android/dx/rop/cst/CstType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 673
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    if-nez v0, :cond_1

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    :goto_0
    return-void

    .line 676
    :cond_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    .line 677
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v0

    .line 676
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_0
.end method

.method private emitUnsignedLeb128(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 918
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    return-void

    .line 914
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Signed value where unsigned required: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 592
    if-nez v1, :cond_1

    .line 593
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v1

    if-nez v1, :cond_2

    .line 601
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :goto_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 609
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 595
    :cond_1
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 603
    :cond_2
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private extractMethodArguments()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;",
            ">;"
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 540
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->getParamBase()I

    move-result v2

    .line 541
    new-instance v3, Ljava/util/BitSet;

    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    sub-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 542
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    .line 545
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v5

    .line 546
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v6

    if-ge v6, v2, :cond_1

    .line 558
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_1
    sub-int/2addr v6, v2

    .line 553
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 557
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 558
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 562
    :cond_2
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$2;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$2;-><init>(Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private getParamBase()I
    .locals 2

    .line 525
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 526
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public convert()[B
    .locals 2

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->convert0()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 172
    const-string v1, "...while encoding debug info"

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method public convertAndAnnotate(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Z)[B
    .locals 1

    .line 191
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    .line 193
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    .line 194
    iput-boolean p4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->shouldConsume:Z

    .line 196
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->convert()[B

    move-result-object v0

    return-object v0
.end method
