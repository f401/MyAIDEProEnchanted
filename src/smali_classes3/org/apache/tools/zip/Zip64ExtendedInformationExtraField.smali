.class public Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;
.super Ljava/lang/Object;
.source "Zip64ExtendedInformationExtraField.java"

# interfaces
.implements Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;


# static fields
.field private static final EMPTY:[B

.field static final HEADER_ID:Lorg/apache/tools/zip/ZipShort;

.field private static final LFH_MUST_HAVE_BOTH_SIZES_MSG:Ljava/lang/String; = "Zip64 extended information must contain both size values in the local file header."


# instance fields
.field private compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

.field private diskStart:Lorg/apache/tools/zip/ZipLong;

.field private rawCentralDirectoryData:[B

.field private relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

.field private size:Lorg/apache/tools/zip/ZipEightByteInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lorg/apache/tools/zip/ZipShort;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->EMPTY:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipEightByteInteger;)V
    .registers 4

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;-><init>(Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipLong;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipEightByteInteger;Lorg/apache/tools/zip/ZipLong;)V
    .registers 5

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 96
    iput-object p2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 97
    iput-object p3, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 98
    iput-object p4, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    .line 99
    return-void
.end method

.method private addSizes([B)I
    .registers 6

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 332
    .line 333
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 337
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v3, :cond_0

    .line 338
    invoke-virtual {v3}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    add-int/lit8 v0, v0, 0x8

    .line 341
    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public getCentralDirectoryData()[B
    .registers 6

    const/4 v4, 0x0

    .line 134
    invoke-virtual {p0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipShort;->getValue()I

    move-result v0

    new-array v1, v0, [B

    .line 135
    invoke-direct {p0, v1}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->addSizes([B)I

    move-result v0

    .line 136
    iget-object v2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipEightByteInteger;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    add-int/lit8 v0, v0, 0x8

    .line 140
    :cond_0
    iget-object v2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v2}, Lorg/apache/tools/zip/ZipLong;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    :cond_1
    return-object v1
.end method

.method public getCentralDirectoryLength()Lorg/apache/tools/zip/ZipShort;
    .registers 6

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v0, :cond_1

    move v0, v1

    .line 114
    :goto_0
    iget-object v3, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v3, :cond_2

    move v3, v1

    .line 115
    :goto_1
    iget-object v4, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v4, :cond_3

    .line 116
    :goto_2
    iget-object v4, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    if-eqz v4, :cond_0

    const/4 v2, 0x4

    :cond_0
    new-instance v4, Lorg/apache/tools/zip/ZipShort;

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-direct {v4, v0}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    .line 113
    return-object v4

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    .line 114
    goto :goto_1

    :cond_3
    move v1, v2

    .line 115
    goto :goto_2
.end method

.method public getCompressedSize()Lorg/apache/tools/zip/ZipEightByteInteger;
    .registers 2

    .line 283
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getDiskStartNumber()Lorg/apache/tools/zip/ZipLong;
    .registers 2

    .line 319
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    return-object v0
.end method

.method public getHeaderId()Lorg/apache/tools/zip/ZipShort;
    .registers 2

    .line 103
    sget-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->HEADER_ID:Lorg/apache/tools/zip/ZipShort;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .registers 3

    .line 121
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v0, :cond_2

    .line 125
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 126
    invoke-direct {p0, v0}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->addSizes([B)I

    .line 129
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->EMPTY:[B

    goto :goto_0

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocalFileDataLength()Lorg/apache/tools/zip/ZipShort;
    .registers 3

    .line 108
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    new-instance v1, Lorg/apache/tools/zip/ZipShort;

    invoke-direct {v1, v0}, Lorg/apache/tools/zip/ZipShort;-><init>(I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRelativeHeaderOffset()Lorg/apache/tools/zip/ZipEightByteInteger;
    .registers 2

    .line 301
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public getSize()Lorg/apache/tools/zip/ZipEightByteInteger;
    .registers 2

    .line 265
    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    return-object v0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 182
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    .line 183
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    const/16 v0, 0x1c

    if-lt p3, v0, :cond_1

    .line 192
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->parseFromLocalFileData([BII)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const/16 v0, 0x18

    if-ne p3, v0, :cond_2

    .line 194
    new-instance v0, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 195
    add-int/lit8 v0, p2, 0x8

    .line 196
    new-instance v1, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 197
    new-instance v1, Lorg/apache/tools/zip/ZipEightByteInteger;

    add-int/lit8 v0, v0, 0x8

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    goto :goto_0

    .line 199
    :cond_2
    rem-int/lit8 v0, p3, 0x8

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 200
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x4

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/zip/ZipLong;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    goto :goto_0
.end method

.method public parseFromLocalFileData([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 150
    if-nez p3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    const/16 v0, 0x10

    if-lt p3, v0, :cond_3

    .line 160
    new-instance v0, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {v0, p1, p2}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 161
    add-int/lit8 v0, p2, 0x8

    .line 162
    new-instance v1, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {v1, p1, v0}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 163
    add-int/lit8 v1, v0, 0x8

    .line 164
    add-int/lit8 v0, p3, -0x10

    .line 165
    const/16 v2, 0x8

    if-lt v0, v2, :cond_2

    .line 166
    new-instance v2, Lorg/apache/tools/zip/ZipEightByteInteger;

    invoke-direct {v2, p1, v1}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 167
    add-int/lit8 v1, v1, 0x8

    .line 168
    add-int/lit8 v0, v0, -0x8

    .line 170
    :cond_2
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 171
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    invoke-direct {v0, p1, v1}, Lorg/apache/tools/zip/ZipLong;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    goto :goto_0

    .line 158
    :cond_3
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "Zip64 extended information must contain both size values in the local file header."

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reparseCentralDirectoryData(ZZZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 224
    iget-object v6, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    if-eqz v6, :cond_2

    .line 225
    if-eqz p1, :cond_3

    move v5, v2

    .line 226
    :goto_0
    if-eqz p2, :cond_4

    move v4, v2

    .line 227
    :goto_1
    if-eqz p3, :cond_5

    move v3, v2

    .line 228
    :goto_2
    if-eqz p4, :cond_8

    const/4 v0, 0x4

    :goto_3
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 229
    array-length v3, v6

    if-lt v3, v0, :cond_6

    .line 238
    if-eqz p1, :cond_7

    .line 239
    new-instance v0, Lorg/apache/tools/zip/ZipEightByteInteger;

    iget-object v3, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {v0, v3, v1}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    move v0, v2

    .line 242
    :goto_4
    if-eqz p2, :cond_0

    .line 243
    new-instance v1, Lorg/apache/tools/zip/ZipEightByteInteger;

    iget-object v2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 245
    add-int/lit8 v0, v0, 0x8

    .line 247
    :cond_0
    if-eqz p3, :cond_1

    .line 248
    new-instance v1, Lorg/apache/tools/zip/ZipEightByteInteger;

    iget-object v2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/zip/ZipEightByteInteger;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 250
    add-int/lit8 v0, v0, 0x8

    .line 252
    :cond_1
    if-eqz p4, :cond_2

    .line 253
    new-instance v1, Lorg/apache/tools/zip/ZipLong;

    iget-object v2, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/zip/ZipLong;-><init>([BI)V

    iput-object v1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    .line 257
    :cond_2
    return-void

    :cond_3
    move v5, v1

    .line 225
    goto :goto_0

    :cond_4
    move v4, v1

    .line 226
    goto :goto_1

    :cond_5
    move v3, v1

    .line 227
    goto :goto_2

    .line 230
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "central directory zip64 extended information extra field\'s length doesn\'t match central directory data.  Expected length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->rawCentralDirectoryData:[B

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_3
.end method

.method public setCompressedSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->compressedSize:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 293
    return-void
.end method

.method public setDiskStartNumber(Lorg/apache/tools/zip/ZipLong;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->diskStart:Lorg/apache/tools/zip/ZipLong;

    .line 329
    return-void
.end method

.method public setRelativeHeaderOffset(Lorg/apache/tools/zip/ZipEightByteInteger;)V
    .registers 2

    .line 310
    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->relativeHeaderOffset:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 311
    return-void
.end method

.method public setSize(Lorg/apache/tools/zip/ZipEightByteInteger;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lorg/apache/tools/zip/Zip64ExtendedInformationExtraField;->size:Lorg/apache/tools/zip/ZipEightByteInteger;

    .line 275
    return-void
.end method
