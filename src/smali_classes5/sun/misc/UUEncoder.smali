.class public Lsun/misc/UUEncoder;
.super Lsun/misc/CharacterEncoder;
.source "UUEncoder.java"


# instance fields
.field private bufferName:Ljava/lang/String;

.field private mode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Lsun/misc/CharacterEncoder;-><init>()V

    .line 94
    const-string v0, "encoder.buf"

    iput-object v0, p0, Lsun/misc/UUEncoder;->bufferName:Ljava/lang/String;

    .line 95
    const/16 v0, 0x284

    iput v0, p0, Lsun/misc/UUEncoder;->mode:I

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 104
    invoke-direct {p0}, Lsun/misc/CharacterEncoder;-><init>()V

    .line 105
    iput-object p1, p0, Lsun/misc/UUEncoder;->bufferName:Ljava/lang/String;

    .line 106
    const/16 v0, 0x284

    iput v0, p0, Lsun/misc/UUEncoder;->mode:I

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 115
    invoke-direct {p0}, Lsun/misc/CharacterEncoder;-><init>()V

    .line 116
    iput-object p1, p0, Lsun/misc/UUEncoder;->bufferName:Ljava/lang/String;

    .line 117
    iput p2, p0, Lsun/misc/UUEncoder;->mode:I

    .line 118
    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .registers 2

    .line 122
    const/4 v0, 0x3

    return v0
.end method

.method protected bytesPerLine()I
    .registers 2

    .line 127
    const/16 v0, 0x2d

    return v0
.end method

.method protected encodeAtom(Ljava/io/OutputStream;[BII)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 138
    .line 141
    aget-byte v2, p2, p3

    .line 142
    if-le p4, v0, :cond_3d

    .line 143
    add-int/lit8 v1, p3, 0x1

    aget-byte v1, p2, v1

    .line 145
    :goto_9
    const/4 v3, 0x2

    if-le p4, v3, :cond_10

    .line 146
    add-int/lit8 v0, p3, 0x2

    aget-byte v0, p2, v0

    .line 149
    :cond_10
    ushr-int/lit8 v3, v2, 0x2

    and-int/lit8 v3, v3, 0x3f

    add-int/lit8 v3, v3, 0x20

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 154
    shl-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0x30

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 155
    shl-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, 0x3c

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 156
    and-int/lit8 v0, v0, 0x3f

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 157
    return-void

    :cond_3d
    move v1, v0

    goto :goto_9
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    .line 182
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lsun/misc/UUEncoder;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lsun/misc/UUEncoder;->bufferName:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 184
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    iget-object v1, p0, Lsun/misc/UUEncoder;->bufferName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    :goto_2f
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 189
    return-void

    .line 186
    :cond_35
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, "encoder.bin"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method protected encodeBufferSuffix(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, " \nend"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 198
    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    and-int/lit8 v0, p2, 0x3f

    add-int/lit8 v0, v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 167
    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lsun/misc/UUEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 175
    return-void
.end method
