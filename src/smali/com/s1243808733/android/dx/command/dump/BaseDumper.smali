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
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->bytes:[B

    .line 87
    iget-boolean p1, p4, Lcom/s1243808733/android/dx/command/dump/Args;->rawBytes:Z

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->rawBytes:Z

    .line 88
    iput-object p2, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    .line 89
    iget p2, p4, Lcom/s1243808733/android/dx/command/dump/Args;->width:I

    if-gtz p2, :cond_12

    const/16 p2, 0x4f

    goto :goto_14

    :cond_12
    iget p2, p4, Lcom/s1243808733/android/dx/command/dump/Args;->width:I

    :goto_14
    iput p2, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->width:I

    .line 90
    iput-object p3, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->filePath:Ljava/lang/String;

    .line 91
    iget-boolean p3, p4, Lcom/s1243808733/android/dx/command/dump/Args;->strictParse:Z

    iput-boolean p3, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->strictParse:Z

    .line 92
    const/4 p3, 0x0

    iput p3, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->indent:I

    if-eqz p1, :cond_24

    .line 93
    const-string p1, "|"

    goto :goto_26

    :cond_24
    const-string p1, ""

    :goto_26
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    .line 94
    iput p3, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->readBytes:I

    .line 95
    iput-object p4, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->args:Lcom/s1243808733/android/dx/command/dump/Args;

    .line 97
    new-instance p1, Lcom/s1243808733/android/dx/dex/DexOptions;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/dex/DexOptions;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->dexOptions:Lcom/s1243808733/android/dx/dex/DexOptions;

    .line 99
    add-int/lit8 p2, p2, -0x5

    div-int/lit8 p2, p2, 0xf

    add-int/lit8 p2, p2, 0x1

    and-int/lit8 p1, p2, -0x2

    const/4 p2, 0x6

    if-ge p1, p2, :cond_40

    const/4 p1, 0x6

    goto :goto_46

    :cond_40
    const/16 p2, 0xa

    if-le p1, p2, :cond_46

    const/16 p1, 0xa

    .line 105
    :cond_46
    :goto_46
    iput p1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->hexCols:I

    return-void
.end method

.method static computeParamWidth(Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;Z)I
    .registers 2

    .line 115
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/s1243808733/android/dx/rop/type/Prototype;

    move-result-object p0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result p0

    return p0
.end method


# virtual methods
.method public changeIndent(I)V
    .registers 4

    .line 122
    iget v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->indent:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->indent:I

    .line 124
    iget-boolean p1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz p1, :cond_c

    const-string p1, "|"

    goto :goto_e

    :cond_c
    const-string p1, ""

    :goto_e
    iput-object p1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    const/4 p1, 0x0

    .line 125
    :goto_11
    iget v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->indent:I

    if-ge p1, v0, :cond_2d

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    :cond_2d
    return-void
.end method

.method public endParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/s1243808733/android/dx/cf/iface/Member;)V
    .registers 6

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

    if-eqz v0, :cond_e

    .line 228
    iget v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->hexCols:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    return v1

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method protected final getWidth2()I
    .registers 3

    .line 240
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->getWidth1()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 241
    :goto_c
    iget v1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->width:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->indent:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    return v1
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

    move-result-object p1

    return-object p1
.end method

.method public parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V
    .registers 5

    .line 133
    invoke-virtual {p1, p2}, Lcom/s1243808733/android/dx/util/ByteArray;->underlyingOffset(I)I

    move-result p1

    .line 135
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->getRawBytes()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 137
    invoke-virtual {p0, p1, p3}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->hexDump(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_f
    const-string p1, ""

    .line 138
    :goto_11
    invoke-virtual {p0, p1, p4}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->twoColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->print(Ljava/lang/String;)V

    .line 139
    iget p1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->readBytes:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->readBytes:I

    return-void
.end method

.method protected final print(Ljava/lang/String;)V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method protected final println(Ljava/lang/String;)V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public startParsingMember(Lcom/s1243808733/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method protected final twoColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 264
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->getWidth1()I

    move-result v0

    .line 265
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->getWidth2()I

    move-result v1

    if-nez v0, :cond_36

    .line 269
    :try_start_a
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    .line 270
    new-instance v0, Ljava/io/StringWriter;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 271
    new-instance v2, Lcom/s1243808733/android/dx/util/IndentingWriter;

    iget-object v3, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/s1243808733/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    .line 273
    invoke-virtual {v2, p2}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(Ljava/lang/String;)V

    const/16 v1, 0xa

    if-eqz p1, :cond_2b

    .line 274
    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v1, :cond_2e

    .line 275
    :cond_2b
    invoke-virtual {v2, v1}, Lcom/s1243808733/android/dx/util/IndentingWriter;->write(I)V

    .line 277
    :cond_2e
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/util/IndentingWriter;->flush()V

    .line 279
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 281
    :cond_36
    iget-object v2, p0, Lcom/s1243808733/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2, v1}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->toString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_3c} :catch_3d

    return-object p1

    :catch_3d
    move-exception p1

    .line 284
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
