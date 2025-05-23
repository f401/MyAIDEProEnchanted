.class public final Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;
.super Ljava/lang/Object;
.source "DebugInfoEncoder.java"


# static fields
.field private static final DEBUG:Z = false


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

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    .line 123
    iput-boolean p6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    .line 124
    iput p4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->codeSize:I

    .line 125
    iput p5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    .line 127
    new-instance p1, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    .line 128
    new-array p1, p5, [Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    return-void
.end method

.method private annotate(ILjava/lang/String;)V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 143
    :cond_15
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-eqz v0, :cond_22

    .line 144
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->shouldConsume:Z

    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    invoke-interface {v0, p1, p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 147
    :cond_22
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz p1, :cond_29

    .line 148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_29
    return-void
.end method

.method private buildSortedPositions()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;",
            ">;"
        }
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/PositionList;->size()I

    move-result v0

    .line 496
    :goto_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 499
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->positions:Lcom/s1243808733/android/dx/dex/code/PositionList;

    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/dex/code/PositionList;->get(I)Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 503
    :cond_1e
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$1;-><init>(Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private static computeOpcode(II)I
    .registers 3

    const/4 v0, -0x4

    if-lt p0, v0, :cond_e

    const/16 v0, 0xa

    if-gt p0, v0, :cond_e

    add-int/lit8 p0, p0, 0x4

    mul-int/lit8 p1, p1, 0xf

    add-int/2addr p0, p1

    add-int/2addr p0, v0

    return p0

    .line 848
    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Parameter out of range"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private convert0()[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->buildSortedPositions()Ljava/util/ArrayList;

    move-result-object v0

    .line 203
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->extractMethodArguments()Ljava/util/ArrayList;

    move-result-object v1

    .line 205
    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitHeader(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 208
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 210
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_2e

    .line 211
    :cond_1a
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "%04x: prologue end"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 214
    :cond_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 215
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v3

    const/4 v4, 0x0

    .line 227
    :goto_39
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalsAtAddress(I)I

    move-result v2

    .line 229
    invoke-direct {p0, v4, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitPositionsAtAddress(ILjava/util/ArrayList;)I

    move-result v4

    const v5, 0x7fffffff

    if-ge v2, v3, :cond_51

    .line 239
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v6, v2}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v6

    goto :goto_54

    :cond_51
    const v6, 0x7fffffff

    :goto_54
    if-ge v4, v1, :cond_61

    .line 243
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v7

    goto :goto_64

    :cond_61
    const v7, 0x7fffffff

    .line 246
    :goto_64
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ne v8, v5, :cond_6b

    goto :goto_73

    .line 257
    :cond_6b
    iget v9, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->codeSize:I

    if-ne v8, v9, :cond_7d

    if-ne v6, v5, :cond_7d

    if-ne v7, v5, :cond_7d

    .line 271
    :goto_73
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitEndSequence()V

    .line 273
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_7d
    if-ne v8, v7, :cond_8b

    .line 265
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-direct {p0, v5}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 267
    :cond_8b
    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    sub-int/2addr v8, v5

    invoke-direct {p0, v8}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    goto :goto_39
.end method

.method private emitAdvanceLine(I)V
    .registers 6
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
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz p1, :cond_3a

    .line 870
    :cond_1e
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result p1

    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 871
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "line = %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 870
    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_3a
    return-void
.end method

.method private emitAdvancePc(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v0

    .line 889
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 890
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    .line 891
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 893
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz p1, :cond_39

    .line 894
    :cond_1e
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result p1

    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 895
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "%04x: advance pc"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 894
    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_39
    return-void
.end method

.method private emitEndSequence()V
    .registers 3

    .line 926
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 928
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_14

    .line 929
    :cond_e
    const/4 v0, 0x1

    const-string v1, "end sequence"

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_14
    return-void
.end method

.method private emitHeader(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 380
    :goto_e
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v3

    .line 383
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2a

    .line 384
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    .line 385
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result p1

    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 387
    :cond_2a
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-virtual {p1, v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    if-eqz v0, :cond_4d

    .line 390
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "line_start: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 393
    :cond_4d
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->getParamBase()I

    move-result p1

    .line 395
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->desc:Lcom/s1243808733/android/dx/rop/type/Prototype;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v3

    .line 396
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->size()I

    move-result v4

    .line 402
    iget-boolean v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->isStatic:Z

    if-nez v5, :cond_7b

    .line 403
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_63
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 404
    invoke-virtual {v6}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v7

    if-ne p1, v7, :cond_63

    .line 405
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    aput-object v6, v5, p1

    :cond_79
    add-int/lit8 p1, p1, 0x1

    .line 413
    :cond_7b
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v5

    .line 414
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v6, v4}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    if-eqz v0, :cond_a0

    .line 417
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v6

    .line 418
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    const-string v7, "parameters_size: %04x"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 417
    sub-int/2addr v6, v5

    invoke-direct {p0, v6, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_a0
    const/4 v1, 0x0

    :goto_a1
    if-ge v1, v4, :cond_11e

    .line 426
    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->get(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v5

    .line 429
    iget-object v6, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v6}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v6

    .line 431
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_da

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    .line 432
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v10

    if-ne p1, v10, :cond_b1

    .line 435
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v7

    if-eqz v7, :cond_ce

    .line 440
    invoke-direct {p0, v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    goto :goto_d5

    .line 442
    :cond_ce
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    .line 444
    :goto_d5
    iget-object v7, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    aput-object v8, v7, p1

    goto :goto_db

    :cond_da
    move-object v8, v9

    :goto_db
    if-nez v8, :cond_e0

    .line 456
    invoke-direct {p0, v9}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    :cond_e0
    if-eqz v0, :cond_116

    if-eqz v8, :cond_f4

    .line 461
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v7

    if-eqz v7, :cond_eb

    goto :goto_f4

    .line 462
    :cond_eb
    invoke-virtual {v8}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v7

    goto :goto_f6

    :cond_f4
    :goto_f4
    const-string v7, "<unnamed>"

    .line 463
    :goto_f6
    iget-object v8, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v8}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "parameter "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " v"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sub-int/2addr v8, v6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8, v6}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    .line 468
    :cond_116
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/type/Type;->getCategory()I

    move-result v5

    add-int/2addr p1, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 476
    :cond_11e
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->lastEntryForReg:[Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    array-length p2, p1

    :goto_121
    if-ge v2, p2, :cond_134

    aget-object v0, p1, v2

    if-nez v0, :cond_128

    goto :goto_131

    .line 481
    :cond_128
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v1

    if-eqz v1, :cond_131

    .line 484
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalStartExtended(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    :cond_131
    :goto_131
    add-int/lit8 v2, v2, 0x1

    goto :goto_121

    :cond_134
    return-void
.end method

.method private emitLocalEnd(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .registers 7
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

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_41

    .line 766
    :cond_1d
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 767
    nop

    .line 768
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object p1

    .line 767
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    const-string p1, "%04x: -local %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 766
    sub-int/2addr v1, v0

    invoke-direct {p0, v1, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_41
    return-void
.end method

.method private emitLocalRestart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .registers 7
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

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_3e

    .line 632
    :cond_1b
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 634
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object p1

    .line 633
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    const-string p1, "%04x: +local restart %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 632
    sub-int/2addr v1, v0

    invoke-direct {p0, v1, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_3e
    return-void
.end method

.method private emitLocalStart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 698
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalStartExtended(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    return-void

    .line 702
    :cond_a
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

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_57

    .line 711
    :cond_33
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 712
    nop

    .line 713
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object p1

    .line 712
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    const-string p1, "%04x: +local %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 711
    sub-int/2addr v1, v0

    invoke-direct {p0, v1, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_57
    return-void
.end method

.method private emitLocalStartExtended(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V
    .registers 7
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

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz v1, :cond_54

    .line 741
    :cond_30
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->getCursor()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 742
    nop

    .line 743
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;

    move-result-object p1

    .line 742
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    const-string p1, "%04x: +localx %s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 741
    sub-int/2addr v1, v0

    invoke-direct {p0, v1, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_54
    return-void
.end method

.method private emitLocalsAtAddress(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v0

    :goto_6
    if-ge p1, v0, :cond_5b

    .line 292
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    .line 293
    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    if-ne v1, v2, :cond_5b

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

    if-ne v1, v4, :cond_27

    goto :goto_58

    .line 308
    :cond_27
    aput-object v1, v3, v2

    .line 310
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v2

    if-eqz v2, :cond_4d

    if-eqz v4, :cond_49

    .line 311
    invoke-virtual {v1, v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->matches(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 317
    invoke-virtual {v4}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v2

    if-nez v2, :cond_41

    .line 324
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalRestart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_58

    .line 322
    :cond_41
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 326
    :cond_49
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalStart(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    goto :goto_58

    .line 338
    :cond_4d
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    move-result-object v2

    sget-object v3, Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/s1243808733/android/dx/dex/code/LocalList$Disposition;

    if-eq v2, v3, :cond_58

    .line 340
    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitLocalEnd(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)V

    :cond_58
    :goto_58
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_5b
    return p1
.end method

.method private emitPosition(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 787
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 788
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    .line 789
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result p1

    .line 793
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    sub-int/2addr v0, v1

    .line 794
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    sub-int/2addr p1, v1

    if-ltz p1, :cond_71

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1c

    const/16 v1, 0xa

    if-le v0, v1, :cond_20

    .line 803
    :cond_1c
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    const/4 v0, 0x0

    .line 807
    :cond_20
    invoke-static {v0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v1

    and-int/lit16 v3, v1, -0x100

    if-lez v3, :cond_3e

    .line 810
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvancePc(I)V

    .line 812
    invoke-static {v0, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v1

    and-int/lit16 p1, v1, -0x100

    if-lez p1, :cond_3d

    .line 815
    invoke-direct {p0, v0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitAdvanceLine(I)V

    .line 817
    invoke-static {v2, v2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->computeOpcode(II)I

    move-result v1

    const/4 p1, 0x0

    const/4 v0, 0x0

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    .line 821
    :cond_3e
    :goto_3e
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v3, v1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeByte(I)V

    .line 823
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    .line 824
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    .line 826
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotateTo:Lcom/s1243808733/android/dx/util/AnnotatedOutput;

    if-nez p1, :cond_55

    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->debugPrint:Ljava/io/PrintWriter;

    if-eqz p1, :cond_70

    .line 828
    :cond_55
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->line:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "%04x: line %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 827
    invoke-direct {p0, v1, p1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->annotate(ILjava/lang/String;)V

    :cond_70
    return-void

    .line 797
    :cond_71
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Position entries must be in ascending address order"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private emitPositionsAtAddress(ILjava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
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

    move-result v0

    :goto_4
    if-ge p1, v0, :cond_20

    .line 361
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v1

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->address:I

    if-ne v1, v2, :cond_20

    .line 363
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-direct {p0, v1}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->emitPosition(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_20
    return p1
.end method

.method private emitStringIndex(Lcom/s1243808733/android/dx/rop/cst/CstString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_17

    .line 652
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    if-nez v0, :cond_7

    goto :goto_17

    .line 655
    :cond_7
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    .line 656
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getStringIds()Lcom/s1243808733/android/dx/dex/file/StringIdsSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstString;)I

    move-result p1

    .line 655
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_1d

    .line 653
    :cond_17
    :goto_17
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    :goto_1d
    return-void
.end method

.method private emitTypeIndex(Lcom/s1243808733/android/dx/rop/cst/CstType;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_17

    .line 673
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    if-nez v0, :cond_7

    goto :goto_17

    .line 676
    :cond_7
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    .line 677
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->indexOf(Lcom/s1243808733/android/dx/rop/cst/CstType;)I

    move-result p1

    .line 676
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    goto :goto_1d

    .line 674
    :cond_17
    :goto_17
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    :goto_1d
    return-void
.end method

.method private emitUnsignedLeb128(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_8

    .line 918
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->output:Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/util/ByteArrayAnnotatedOutput;->writeUleb128(I)I

    return-void

    .line 914
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Signed value where unsigned required: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private entryAnnotationString(Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;)Ljava/lang/String;
    .registers 6

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getName()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v2

    .line 592
    const-string v3, "null"

    if-nez v2, :cond_1f

    .line 593
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 595
    :cond_1f
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getType()Lcom/s1243808733/android/dx/rop/cst/CstType;

    move-result-object v2

    if-nez v2, :cond_33

    .line 601
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 603
    :cond_33
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :goto_3a
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getSignature()Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private extractMethodArguments()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
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

    move-result v0

    .line 541
    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->regSize:I

    sub-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 542
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/dex/code/LocalList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_42

    .line 545
    iget-object v5, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->locals:Lcom/s1243808733/android/dx/dex/code/LocalList;

    invoke-virtual {v5, v4}, Lcom/s1243808733/android/dx/dex/code/LocalList;->get(I)Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;

    move-result-object v5

    .line 546
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v6

    if-ge v6, v0, :cond_31

    goto :goto_3f

    :cond_31
    sub-int/2addr v6, v0

    .line 553
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_39

    goto :goto_3f

    .line 557
    :cond_39
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 558
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 562
    :cond_42
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$2;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$2;-><init>(Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1
.end method

.method private getParamBase()I
    .registers 3

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
    .registers 3

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->convert0()[B

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    .line 172
    nop

    .line 173
    const-string v1, "...while encoding debug info"

    invoke-static {v0, v1}, Lcom/s1243808733/android/dex/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/s1243808733/android/dex/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method public convertAndAnnotate(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/s1243808733/android/dx/util/AnnotatedOutput;Z)[B
    .registers 5

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

    move-result-object p1

    return-object p1
.end method
