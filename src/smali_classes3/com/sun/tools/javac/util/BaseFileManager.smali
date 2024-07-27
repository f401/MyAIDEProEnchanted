.class public abstract Lcom/sun/tools/javac/util/BaseFileManager;
.super Ljava/lang/Object;
.source "BaseFileManager.java"


# static fields
.field private static javacFileManagerOptions:[Lcom/sun/tools/javac/main/JavacOption;


# instance fields
.field private final byteBufferCache:Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;

.field protected charset:Ljava/nio/charset/Charset;

.field protected classLoaderClass:Ljava/lang/String;

.field protected final contentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/tools/JavaFileObject;",
            "Lcom/sun/tools/javac/util/BaseFileManager$ContentCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private defaultEncodingName:Ljava/lang/String;

.field public log:Lcom/sun/tools/javac/util/Log;

.field protected options:Lcom/sun/tools/javac/util/Options;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Lcom/sun/tools/javac/main/RecognizedOptions$GrumpyHelper;

    invoke-direct {v0}, Lcom/sun/tools/javac/main/RecognizedOptions$GrumpyHelper;-><init>()V

    .line 156
    invoke-static {v0}, Lcom/sun/tools/javac/main/RecognizedOptions;->getJavacFileManagerOptions(Lcom/sun/tools/javac/main/RecognizedOptions$OptionHelper;)[Lcom/sun/tools/javac/main/JavacOption$Option;

    move-result-object v0

    sput-object v0, Lcom/sun/tools/javac/util/BaseFileManager;->javacFileManagerOptions:[Lcom/sun/tools/javac/main/JavacOption;

    .line 155
    return-void
.end method

.method protected constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->contentCache:Ljava/util/Map;

    .line 64
    iput-object p1, p0, Lcom/sun/tools/javac/util/BaseFileManager;->charset:Ljava/nio/charset/Charset;

    .line 65
    new-instance v0, Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;-><init>(Lcom/sun/tools/javac/util/BaseFileManager$1;)V

    iput-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->byteBufferCache:Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;

    .line 66
    return-void
.end method

.method private getDefaultEncodingName()Ljava/lang/String;
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->defaultEncodingName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->defaultEncodingName:Ljava/lang/String;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->defaultEncodingName:Ljava/lang/String;

    return-object v0
.end method

.method public static getKind(Ljava/lang/String;)Ljavax/tools/JavaFileObject$Kind;
    .registers 2

    .line 368
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    iget-object v0, v0, Ljavax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->CLASS:Ljavax/tools/JavaFileObject$Kind;

    .line 375
    :goto_0
    return-object v0

    .line 370
    :cond_0
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    iget-object v0, v0, Ljavax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->SOURCE:Ljavax/tools/JavaFileObject$Kind;

    goto :goto_0

    .line 372
    :cond_1
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->HTML:Ljavax/tools/JavaFileObject$Kind;

    iget-object v0, v0, Ljavax/tools/JavaFileObject$Kind;->extension:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 373
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->HTML:Ljavax/tools/JavaFileObject$Kind;

    goto :goto_0

    .line 375
    :cond_2
    sget-object v0, Ljavax/tools/JavaFileObject$Kind;->OTHER:Ljavax/tools/JavaFileObject$Kind;

    goto :goto_0
.end method

.method protected static nullCheck(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    return-object p0
.end method

.method protected static nullCheck(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .line 384
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    .line 386
    :cond_0
    return-object p0
.end method


# virtual methods
.method public cache(Ljavax/tools/JavaFileObject;Ljava/nio/CharBuffer;)V
    .registers 5

    .line 338
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->contentCache:Ljava/util/Map;

    new-instance v1, Lcom/sun/tools/javac/util/BaseFileManager$ContentCacheEntry;

    invoke-direct {v1, p1, p2}, Lcom/sun/tools/javac/util/BaseFileManager$ContentCacheEntry;-><init>(Ljavax/tools/JavaFileObject;Ljava/nio/CharBuffer;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    return-void
.end method

.method public decode(Ljava/nio/ByteBuffer;Z)Ljava/nio/CharBuffer;
    .registers 14

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 190
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BaseFileManager;->getEncodingName()Ljava/lang/String;

    move-result-object v2

    .line 193
    :try_start_0
    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/util/BaseFileManager;->getDecoder(Ljava/lang/String;Z)Ljava/nio/charset/CharsetDecoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 200
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->averageCharsPerByte()F

    move-result v0

    .line 205
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v1

    .line 206
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v5

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v5

    add-float/2addr v0, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 210
    :goto_0
    invoke-virtual {v3, p1, v0, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 211
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 213
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 219
    :cond_0
    :goto_1
    return-object v0

    .line 220
    :cond_1
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    .line 223
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 224
    add-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/sun/tools/javac/util/BaseFileManager;->getSource()Lcom/sun/tools/javac/code/Source;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Source;->allowEncodingErrors()Z

    move-result v1

    if-nez v1, :cond_6

    .line 230
    iget-object v5, p0, Lcom/sun/tools/javac/util/BaseFileManager;->log:Lcom/sun/tools/javac/util/Log;

    new-instance v6, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-direct {v6, v1}, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;-><init>(I)V

    .line 232
    iget-object v1, p0, Lcom/sun/tools/javac/util/BaseFileManager;->charset:Ljava/nio/charset/Charset;

    if-nez v1, :cond_5

    move-object v1, v2

    .line 230
    :goto_2
    const-string v7, "illegal.char.for.encoding"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/tools/javac/util/Log;->error(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->length()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 246
    const v1, 0xfffd

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto/16 :goto_0

    .line 248
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 232
    :cond_5
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 234
    :cond_6
    iget-object v5, p0, Lcom/sun/tools/javac/util/BaseFileManager;->log:Lcom/sun/tools/javac/util/Log;

    new-instance v6, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v1

    invoke-direct {v6, v1}, Lcom/sun/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;-><init>(I)V

    .line 236
    iget-object v1, p0, Lcom/sun/tools/javac/util/BaseFileManager;->charset:Ljava/nio/charset/Charset;

    if-nez v1, :cond_7

    move-object v1, v2

    .line 234
    :goto_4
    const-string v7, "illegal.char.for.encoding"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/tools/javac/util/Log;->warning(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 236
    :cond_7
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 197
    :catch_0
    move-exception v0

    .line 198
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "unsupported.encoding"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v10

    invoke-virtual {v0, v1, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    invoke-static {v9}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    goto/16 :goto_1

    .line 194
    :catch_1
    move-exception v0

    .line 195
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->log:Lcom/sun/tools/javac/util/Log;

    const-string v1, "unsupported.encoding"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v10

    invoke-virtual {v0, v1, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-static {v9}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/CharBuffer;

    goto/16 :goto_1
.end method

.method public flushCache(Ljavax/tools/JavaFileObject;)V
    .registers 3

    .line 342
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->contentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    return-void
.end method

.method public getCachedContent(Ljavax/tools/JavaFileObject;)Ljava/nio/CharBuffer;
    .registers 5

    const/4 v1, 0x0

    .line 325
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->contentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/BaseFileManager$ContentCacheEntry;

    .line 326
    if-nez v0, :cond_0

    move-object v0, v1

    .line 334
    :goto_0
    return-object v0

    .line 329
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/BaseFileManager$ContentCacheEntry;->isValid(Ljavax/tools/JavaFileObject;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 330
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->contentCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 331
    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/BaseFileManager$ContentCacheEntry;->getValue()Ljava/nio/CharBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method protected getClassLoader([Ljava/net/URL;)Ljava/lang/ClassLoader;
    .registers 7

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 107
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->classLoaderClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/ClassLoader;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 111
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [Ljava/net/URL;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 113
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :goto_0
    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    .line 120
    :cond_0
    const-class v0, Ljava/io/Closeable;

    const-class v2, Ljava/net/URLClassLoader;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    new-instance v0, Ljava/net/URLClassLoader;

    invoke-direct {v0, p1, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    goto :goto_0

    .line 125
    :cond_1
    :try_start_1
    new-instance v0, Lcom/sun/tools/javac/util/CloseableURLClassLoader;

    invoke-direct {v0, p1, v1}, Lcom/sun/tools/javac/util/CloseableURLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 126
    :catchall_1
    move-exception v0

    .line 131
    new-instance v0, Ljava/net/URLClassLoader;

    invoke-direct {v0, p1, v1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method public getDecoder(Ljava/lang/String;Z)Ljava/nio/charset/CharsetDecoder;
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 256
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 258
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 261
    if-eqz p2, :cond_1

    .line 262
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 266
    :goto_0
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 268
    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 266
    return-object v0

    .line 264
    :cond_1
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_0
.end method

.method public getEncodingName()Ljava/lang/String;
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v1, Lcom/sun/tools/javac/main/OptionName;->ENCODING:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/sun/tools/javac/util/BaseFileManager;->getDefaultEncodingName()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_0
    return-object v0
.end method

.method protected getSource()Lcom/sun/tools/javac/code/Source;
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->options:Lcom/sun/tools/javac/util/Options;

    sget-object v1, Lcom/sun/tools/javac/main/OptionName;->SOURCE:Lcom/sun/tools/javac/main/OptionName;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->get(Lcom/sun/tools/javac/main/OptionName;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const/4 v0, 0x0

    .line 94
    if-eqz v1, :cond_0

    .line 95
    invoke-static {v1}, Lcom/sun/tools/javac/code/Source;->lookup(Ljava/lang/String;)Lcom/sun/tools/javac/code/Source;

    move-result-object v0

    .line 96
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/sun/tools/javac/code/Source;->DEFAULT:Lcom/sun/tools/javac/code/Source;

    goto :goto_0
.end method

.method public handleOption(Ljava/lang/String;Ljava/util/Iterator;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    sget-object v3, Lcom/sun/tools/javac/util/BaseFileManager;->javacFileManagerOptions:[Lcom/sun/tools/javac/main/JavacOption;

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 137
    invoke-interface {v5, p1}, Lcom/sun/tools/javac/main/JavacOption;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    invoke-interface {v5}, Lcom/sun/tools/javac/main/JavacOption;->hasArg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v2, p0, Lcom/sun/tools/javac/util/BaseFileManager;->options:Lcom/sun/tools/javac/util/Options;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v2, p1, v0}, Lcom/sun/tools/javac/main/JavacOption;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 152
    :cond_0
    :goto_1
    return v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->options:Lcom/sun/tools/javac/util/Options;

    invoke-interface {v5, v0, p1}, Lcom/sun/tools/javac/main/JavacOption;->process(Lcom/sun/tools/javac/util/Options;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 145
    goto :goto_1

    .line 148
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract isDefaultBootClassPath()Z
.end method

.method public isSupportedOption(Ljava/lang/String;)I
    .registers 7

    .line 160
    sget-object v1, Lcom/sun/tools/javac/util/BaseFileManager;->javacFileManagerOptions:[Lcom/sun/tools/javac/main/JavacOption;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 161
    invoke-interface {v3, p1}, Lcom/sun/tools/javac/main/JavacOption;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-interface {v3}, Lcom/sun/tools/javac/main/JavacOption;->hasArg()Z

    move-result v0

    .line 164
    :goto_1
    return v0

    .line 160
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public makeByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 278
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 279
    if-ge v1, v0, :cond_3

    .line 280
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/util/BaseFileManager;->byteBufferCache:Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;->get(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 281
    const/4 v3, 0x0

    move v2, v0

    .line 282
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    if-lt v3, v2, :cond_1

    .line 285
    shl-int/lit8 v2, v2, 0x1

    .line 286
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 287
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 288
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    sub-int v4, v2, v3

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 291
    if-gez v1, :cond_0

    .line 294
    :goto_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0

    .line 292
    :cond_0
    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v1, v0

    .line 293
    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public recycleByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->byteBufferCache:Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/BaseFileManager$ByteBufferCache;->put(Ljava/nio/ByteBuffer;)V

    .line 299
    return-void
.end method

.method protected setContext(Lcom/sun/tools/javac/util/Context;)V
    .registers 4

    .line 72
    invoke-static {p1}, Lcom/sun/tools/javac/util/Log;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->log:Lcom/sun/tools/javac/util/Log;

    .line 73
    invoke-static {p1}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->options:Lcom/sun/tools/javac/util/Options;

    .line 74
    const-string v1, "procloader"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/BaseFileManager;->classLoaderClass:Ljava/lang/String;

    .line 75
    return-void
.end method
