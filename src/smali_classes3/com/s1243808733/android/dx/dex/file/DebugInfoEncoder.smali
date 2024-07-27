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
    .registers 9

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    iget-boolean v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->shouldConsume:Z

    if-eqz v1, :cond_3

    :goto_0
    invoke-interface {v0, p1, p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 144
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private buildSortedPositions()Ljava/util/ArrayList;
    .registers 5
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

    .line 498
    :goto_1
    if-lt v1, v0, :cond_1

    .line 503
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$100000000;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$100000000;-><init>(Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 514
    return-object v2

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/PositionList;->size()I

    move-result v0

    goto :goto_0

    .line 499
    :cond_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/dex/code/PositionList;->get(I)Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static computeOpcode(II)I
    .registers 4

    .line 845
    const/4 v0, -0x4

    if-lt p0, v0, :cond_0

    const/16 v0, 0xa

    if-le p0, v0, :cond_1

    .line 848
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter out of range"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_1
    add-int/lit8 v0, p0, 0x4

    mul-int/lit8 v1, p1, 0xf

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private convert0()[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v1, 0x0

    const v4, 0x7fffffff

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

    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget v6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-direct {v3, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

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

    .line 228
    invoke-direct {p0, v2, v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitPositionsAtAddress(ILjava/util/ArrayList;)I

    move-result v3

    .line 238
    if-ge v1, v7, :cond_7

    .line 239
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v0

    move v2, v0

    .line 242
    :goto_1
    if-ge v3, v6, :cond_6

    .line 243
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v0

    .line 246
    :goto_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 249
    if-ne v8, v4, :cond_3

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitEndSequence()V

    .line 273
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 257
    :cond_3
    iget v9, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->codeSize:I

    if-ne v8, v9, :cond_4

    if-ne v2, v4, :cond_4

    if-eq v0, v4, :cond_2

    .line 263
    :cond_4
    if-ne v8, v0, :cond_5

    .line 265
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V

    move v0, v1

    goto :goto_0

    .line 267
    :cond_5
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    sub-int v0, v8, v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    move v0, v1

    move v2, v3

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_2

    :cond_7
    move v2, v4

    goto :goto_1
.end method

.method private emitAdvanceLine(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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

    sub-int v0, v1, v0

    const-string v1, "line = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitAdvancePc(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    .line 887
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 889
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

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

    sub-int v0, v1, v0

    const-string v1, "%04x: advance pc"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitEndSequence()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    .registers 16
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
            ">;)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    move v2, v0

    .line 380
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    .line 383
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    .line 385
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 389
    if-eqz v2, :cond_1

    .line 390
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    sub-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "line_start: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 393
    :cond_1
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->getParamBase()I

    move-result v1

    .line 395
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v5

    .line 396
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v6

    .line 402
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    if-nez v0, :cond_11

    move-object v0, p2

    .line 403
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 406
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 409
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .line 413
    :goto_2
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    .line 414
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v3, v6}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 416
    if-eqz v2, :cond_3

    .line 417
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v3

    sub-int v1, v3, v1

    const-string v3, "parameters_size: %04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 425
    :cond_3
    const/4 v1, 0x0

    move v3, v1

    move v4, v0

    :goto_3
    if-lt v3, v6, :cond_6

    .line 476
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    const/4 v0, 0x0

    .line 484
    :goto_4
    array-length v2, v1

    if-lt v0, v2, :cond_e

    return-void

    .line 379
    :cond_4
    const/4 v0, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 403
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 404
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 405
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    aput-object v0, v3, v1

    goto :goto_1

    .line 426
    :cond_6
    invoke-virtual {v5, v3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v7

    .line 427
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 429
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v8

    move-object v1, p2

    .line 431
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 446
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    move-object v1, v0

    .line 450
    :goto_5
    if-nez v1, :cond_8

    .line 456
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 459
    :cond_8
    if-eqz v2, :cond_a

    .line 460
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    if-eqz v0, :cond_d

    :cond_9
    const-string v0, "<unnamed>"

    .line 463
    :goto_6
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    sub-int/2addr v1, v8

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v9, "v"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 468
    :cond_a
    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v1

    .line 425
    add-int/lit8 v0, v3, 0x1

    add-int/2addr v1, v4

    move v3, v0

    move v4, v1

    goto/16 :goto_3

    .line 431
    :cond_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 432
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v10

    if-ne v4, v10, :cond_7

    .line 435
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 440
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 444
    :goto_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    aput-object v1, v0, v4

    goto/16 :goto_5

    .line 442
    :cond_c
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    goto :goto_7

    .line 460
    :cond_d
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 476
    :cond_e
    aget-object v2, v1, v0

    .line 477
    if-nez v2, :cond_10

    .line 484
    :cond_f
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 481
    :cond_10
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v3

    .line 483
    if-eqz v3, :cond_f

    .line 484
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalStartExtended(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_8

    :cond_11
    move v0, v1

    goto/16 :goto_2
.end method

.method private emitLocalEnd(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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

    sub-int v0, v1, v0

    const-string v1, "%04x: -local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitLocalRestart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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

    sub-int v0, v1, v0

    const-string v1, "%04x: +local restart %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitLocalStart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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

    sub-int v0, v1, v0

    const-string v1, "%04x: +local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private emitLocalStartExtended(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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

    sub-int v0, v1, v0

    const-string v1, "%04x: +localx %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private emitLocalsAtAddress(I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v1

    .line 292
    :goto_0
    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v0

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    if-eq v0, v2, :cond_1

    .line 345
    :cond_0
    return p1

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v2

    .line 295
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v3

    .line 296
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    aget-object v4, v4, v3

    .line 298
    if-ne v2, v4, :cond_2

    move p1, v0

    .line 304
    goto :goto_0

    .line 308
    :cond_2
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    aput-object v2, v5, v3

    .line 310
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 311
    if-eqz v4, :cond_4

    invoke-virtual {v2, v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->matches(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 317
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 322
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_3
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalRestart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    :goto_1
    move p1, v0

    .line 326
    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalStart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_1

    .line 338
    :cond_5
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v3

    sget-object v4, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-eq v3, v4, :cond_6

    .line 340
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalEnd(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    :cond_6
    move p1, v0

    goto :goto_0
.end method

.method private emitPosition(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

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

    .line 791
    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    sub-int/2addr v0, v3

    .line 794
    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    sub-int/2addr v2, v3

    .line 796
    if-gez v2, :cond_0

    .line 797
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position entries must be in ascending address order"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :cond_0
    const/4 v3, -0x4

    if-lt v0, v3, :cond_1

    const/16 v3, 0xa

    if-le v0, v3, :cond_2

    .line 803
    :cond_1
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    move v0, v1

    .line 807
    :cond_2
    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v3

    .line 809
    and-int/lit16 v4, v3, -0x100

    if-lez v4, :cond_3

    .line 810
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    .line 812
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v3

    .line 814
    and-int/lit16 v2, v3, -0x100

    if-lez v2, :cond_6

    .line 815
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    .line 817
    invoke-static {v1, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v3

    move v0, v1

    move v2, v1

    .line 821
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 823
    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 824
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 826
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_5

    .line 827
    :cond_4
    const-string v0, "%04x: line %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v1

    new-instance v1, Ljava/lang/Integer;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    move v2, v1

    goto :goto_0
.end method

.method private emitPositionsAtAddress(ILjava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;",
            ">;)I^",
            "Ljava/io/IOException;"
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

    .line 360
    :goto_0
    if-ge p1, v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v0

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    if-eq v0, v2, :cond_1

    .line 365
    :cond_0
    return p1

    .line 363
    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/CstString;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    if-nez v0, :cond_1

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 655
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_0
.end method

.method private emitTypeIndex(Lcom/s1243808733/android/dx/rop/cst/CstType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/rop/cst/CstType;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    if-nez v0, :cond_1

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 676
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_0
.end method

.method private emitUnsignedLeb128(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 913
    if-gez p1, :cond_0

    .line 914
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Signed value where unsigned required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    return-void
.end method

.method private entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x20

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 600
    if-nez v1, :cond_2

    .line 601
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :goto_1
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 608
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
    .registers 9
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
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

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

    .line 544
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    .line 562
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$100000001;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$100000001;-><init>(Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 574
    return-object v1

    .line 545
    :cond_0
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v5, v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v5

    .line 546
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v6

    .line 548
    if-ge v6, v2, :cond_2

    .line 544
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_2
    sub-int v7, v6, v2

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 557
    sub-int/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 558
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getParamBase()I
    .registers 4

    .line 525
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v2

    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public convert()[B
    .registers 3

    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->convert0()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 170
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
    .registers 6

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

    .line 198
    return-object v0
.end method
