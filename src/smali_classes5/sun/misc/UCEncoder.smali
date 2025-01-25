.class public Lsun/misc/UCEncoder;
.super Lsun/misc/CharacterEncoder;
.source "UCEncoder.java"


# static fields
.field private static final map_array:[B


# instance fields
.field private crc:Lsun/misc/CRC16;

.field private sequence:I

.field private tmp:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 89
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lsun/misc/UCEncoder;->map_array:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x28t
        0x29t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Lsun/misc/CharacterEncoder;-><init>()V

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/misc/UCEncoder;->tmp:[B

    .line 103
    new-instance v0, Lsun/misc/CRC16;

    invoke-direct {v0}, Lsun/misc/CRC16;-><init>()V

    iput-object v0, p0, Lsun/misc/UCEncoder;->crc:Lsun/misc/CRC16;

    return-void
.end method


# virtual methods
.method protected bytesPerAtom()I
    .registers 2

    .line 80
    const/4 v0, 0x2

    return v0
.end method

.method protected bytesPerLine()I
    .registers 2

    .line 85
    const/16 v0, 0x30

    return v0
.end method

.method protected encodeAtom(Ljava/io/OutputStream;[BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 116
    aget-byte v5, p2, p3

    .line 117
    if-ne p4, v3, :cond_3e

    .line 118
    add-int/lit8 v0, p3, 0x1

    aget-byte v0, p2, v0

    .line 122
    :goto_a
    iget-object v2, p0, Lsun/misc/UCEncoder;->crc:Lsun/misc/CRC16;

    invoke-virtual {v2, v5}, Lsun/misc/CRC16;->update(B)V

    .line 123
    if-ne p4, v3, :cond_16

    .line 124
    iget-object v2, p0, Lsun/misc/UCEncoder;->crc:Lsun/misc/CRC16;

    invoke-virtual {v2, v0}, Lsun/misc/CRC16;->update(B)V

    .line 126
    :cond_16
    sget-object v2, Lsun/misc/UCEncoder;->map_array:[B

    ushr-int/lit8 v3, v5, 0x2

    and-int/lit8 v3, v3, 0x38

    ushr-int/lit8 v4, v0, 0x5

    and-int/lit8 v4, v4, 0x7

    add-int/2addr v3, v4

    aget-byte v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 128
    const/4 v4, 0x1

    move v3, v1

    move v2, v1

    :goto_29
    const/16 v1, 0x100

    if-ge v4, v1, :cond_40

    .line 129
    and-int v1, v5, v4

    if-eqz v1, :cond_34

    .line 130
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    .line 132
    :cond_34
    and-int v1, v0, v4

    if-eqz v1, :cond_5d

    .line 133
    add-int/lit8 v1, v2, 0x1

    .line 128
    :goto_3a
    mul-int/lit8 v4, v4, 0x2

    move v2, v1

    goto :goto_29

    :cond_3e
    move v0, v1

    .line 120
    goto :goto_a

    .line 136
    :cond_40
    sget-object v1, Lsun/misc/UCEncoder;->map_array:[B

    and-int/lit8 v4, v5, 0x1f

    and-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x20

    add-int/2addr v3, v4

    aget-byte v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 139
    sget-object v1, Lsun/misc/UCEncoder;->map_array:[B

    and-int/lit8 v0, v0, 0x1f

    and-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x20

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 140
    return-void

    :cond_5d
    move v1, v2

    goto :goto_3a
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lsun/misc/UCEncoder;->sequence:I

    .line 176
    invoke-super {p0, p1}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 177
    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 149
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 150
    iget-object v0, p0, Lsun/misc/UCEncoder;->crc:Lsun/misc/CRC16;

    iput v4, v0, Lsun/misc/CRC16;->value:I

    .line 151
    iget-object v0, p0, Lsun/misc/UCEncoder;->tmp:[B

    int-to-byte v1, p2

    aput-byte v1, v0, v4

    .line 152
    iget v1, p0, Lsun/misc/UCEncoder;->sequence:I

    const/4 v2, 0x1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 153
    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lsun/misc/UCEncoder;->sequence:I

    .line 154
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v4, v1}, Lsun/misc/UCEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 155
    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lsun/misc/UCEncoder;->tmp:[B

    iget-object v1, p0, Lsun/misc/UCEncoder;->crc:Lsun/misc/CRC16;

    iget v1, v1, Lsun/misc/CRC16;->value:I

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 165
    iget-object v0, p0, Lsun/misc/UCEncoder;->tmp:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lsun/misc/UCEncoder;->crc:Lsun/misc/CRC16;

    iget v2, v2, Lsun/misc/CRC16;->value:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 166
    iget-object v0, p0, Lsun/misc/UCEncoder;->tmp:[B

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v3, v1}, Lsun/misc/UCEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 167
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 168
    return-void
.end method
