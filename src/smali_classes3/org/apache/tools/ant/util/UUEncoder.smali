.class public Lorg/apache/tools/ant/util/UUEncoder;
.super Ljava/lang/Object;
.source "UUEncoder.java"


# static fields
.field protected static final DEFAULT_MODE:I = 0x284

.field private static final INPUT_BUFFER_SIZE:I = 0x1194

.field private static final MAX_CHARS_PER_LINE:I = 0x2d


# instance fields
.field private name:Ljava/lang/String;

.field private out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/tools/ant/util/UUEncoder;->name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private encodeBegin()V
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "begin 644 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/util/UUEncoder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/UUEncoder;->encodeString(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private encodeEnd()V
    .registers 2

    .line 95
    const-string v0, " \nend\n"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/util/UUEncoder;->encodeString(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private encodeLine([BIILjava/io/OutputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    .line 112
    and-int/lit8 v0, p3, 0x3f

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 118
    const/4 v3, 0x0

    move v0, v3

    :goto_0
    if-ge v0, p3, :cond_1

    .line 123
    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v5, p1, v0

    .line 124
    if-ge v3, p3, :cond_2

    .line 125
    add-int/lit8 v4, v3, 0x1

    add-int v0, v3, p2

    aget-byte v0, p1, v0

    .line 126
    if-ge v4, p3, :cond_0

    .line 127
    add-int/lit8 v3, v4, 0x1

    add-int v2, v4, p2

    aget-byte v2, p1, v2

    .line 132
    :goto_1
    ushr-int/lit8 v4, v5, 0x2

    and-int/lit8 v4, v4, 0x3f

    add-int/lit8 v4, v4, 0x20

    int-to-byte v4, v4

    .line 133
    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x20

    int-to-byte v5, v5

    .line 134
    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3c

    ushr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    .line 135
    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    .line 138
    invoke-virtual {p4, v4}, Ljava/io/OutputStream;->write(I)V

    .line 139
    invoke-virtual {p4, v5}, Ljava/io/OutputStream;->write(I)V

    .line 140
    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 141
    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    move v0, v3

    .line 142
    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v4

    .line 126
    goto :goto_1

    .line 145
    :cond_1
    const/16 v0, 0xa

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    .line 146
    return-void

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method private encodeString(Ljava/lang/String;)V
    .registers 4

    .line 85
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/apache/tools/ant/util/UUEncoder;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 88
    return-void
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x2d

    const/4 v4, 0x0

    .line 62
    iput-object p2, p0, Lorg/apache/tools/ant/util/UUEncoder;->out:Ljava/io/OutputStream;

    .line 63
    invoke-direct {p0}, Lorg/apache/tools/ant/util/UUEncoder;->encodeBegin()V

    .line 64
    const/16 v0, 0x1194

    new-array v5, v0, [B

    .line 66
    :cond_0
    array-length v0, v5

    invoke-virtual {p1, v5, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_2

    move v3, v4

    .line 68
    :goto_0
    if-lez v2, :cond_0

    .line 69
    if-le v2, v1, :cond_1

    move v0, v1

    .line 72
    :goto_1
    invoke-direct {p0, v5, v3, v0, p2}, Lorg/apache/tools/ant/util/UUEncoder;->encodeLine([BIILjava/io/OutputStream;)V

    .line 73
    add-int/2addr v3, v0

    .line 74
    sub-int/2addr v2, v0

    .line 75
    goto :goto_0

    :cond_1
    move v0, v2

    .line 71
    goto :goto_1

    .line 77
    :cond_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 78
    invoke-direct {p0}, Lorg/apache/tools/ant/util/UUEncoder;->encodeEnd()V

    .line 79
    return-void
.end method
