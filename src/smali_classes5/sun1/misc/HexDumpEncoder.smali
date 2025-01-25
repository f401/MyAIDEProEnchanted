.class public Lsun1/misc/HexDumpEncoder;
.super Lsun1/misc/CharacterEncoder;


# instance fields
.field private currentByte:I

.field private offset:I

.field private thisLine:[B

.field private thisLineLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lsun1/misc/CharacterEncoder;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lsun1/misc/HexDumpEncoder;->thisLine:[B

    return-void
.end method

.method static hexDigit(Ljava/io/PrintStream;B)V
    .registers 4

    const/16 v1, 0x9

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-char v0, v0

    if-le v0, v1, :cond_1f

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x41

    :goto_d
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    and-int/lit8 v0, p1, 0xf

    int-to-char v0, v0

    if-le v0, v1, :cond_22

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x41

    :goto_1a
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->write(I)V

    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x30

    goto :goto_d

    :cond_22
    add-int/lit8 v0, v0, 0x30

    goto :goto_1a
.end method


# virtual methods
.method protected bytesPerAtom()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected bytesPerLine()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method protected encodeAtom(Ljava/io/OutputStream;[BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/misc/HexDumpEncoder;->thisLine:[B

    iget v1, p0, Lsun1/misc/HexDumpEncoder;->currentByte:I

    aget-byte v2, p2, p3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    aget-byte v1, p2, p3

    invoke-static {v0, v1}, Lsun1/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    iget-object v0, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget v0, p0, Lsun1/misc/HexDumpEncoder;->currentByte:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun1/misc/HexDumpEncoder;->currentByte:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lsun1/misc/HexDumpEncoder;->offset:I

    invoke-super {p0, p1}, Lsun1/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget v1, p0, Lsun1/misc/HexDumpEncoder;->offset:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lsun1/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    iget-object v0, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget v1, p0, Lsun1/misc/HexDumpEncoder;->offset:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lsun1/misc/HexDumpEncoder;->hexDigit(Ljava/io/PrintStream;B)V

    iget-object v0, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lsun1/misc/HexDumpEncoder;->currentByte:I

    iput p2, p0, Lsun1/misc/HexDumpEncoder;->thisLineLength:I

    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x10

    iget v0, p0, Lsun1/misc/HexDumpEncoder;->thisLineLength:I

    if-ge v0, v3, :cond_8

    :goto_6
    if-lt v0, v3, :cond_21

    :cond_8
    iget-object v0, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_10
    iget v1, p0, Lsun1/misc/HexDumpEncoder;->thisLineLength:I

    if-lt v0, v1, :cond_35

    iget-object v0, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    iget v0, p0, Lsun1/misc/HexDumpEncoder;->offset:I

    iget v1, p0, Lsun1/misc/HexDumpEncoder;->thisLineLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lsun1/misc/HexDumpEncoder;->offset:I

    return-void

    :cond_21
    iget-object v1, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x7

    if-ne v0, v1, :cond_32

    iget-object v1, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_35
    iget-object v1, p0, Lsun1/misc/HexDumpEncoder;->thisLine:[B

    aget-byte v2, v1, v0

    const/16 v3, 0x20

    if-lt v2, v3, :cond_43

    aget-byte v1, v1, v0

    const/16 v2, 0x7a

    if-le v1, v2, :cond_4d

    :cond_43
    iget-object v1, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_4d
    iget-object v1, p0, Lsun1/misc/HexDumpEncoder;->pStream:Ljava/io/PrintStream;

    iget-object v2, p0, Lsun1/misc/HexDumpEncoder;->thisLine:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->write(I)V

    goto :goto_4a
.end method
