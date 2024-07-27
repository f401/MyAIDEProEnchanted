.class public abstract Lorg/apache/tools/zip/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# static fields
.field private static final DOS_TIME_MIN:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    const-wide/16 v0, 0x2100

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/tools/zip/ZipUtil;->DOS_TIME_MIN:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustToLong(I)J
    .registers 5

    .line 102
    if-gez p0, :cond_0

    .line 103
    int-to-long v0, p0

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    .line 105
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p0

    goto :goto_0
.end method

.method static canHandleEntryData(Lorg/apache/tools/zip/ZipEntry;)Z
    .registers 2

    .line 229
    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->supportsEncryptionOf(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->supportsMethodOf(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static checkRequestedFeatures(Lorg/apache/tools/zip/ZipEntry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/zip/UnsupportedZipFeatureException;
        }
    .end annotation

    .line 259
    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->supportsEncryptionOf(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {p0}, Lorg/apache/tools/zip/ZipUtil;->supportsMethodOf(Lorg/apache/tools/zip/ZipEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    return-void

    .line 265
    :cond_0
    new-instance v0, Lorg/apache/tools/zip/UnsupportedZipFeatureException;

    sget-object v1, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;->METHOD:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/tools/zip/ZipEntry;)V

    throw v0

    .line 260
    :cond_1
    new-instance v0, Lorg/apache/tools/zip/UnsupportedZipFeatureException;

    sget-object v1, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;->ENCRYPTION:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    invoke-direct {v0, v1, p0}, Lorg/apache/tools/zip/UnsupportedZipFeatureException;-><init>(Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/tools/zip/ZipEntry;)V

    throw v0
.end method

.method static copy([B)[B
    .registers 4

    const/4 v2, 0x0

    .line 215
    if-eqz p0, :cond_0

    .line 216
    array-length v0, p0

    new-array v0, v0, [B

    .line 217
    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dosToJavaTime(J)J
    .registers 12

    const/16 v8, 0xb

    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 130
    const/16 v1, 0x19

    shr-long v2, p0, v1

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v1, v1, 0x7bc

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->set(II)V

    .line 131
    const/4 v1, 0x2

    const/16 v2, 0x15

    shr-long v2, p0, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 132
    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 133
    shr-long v2, p0, v8

    long-to-int v1, v2

    and-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 134
    const/16 v1, 0xc

    shr-long v2, p0, v7

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 135
    const/16 v1, 0xd

    shl-long v2, p0, v6

    long-to-int v2, v2

    and-int/lit8 v2, v2, 0x3e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 136
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 138
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static fromDosTime(Lorg/apache/tools/zip/ZipLong;)Ljava/util/Date;
    .registers 4

    .line 116
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipLong;->getValue()J

    move-result-wide v0

    .line 117
    new-instance v2, Ljava/util/Date;

    invoke-static {v0, v1}, Lorg/apache/tools/zip/ZipUtil;->dosToJavaTime(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private static getUnicodeStringIfOriginalMatches(Lorg/apache/tools/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 186
    if-eqz p0, :cond_0

    .line 187
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    .line 188
    invoke-virtual {v1, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 189
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    .line 191
    invoke-virtual {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->getNameCRC32()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 193
    :try_start_0
    sget-object v1, Lorg/apache/tools/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/tools/zip/ZipEncoding;

    .line 194
    invoke-virtual {p0}, Lorg/apache/tools/zip/AbstractUnicodeExtraField;->getUnicodeName()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/tools/zip/ZipEncoding;->decode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 204
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static setNameAndCommentFromExtraFields(Lorg/apache/tools/zip/ZipEntry;[B[B)V
    .registers 5

    .line 153
    sget-object v0, Lorg/apache/tools/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/tools/zip/ZipShort;

    .line 154
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/UnicodePathExtraField;

    .line 155
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v0, p1}, Lorg/apache/tools/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lorg/apache/tools/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 162
    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lez v0, :cond_1

    .line 163
    sget-object v0, Lorg/apache/tools/zip/UnicodeCommentExtraField;->UCOM_ID:Lorg/apache/tools/zip/ZipShort;

    .line 164
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/UnicodeCommentExtraField;

    .line 165
    invoke-static {v0, p2}, Lorg/apache/tools/zip/ZipUtil;->getUnicodeStringIfOriginalMatches(Lorg/apache/tools/zip/AbstractUnicodeExtraField;[B)Ljava/lang/String;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setComment(Ljava/lang/String;)V

    .line 171
    :cond_1
    return-void
.end method

.method private static supportsEncryptionOf(Lorg/apache/tools/zip/ZipEntry;)Z
    .registers 2

    .line 239
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getGeneralPurposeBit()Lorg/apache/tools/zip/GeneralPurposeBit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/zip/GeneralPurposeBit;->usesEncryption()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static supportsMethodOf(Lorg/apache/tools/zip/ZipEntry;)Z
    .registers 3

    .line 249
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    .line 250
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toDosTime(Ljava/util/Date;)Lorg/apache/tools/zip/ZipLong;
    .registers 5

    .line 42
    new-instance v0, Lorg/apache/tools/zip/ZipLong;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/ZipLong;-><init>([B)V

    return-object v0
.end method

.method public static toDosTime(J[BI)V
    .registers 6

    .line 71
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p0, p1, p2, p3}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(Ljava/util/Calendar;J[BI)V

    .line 72
    return-void
.end method

.method static toDosTime(Ljava/util/Calendar;J[BI)V
    .registers 12

    .line 75
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 78
    const/16 v1, 0x7bc

    if-ge v0, v1, :cond_0

    .line 79
    sget-object v0, Lorg/apache/tools/zip/ZipUtil;->DOS_TIME_MIN:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    :goto_0
    return-void

    .line 82
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 83
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 86
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 87
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 88
    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    add-int/lit16 v0, v0, -0x7bc

    shl-int/lit8 v0, v0, 0x19

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0xb

    or-int/2addr v0, v1

    shl-int/lit8 v1, v4, 0x5

    or-int/2addr v0, v1

    or-int/2addr v0, v5

    int-to-long v0, v0

    .line 89
    invoke-static {v0, v1, p3, p4}, Lorg/apache/tools/zip/ZipLong;->putLong(J[BI)V

    goto :goto_0
.end method

.method public static toDosTime(J)[B
    .registers 4

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 55
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/tools/zip/ZipUtil;->toDosTime(J[BI)V

    .line 56
    return-object v0
.end method
