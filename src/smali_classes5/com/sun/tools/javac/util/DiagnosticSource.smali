.class public Lcom/sun/tools/javac/util/DiagnosticSource;
.super Ljava/lang/Object;
.source "DiagnosticSource.java"


# static fields
.field public static final NO_SOURCE:Lcom/sun/tools/javac/util/DiagnosticSource;


# instance fields
.field protected buf:[C

.field protected bufLen:I

.field protected endPosTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected fileObject:Ljavax/tools/JavaFileObject;

.field protected line:I

.field protected lineStart:I

.field protected log:Lcom/sun/tools/javac/util/AbstractLog;

.field protected refBuf:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Lcom/sun/tools/javac/util/DiagnosticSource$1;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/DiagnosticSource$1;-><init>()V

    sput-object v0, Lcom/sun/tools/javac/util/DiagnosticSource;->NO_SOURCE:Lcom/sun/tools/javac/util/DiagnosticSource;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/tools/javac/util/DiagnosticSource$1;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/sun/tools/javac/util/DiagnosticSource;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/tools/JavaFileObject;Lcom/sun/tools/javac/util/AbstractLog;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->fileObject:Ljavax/tools/JavaFileObject;

    .line 60
    iput-object p2, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->log:Lcom/sun/tools/javac/util/AbstractLog;

    .line 61
    return-void
.end method


# virtual methods
.method protected findLine(I)Z
    .registers 8

    const/16 v5, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 180
    :goto_7
    return v2

    .line 150
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->refBuf:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1a

    .line 151
    iget-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->refBuf:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    .line 153
    :cond_1a
    iget-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    if-nez v0, :cond_43

    .line 154
    iget-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->fileObject:Ljavax/tools/JavaFileObject;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/util/DiagnosticSource;->initBuf(Ljavax/tools/JavaFileObject;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->lineStart:I

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->line:I

    .line 162
    :cond_2c
    :goto_2c
    iget v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->lineStart:I

    move v3, v0

    .line 163
    :goto_2f
    iget v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->bufLen:I

    if-ge v3, v0, :cond_7b

    if-ge v3, p1, :cond_7b

    .line 164
    iget-object v4, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_37} :catch_4e

    add-int/lit8 v0, v3, 0x1

    aget-char v3, v4, v3

    if-eq v3, v5, :cond_72

    const/16 v4, 0xd

    if-eq v3, v4, :cond_5d

    :goto_41
    move v3, v0

    .line 173
    goto :goto_2f

    .line 157
    :cond_43
    :try_start_43
    iget v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->lineStart:I

    if-le v0, p1, :cond_2c

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->lineStart:I

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->line:I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4d} :catch_4e

    goto :goto_2c

    .line 177
    :catch_4e
    move-exception v0

    .line 178
    iget-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->log:Lcom/sun/tools/javac/util/AbstractLog;

    const-string v1, "source.unavailable"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/sun/tools/javac/util/AbstractLog;->directError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    goto :goto_7

    .line 166
    :cond_5d
    :try_start_5d
    iget v3, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->bufLen:I

    if-ge v0, v3, :cond_69

    iget-object v3, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    aget-char v3, v3, v0

    if-ne v3, v5, :cond_69

    add-int/lit8 v0, v0, 0x1

    .line 167
    :cond_69
    iget v3, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->line:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->line:I

    .line 168
    iput v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->lineStart:I

    goto :goto_41

    .line 171
    :cond_72
    iget v3, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->line:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->line:I

    .line 172
    iput v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->lineStart:I

    goto :goto_41

    .line 176
    :cond_7b
    iget v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->bufLen:I
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_7d} :catch_4e

    if-gt v3, v0, :cond_82

    move v0, v1

    :goto_80
    move v2, v0

    goto :goto_7

    :cond_82
    move v0, v2

    goto :goto_80
.end method

.method public getColumnNumber(IZ)I
    .registers 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 93
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/DiagnosticSource;->findLine(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 95
    iget v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->lineStart:I

    move v2, v0

    move v3, v1

    :goto_c
    if-ge v2, p1, :cond_2d

    .line 96
    iget v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->bufLen:I
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_36

    if-lt v2, v0, :cond_16

    .line 97
    iput-object v5, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    move v0, v1

    .line 107
    :goto_15
    return v0

    .line 99
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    aget-char v0, v0, v2

    const/16 v4, 0x9

    if-ne v0, v4, :cond_2a

    if-eqz p2, :cond_2a

    .line 100
    div-int/lit8 v0, v3, 0x8
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_36

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x8

    .line 95
    :goto_26
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_c

    .line 102
    :cond_2a
    add-int/lit8 v0, v3, 0x1

    goto :goto_26

    .line 105
    :cond_2d
    iput-object v5, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    add-int/lit8 v0, v3, 0x1

    goto :goto_15

    .line 107
    :cond_32
    iput-object v5, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    move v0, v1

    goto :goto_15

    .line 109
    :catchall_36
    move-exception v0

    iput-object v5, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    .line 110
    throw v0
.end method

.method public getEndPosTable()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->endPosTable:Ljava/util/Map;

    return-object v0
.end method

.method public getFile()Ljavax/tools/JavaFileObject;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->fileObject:Ljavax/tools/JavaFileObject;

    return-object v0
.end method

.method public getLine(I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 117
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/DiagnosticSource;->findLine(I)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_3e

    move-result v1

    if-nez v1, :cond_a

    .line 118
    iput-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    .line 125
    :goto_9
    return-object v0

    .line 120
    :cond_a
    :try_start_a
    iget v1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->lineStart:I

    move v2, v1

    .line 121
    :goto_d
    iget v1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->bufLen:I

    if-ge v2, v1, :cond_25

    iget-object v1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    aget-char v1, v1, v2

    const/16 v3, 0xd

    if-eq v1, v3, :cond_25

    iget-object v1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    aget-char v1, v1, v2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_25

    .line 122
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    .line 123
    :cond_25
    iget v1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->lineStart:I
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_3e

    sub-int v1, v2, v1

    if-nez v1, :cond_2e

    .line 124
    iput-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    goto :goto_9

    .line 125
    :cond_2e
    :try_start_2e
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    iget v4, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->lineStart:I

    iget v5, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->lineStart:I

    sub-int/2addr v2, v5

    invoke-direct {v1, v3, v4, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_3e

    .line 127
    iput-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    move-object v0, v1

    .line 125
    goto :goto_9

    .line 127
    :catchall_3e
    move-exception v1

    iput-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    .line 128
    throw v1
.end method

.method public getLineNumber(I)I
    .registers 4

    const/4 v1, 0x0

    .line 78
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/util/DiagnosticSource;->findLine(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 79
    iget v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->line:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    .line 83
    iput-object v1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    .line 81
    :goto_b
    return v0

    :cond_c
    iput-object v1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    const/4 v0, 0x0

    goto :goto_b

    .line 83
    :catchall_10
    move-exception v0

    iput-object v1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->buf:[C

    .line 84
    throw v0
.end method

.method protected initBuf(Ljavax/tools/JavaFileObject;)[C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljavax/tools/JavaFileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 187
    instance-of v1, v0, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_1e

    .line 188
    check-cast v0, Ljava/nio/CharBuffer;

    .line 189
    invoke-static {v0}, Lcom/sun/tools/javac/file/JavacFileManager;->toArray(Ljava/nio/CharBuffer;)[C

    move-result-object v1

    .line 190
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->bufLen:I

    move-object v0, v1

    .line 195
    :goto_16
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->refBuf:Ljava/lang/ref/SoftReference;

    .line 196
    return-object v0

    .line 192
    :cond_1e
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 193
    array-length v1, v0

    iput v1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->bufLen:I

    goto :goto_16
.end method

.method public setEndPosTable(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->endPosTable:Ljava/util/Map;

    if-eqz v0, :cond_6

    if-ne v0, p1, :cond_9

    .line 138
    :cond_6
    iput-object p1, p0, Lcom/sun/tools/javac/util/DiagnosticSource;->endPosTable:Ljava/util/Map;

    .line 139
    return-void

    .line 137
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "endPosTable already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
