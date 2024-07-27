.class public Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$FlagsOffset;,
        Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;
    }
.end annotation


# static fields
.field private static final ENTRY_FLAG_COMPLEX:S = 0x1s

.field private static final ENTRY_FLAG_PUBLIC:S = 0x2s

.field private static final ENTRY_FLAG_WEAK:S = 0x4s

.field private static final KNOWN_CONFIG_BYTES:I = 0x40

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static mExistTypeNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mCountIn:Lorg/apache/commons/io/input/CountingInputStream;

.field private mCurTypeID:I

.field private mHeader:Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

.field private mIn:Lcom/tencent/mm/util/ExtDataInput;

.field private mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

.field private mPkgs:[Lcom/tencent/mm/androlib/res/data/ResPackage;

.field private mResId:I

.field private mSpecNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

.field private mType:Lcom/tencent/mm/androlib/res/data/ResType;

.field private mTypeIdOffset:I

.field private mTypeNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    :try_start_0
    const-string v0, "com.tencent.mm.androlib.res.decoder.ARSCDecoder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->LOGGER:Ljava/util/logging/Logger;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mTypeIdOffset:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mCurTypeID:I

    new-instance v0, Lorg/apache/commons/io/input/CountingInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/input/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mCountIn:Lorg/apache/commons/io/input/CountingInputStream;

    new-instance v1, Lcom/tencent/mm/util/ExtDataInput;

    new-instance v2, Lcom/mindprod/ledatastream/LEDataInputStream;

    invoke-direct {v2, v0}, Lcom/mindprod/ledatastream/LEDataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lcom/tencent/mm/util/ExtDataInput;-><init>(Ljava/io/DataInput;)V

    iput-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mExistTypeNames:Ljava/util/HashMap;

    return-void
.end method

.method private checkChunkType(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->type:S

    if-eq v0, p1, :cond_0

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v1, "Invalid chunk type: expected=0x%08x, got=0x%08x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Short;

    iget-object v5, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    iget-short v5, v5, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->type:S

    invoke-direct {v4, v5}, Ljava/lang/Short;-><init>(S)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static decode(Ljava/io/InputStream;)[Lcom/tencent/mm/androlib/res/data/ResPackage;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;

    invoke-direct {v0, p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;-><init>(Ljava/io/InputStream;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "parse to get the exist names in the resouces.arsc first\n"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-direct {v0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readTable()[Lcom/tencent/mm/androlib/res/data/ResPackage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v2, "Could not decode arsc file"

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getExistTypeSpecNameStrings(I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mExistTypeNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private nextChunk()Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mCountIn:Lorg/apache/commons/io/input/CountingInputStream;

    invoke-static {v0, v1}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->read(Lcom/tencent/mm/util/ExtDataInput;Lorg/apache/commons/io/input/CountingInputStream;)Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    return-object v0
.end method

.method private nextChunkCheckType(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    invoke-direct {p0, p1}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->checkChunkType(I)V

    return-void
.end method

.method private putTypeSpecNameStrings(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mExistTypeNames:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mExistTypeNames:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private readComplexEntry(ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readValue(ZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readConfig()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/16 v0, 0x201

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readUnsignedByte()I

    iget v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mTypeIdOffset:I

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readConfigFlags()V

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataInput;->readIntArray(I)[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget v2, v1, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mResId:I

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    or-int/2addr v2, v0

    iput v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mResId:I

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readEntry()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readConfigFlags()V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/16 v2, 0x40

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v3

    const/16 v1, 0x1c

    if-ge v3, v1, :cond_0

    new-instance v0, Lcom/tencent/mm/androlib/AndrolibException;

    const-string v1, "Config size < 28"

    invoke-direct {v0, v1}, Lcom/tencent/mm/androlib/AndrolibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v1

    int-to-char v1, v1

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v1

    int-to-char v1, v1

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v1

    int-to-char v1, v1

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v1

    int-to-char v1, v1

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readUnsignedShort()I

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1, v7}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1, v4}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    int-to-byte v1, v6

    int-to-byte v1, v6

    int-to-short v1, v6

    const/16 v1, 0x20

    if-lt v3, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    const/16 v0, 0x20

    :cond_1
    int-to-short v1, v6

    int-to-short v1, v6

    const/16 v1, 0x24

    if-lt v3, v1, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    const/16 v0, 0x24

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    check-cast v0, [C

    const/4 v0, 0x0

    check-cast v0, [C

    const/16 v0, 0x30

    if-lt v3, v0, :cond_8

    invoke-direct {p0, v5}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readScriptOrVariantChar(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readScriptOrVariantChar(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    const/16 v0, 0x30

    :goto_1
    int-to-byte v1, v6

    const/16 v1, 0x34

    if-lt v3, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    const/16 v0, 0x34

    :cond_2
    const/16 v1, 0x38

    if-lt v3, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    const/16 v0, 0x38

    :cond_3
    if-lt v3, v2, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    move v0, v2

    :cond_4
    add-int/lit8 v1, v3, -0x40

    if-lez v1, :cond_7

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataInput;->readFully([B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Config flags size > %d, but exceeding bytes are all zero, so it should be ok."

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    sget-object v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->LOGGER:Ljava/util/logging/Logger;

    const-string v3, "Config flags size > %d. Exceeding bytes: 0x%X."

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sub-int v0, v3, v0

    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    move v1, v0

    goto/16 :goto_0
.end method

.method private readEntry()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readShort()S

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mCurTypeID:I

    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mSpecNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    invoke-virtual {v3, v1}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->putTypeSpecNameStrings(ILjava/lang/String;)V

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readValue(ZI)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readComplexEntry(ZI)V

    goto :goto_0
.end method

.method private readLibraryType()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Lcom/tencent/mm/androlib/AndrolibException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x203

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v2

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->type:S

    const/16 v1, 0x201

    if-eq v0, v1, :cond_1

    return-void

    :cond_0
    iget-object v3, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v3}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/16 v5, 0x80

    invoke-virtual {v4, v5, v8}, Lcom/tencent/mm/util/ExtDataInput;->readNullEndedString(IZ)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Decoding Shared Library (%s), pkgId: %d\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readTableTypeSpec()V

    goto :goto_1
.end method

.method private readScriptOrVariantChar(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-nez p1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    move-result v2

    int-to-short v2, v2

    if-eqz v2, :cond_0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v0

    goto :goto_0
.end method

.method private readSingleTableTypeSpec()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Lcom/tencent/mm/androlib/AndrolibException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x202

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readUnsignedByte()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v1}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Lcom/tencent/mm/util/ExtDataInput;->skipBytes(I)I

    iput v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mCurTypeID:I

    const/high16 v1, -0x1000000

    iget v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mResId:I

    and-int/2addr v1, v2

    shl-int/lit8 v2, v0, 0x10

    or-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mResId:I

    new-instance v1, Lcom/tencent/mm/androlib/res/data/ResType;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mTypeNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/androlib/res/data/ResType;-><init>(Ljava/lang/String;Lcom/tencent/mm/androlib/res/data/ResPackage;)V

    iput-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mType:Lcom/tencent/mm/androlib/res/data/ResType;

    return-void
.end method

.method private readTable()[Lcom/tencent/mm/androlib/res/data/ResPackage;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->nextChunkCheckType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v1

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-static {v0}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->read(Lcom/tencent/mm/util/ExtDataInput;)Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    new-array v2, v1, [Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readTablePackage()Lcom/tencent/mm/androlib/res/data/ResPackage;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readTablePackage()Lcom/tencent/mm/androlib/res/data/ResPackage;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->checkChunkType(I)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/16 v2, 0x80

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/util/ExtDataInput;->readNullEndedString(IZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->skipInt()V

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->skipInt()V

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->skipInt()V

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->skipInt()V

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    iget v2, v2, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->headerSize:I

    const/16 v3, 0x120

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v2}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mTypeIdOffset:I

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-static {v2}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->read(Lcom/tencent/mm/util/ExtDataInput;)Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mTypeNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    iget-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-static {v2}, Lcom/tencent/mm/androlib/res/decoder/StringBlock;->read(Lcom/tencent/mm/util/ExtDataInput;)Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mSpecNames:Lcom/tencent/mm/androlib/res/decoder/StringBlock;

    shl-int/lit8 v2, v0, 0x18

    iput v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mResId:I

    new-instance v2, Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-direct {v2, v0, v1}, Lcom/tencent/mm/androlib/res/data/ResPackage;-><init>(ILjava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->type:S

    const/16 v1, 0x203

    if-eq v0, v1, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->type:S

    const/16 v1, 0x202

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mPkg:Lcom/tencent/mm/androlib/res/data/ResPackage;

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readLibraryType()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readTableTypeSpec()V

    goto :goto_1
.end method

.method private readTableTypeSpec()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Lcom/tencent/mm/androlib/AndrolibException;",
            "^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/mm/androlib/AndrolibException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readSingleTableTypeSpec()V

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->type:S

    const/16 v1, 0x202

    if-eq v0, v1, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mHeader:Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    iget-short v0, v0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;->type:S

    const/16 v1, 0x201

    if-eq v0, v1, :cond_1

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readSingleTableTypeSpec()V

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->readConfig()V

    invoke-direct {p0}, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->nextChunk()Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder$Header;

    goto :goto_1
.end method

.method private readValue(ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V^",
            "Ljava/io/IOException;",
            "^",
            "Lcom/tencent/mm/androlib/AndrolibException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/tencent/mm/androlib/AndrolibException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;->skipCheckShort(S)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/util/ExtDataInput;->skipCheckByte(B)V

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readByte()B

    iget-object v0, p0, Lcom/tencent/mm/androlib/res/decoder/RawARSCDecoder;->mIn:Lcom/tencent/mm/util/ExtDataInput;

    invoke-virtual {v0}, Lcom/tencent/mm/util/ExtDataInput;->readInt()I

    return-void
.end method
