.class public abstract Lcom/s1243808733/android/dx/command/dump/BaseDumper;
.super Ljava/lang/Object;
.source "BaseDumper.java"

# interfaces
.implements Lcom/s1243808733/android/dx/cf/iface/ParseObserver;


# instance fields
.field protected args:Lcom/s1243808733/android/dx/command/dump/Args;

.field private final bytes:[B

.field protected final dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

.field private final filePath:Ljava/lang/String;

.field private final hexCols:I

.field private indent:I

.field private final out:Ljava/io/PrintStream;

.field private final rawBytes:Z

.field private readBytes:I

.field private separator:Ljava/lang/String;

.field private final strictParse:Z

.field private final width:I


# direct methods
.method public constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/s1243808733/android/dx/command/dump/Args;)V
    .registers 9

    const/16 v2, 0xa

    const/4 v1, 0x6

    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->bytes:[B

    .line 87
    iget-boolean v0, p4, Lcom/s1243808733/android/dx/command/dump/Args;->rawBytes:Z

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->rawBytes:Z

    .line 88
    iput-object p2, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    .line 89
    iget v0, p4, Lcom/s1243808733/android/dx/command/dump/Args;->width:I

    if-gtz v0, :cond_1

    const/16 v0, 0x4f

    :goto_0
    iput v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->width:I

    .line 90
    iput-object p3, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->filePath:Ljava/lang/String;

    .line 91
    iget-boolean v0, p4, Lcom/s1243808733/android/dx/command/dump/Args;->strictParse:Z

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->strictParse:Z

    .line 92
    iput v3, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->indent:I

    .line 93
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz v0, :cond_2

    const-string v0, "|"

    :goto_1
    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    .line 94
    iput v3, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->readBytes:I

    .line 95
    iput-object p4, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    .line 97
    new-instance v0, Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/dex/DexOptions;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    .line 99
    iget v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->width:I

    add-int/lit8 v0, v0, -0x5

    div-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    .line 100
    if-ge v0, v1, :cond_3

    move v0, v1

    .line 105
    :cond_0
    :goto_2
    iput v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->hexCols:I

    return-void

    .line 89
    :cond_1
    iget v0, p4, Lcom/s1243808733/android/dx/command/dump/Args;->width:I

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 102
    :cond_3
    if-le v0, v2, :cond_0

    move v0, v2

    .line 103
    goto :goto_2
.end method

.method static computeParamWidth(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Z)I
    .registers 3

    .line 115
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public changeIndent(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 122
    iget v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->indent:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->indent:I

    .line 124
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz v0, :cond_0

    const-string v0, "|"

    :goto_0
    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->indent:I

    if-lt v0, v1, :cond_1

    return-void

    .line 124
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 126
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public endParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/s1243808733/android/dx/cf/iface/Member;)V
    .registers 6
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

    return-void
.end method

.method protected final getBytes()[B
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->bytes:[B

    return-object v0
.end method

.method protected final getFilePath()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRawBytes()Z
    .registers 2

    .line 217
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->rawBytes:Z

    return v0
.end method

.method protected final getReadBytes()I
    .registers 2

    .line 162
    iget v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->readBytes:I

    return v0
.end method

.method protected final getStrictParse()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->strictParse:Z

    return v0
.end method

.method protected final getWidth1()I
    .registers 3

    .line 227
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz v0, :cond_0

    .line 228
    iget v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->hexCols:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->hexCols:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getWidth2()I
    .registers 3

    .line 240
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->getWidth1()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 241
    :goto_0
    iget v1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->width:I

    sub-int v0, v1, v0

    iget v1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->indent:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hexDump(II)Ljava/lang/String;
    .registers 9

    .line 252
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->bytes:[B

    iget v4, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->hexCols:I

    const/4 v5, 0x4

    move v1, p1

    move v2, p2

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/android/dx/util/Hex;->dump([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V
    .registers 7
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

    .line 133
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->underlyingOffset(I)I

    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->getRawBytes()Z

    move-result v1

    .line 137
    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p3}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->hexDump(II)Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    invoke-virtual {p0, v0, p4}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->twoColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->print(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->readBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->readBytes:I

    return-void

    .line 137
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method protected final print(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method protected final println(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public startParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
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

    return-void
.end method

.method protected final twoColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v5, 0xa

    .line 264
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->getWidth1()I

    move-result v0

    .line 265
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->getWidth2()I

    move-result v1

    .line 268
    if-nez v0, :cond_2

    .line 269
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 270
    new-instance v2, Ljava/io/StringWriter;

    mul-int/lit8 v3, v0, 0x2

    invoke-direct {v2, v3}, Ljava/io/StringWriter;-><init>(I)V

    .line 271
    new-instance v3, Lcom/s1243808733/android/dx/util/IndentingWriter;

    iget-object v4, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-direct {v3, v2, v1, v4}, Lcom/s1243808733/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    .line 273
    invoke-virtual {v3, p2}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(Ljava/lang/String;)V

    .line 274
    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_1

    .line 275
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(I)V

    .line 277
    :cond_1
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/util/IndentingWriter;->flush()V

    .line 279
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    :cond_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2, v1}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->toString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 284
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
