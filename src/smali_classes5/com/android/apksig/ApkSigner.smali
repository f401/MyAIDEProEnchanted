.class public Lcom/android/apksig/ApkSigner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/ApkSigner$Builder;,
        Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;,
        Lcom/android/apksig/ApkSigner$SignerConfig;,
        Lcom/android/apksig/ApkSigner$SignerConfig$Builder;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_ZIP_EXTRA_DATA_FIELD_HEADER_ID:S = -0x26cbs

.field private static final ALIGNMENT_ZIP_EXTRA_DATA_FIELD_MIN_SIZE_BYTES:S = 0x6s

.field private static final ANDROID_COMMON_PAGE_ALIGNMENT_BYTES:S = 0x1000s

.field private static final ANDROID_MANIFEST_ZIP_ENTRY_NAME:Ljava/lang/String; = "AndroidManifest.xml"


# instance fields
.field private final mCreatedBy:Ljava/lang/String;

.field private final mDebuggableApkPermitted:Z

.field private final mInputApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mInputApkFile:Ljava/io/File;

.field private final mMinSdkVersion:Ljava/lang/Integer;

.field private final mOtherSignersSignaturesPreserved:Z

.field private final mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

.field private final mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

.field private final mOutputApkFile:Ljava/io/File;

.field private final mOutputV4File:Ljava/io/File;

.field private final mSignerConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

.field private final mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

.field private final mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

.field private final mV1SigningEnabled:Z

.field private final mV2SigningEnabled:Z

.field private final mV3SigningEnabled:Z

.field private final mV4ErrorReportingEnabled:Z

.field private final mV4SigningEnabled:Z


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/android/apksig/ApkSigner$SignerConfig;Ljava/lang/Integer;ZZZZZZZLjava/lang/String;Lcom/android/apksig/ApkSignerEngine;Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/SigningCertificateLineage;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            ">;",
            "Lcom/android/apksig/ApkSigner$SignerConfig;",
            "Ljava/lang/Integer;",
            "ZZZZZZZ",
            "Ljava/lang/String;",
            "Lcom/android/apksig/ApkSignerEngine;",
            "Ljava/io/File;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/io/File;",
            "Lcom/android/apksig/util/DataSink;",
            "Lcom/android/apksig/util/DataSource;",
            "Ljava/io/File;",
            "Lcom/android/apksig/SigningCertificateLineage;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/ApkSigner;->mSignerConfigs:Ljava/util/List;

    iput-object p2, p0, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    iput-object p3, p0, Lcom/android/apksig/ApkSigner;->mMinSdkVersion:Ljava/lang/Integer;

    iput-boolean p4, p0, Lcom/android/apksig/ApkSigner;->mV1SigningEnabled:Z

    iput-boolean p5, p0, Lcom/android/apksig/ApkSigner;->mV2SigningEnabled:Z

    iput-boolean p6, p0, Lcom/android/apksig/ApkSigner;->mV3SigningEnabled:Z

    iput-boolean p7, p0, Lcom/android/apksig/ApkSigner;->mV4SigningEnabled:Z

    iput-boolean p8, p0, Lcom/android/apksig/ApkSigner;->mV4ErrorReportingEnabled:Z

    iput-boolean p9, p0, Lcom/android/apksig/ApkSigner;->mDebuggableApkPermitted:Z

    iput-boolean p10, p0, Lcom/android/apksig/ApkSigner;->mOtherSignersSignaturesPreserved:Z

    iput-object p11, p0, Lcom/android/apksig/ApkSigner;->mCreatedBy:Ljava/lang/String;

    iput-object p12, p0, Lcom/android/apksig/ApkSigner;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    iput-object p13, p0, Lcom/android/apksig/ApkSigner;->mInputApkFile:Ljava/io/File;

    iput-object p14, p0, Lcom/android/apksig/ApkSigner;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/apksig/ApkSigner;->mOutputApkFile:Ljava/io/File;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/apksig/ApkSigner;->mOutputV4File:Ljava/io/File;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/apksig/ApkSigner;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/android/apksig/ApkSigner$SignerConfig;Ljava/lang/Integer;ZZZZZZZLjava/lang/String;Lcom/android/apksig/ApkSignerEngine;Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/SigningCertificateLineage;Lcom/android/apksig/ApkSigner$1;)V
    .registers 21

    invoke-direct/range {p0 .. p19}, Lcom/android/apksig/ApkSigner;-><init>(Ljava/util/List;Lcom/android/apksig/ApkSigner$SignerConfig;Ljava/lang/Integer;ZZZZZZZLjava/lang/String;Lcom/android/apksig/ApkSignerEngine;Ljava/io/File;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;Ljava/io/File;Lcom/android/apksig/SigningCertificateLineage;)V

    return-void
.end method

.method private static createExtraFieldToAlignData(Ljava/nio/ByteBuffer;JI)Ljava/nio/ByteBuffer;
    .registers 11

    const/16 v6, -0x26cb

    const/4 v0, 0x1

    if-gt p3, v0, :cond_6

    :goto_5
    return-object p0

    :cond_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2b

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {p0}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_52

    :cond_2b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v2, v1

    add-long/2addr v2, p1

    const-wide/16 v4, 0x6

    add-long/2addr v2, v4

    int-to-long v4, p3

    rem-long/2addr v2, v4

    long-to-int v1, v2

    sub-int v1, p3, v1

    rem-int/2addr v1, p3

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v1, 0x2

    invoke-static {v0, v2}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-static {v0, p3}, Lcom/android/apksig/internal/zip/ZipUtils;->putUnsignedInt16(Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object p0, v0

    goto :goto_5

    :cond_52
    if-nez v1, :cond_56

    if-eqz v2, :cond_58

    :cond_56
    if-ne v1, v6, :cond_61

    :cond_58
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_16

    :cond_61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_16
.end method

.method private static extractPinPatterns(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/Hints$PatternWithRange;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    const-string v0, "assets/com.android.hints.pins.txt"

    invoke-static {p0, v0}, Lcom/android/apksig/ApkSigner;->findCdRecord(Ljava/util/List;Ljava/lang/String;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-result-object v0

    if-eqz v0, :cond_32

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_d
    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B
    :try_end_14
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_d .. :try_end_14} :catch_1a

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/Hints;->parsePinPatterns([B)Ljava/util/ArrayList;

    move-result-object v0

    :goto_19
    return-object v0

    :catch_1a
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static findCdRecord(Ljava/util/List;Ljava/lang/String;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static fulfillInspectInputJarEntryRequest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->getDataSink()Lcom/android/apksig/util/DataSink;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)V
    :try_end_7
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_7} :catch_b

    invoke-interface {p2}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->done()V

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed ZIP entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static getAndroidManifestFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Lcom/android/apksig/zip/ZipFormatException;
        }
    .end annotation

    const-string v0, "AndroidManifest.xml"

    invoke-static {p0, v0}, Lcom/android/apksig/ApkSigner;->findCdRecord(Ljava/util/List;Ljava/lang/String;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {p1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Missing AndroidManifest.xml"

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInputJarEntryDataAlignmentMultiple(Lcom/android/apksig/internal/zip/LocalFileRecord;)I
    .registers 6

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->isDataCompressed()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_8
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtra()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_18
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_2c

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v1}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v3, v4, :cond_3b

    :cond_2c
    invoke-virtual {p0}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1000

    goto :goto_8

    :cond_3b
    const/16 v4, -0x26cb

    if-eq v2, v4, :cond_48

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_18

    :cond_48
    const/4 v2, 0x2

    if-lt v3, v2, :cond_2c

    invoke-static {v1}, Lcom/android/apksig/internal/zip/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_8
.end method

.method private static getMinSdkVersionFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;",
            "Lcom/android/apksig/util/DataSource;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/MinSdkVersionException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/apksig/ApkSigner;->getAndroidManifestFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_3} :catch_9
    .catch Lcom/android/apksig/apk/ApkFormatException; {:try_start_0 .. :try_end_3} :catch_12

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/apk/ApkUtils;->getMinSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    :catch_9
    move-exception v0

    :goto_a
    new-instance v1, Lcom/android/apksig/apk/MinSdkVersionException;

    const-string v2, "Failed to determine APK\'s minimum supported Android platform version"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/apk/MinSdkVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_12
    move-exception v0

    goto :goto_a
.end method

.method private static getZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectorySizeBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1a

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v2

    long-to-int v0, v0

    invoke-interface {p0, v2, v3, v0}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZIP Central Directory too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[BJ",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;II",
            "Lcom/android/apksig/util/DataSink;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/apksig/internal/zip/ZipUtils;->deflate(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;

    move-result-object v2

    iget-object v5, v2, Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;->output:[B

    iget-wide v6, v2, Lcom/android/apksig/internal/zip/ZipUtils$DeflateResult;->inputCrc32:J

    move-object/from16 v0, p1

    array-length v2, v0

    int-to-long v8, v2

    move-object/from16 v2, p0

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecordWithDeflateCompressedData(Ljava/lang/String;II[BJJLcom/android/apksig/util/DataSink;)J

    move-result-wide v14

    array-length v2, v5

    int-to-long v8, v2

    move-object/from16 v0, p1

    array-length v2, v0

    int-to-long v10, v2

    move-object/from16 v3, p0

    move/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v12, p2

    invoke-static/range {v3 .. v13}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->createWithDeflateCompressedData(Ljava/lang/String;IIJJJJ)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-wide v14
.end method

.method private static outputInputJarEntryLfhRecordPreservingDataAlignment(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/util/DataSink;J)Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getStartOffsetInArchive()J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-nez v2, :cond_17

    new-instance v0, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    invoke-virtual {p1, p0, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    :goto_16
    return-object v0

    :cond_17
    invoke-static {p1}, Lcom/android/apksig/ApkSigner;->getInputJarEntryDataAlignmentMultiple(Lcom/android/apksig/internal/zip/LocalFileRecord;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_27

    int-to-long v4, v2

    rem-long v6, v0, v4

    rem-long v8, p3, v4

    cmp-long v3, v6, v8

    if-nez v3, :cond_36

    :cond_27
    new-instance v0, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    invoke-virtual {p1, p0, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    goto :goto_16

    :cond_36
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v0, v6

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_52

    new-instance v0, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    invoke-virtual {p1, p0, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    goto :goto_16

    :cond_52
    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtra()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtraFieldStartOffsetInsideRecord()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v4, p3

    invoke-static {v0, v4, v5, v2}, Lcom/android/apksig/ApkSigner;->createExtraFieldToAlignData(Ljava/nio/ByteBuffer;JI)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getDataStartOffsetInRecord()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p1}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getExtra()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v6, v0

    new-instance v0, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    invoke-virtual {p1, p0, v1, p2}, Lcom/android/apksig/internal/zip/LocalFileRecord;->outputRecordWithModifiedExtra(Lcom/android/apksig/util/DataSource;Ljava/nio/ByteBuffer;Lcom/android/apksig/util/DataSink;)J

    move-result-wide v8

    add-long/2addr v2, v4

    sub-long/2addr v2, v6

    invoke-direct {v0, v8, v9, v2, v3}, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;-><init>(JJ)V

    goto :goto_16
.end method

.method private static parseZipCentralDirectory(Ljava/nio/ByteBuffer;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lcom/android/apksig/apk/ApkUtils$ZipSections;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/zip/CentralDirectoryRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryRecordCount()I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_68

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    :try_start_19
    invoke-static {p0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getRecord(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;
    :try_end_1c
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_19 .. :try_end_1c} :catch_44

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multiple ZIP entries with the same name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_44
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Malformed ZIP Central Directory record #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at file offset "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v6, v6

    add-long/2addr v2, v6

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_68
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_6f

    return-object v4

    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unused space at the end of ZIP Central Directory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes starting at file offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sign(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;)V
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;
    :try_end_3
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_3} :catch_404

    move-result-object v17

    const/4 v6, 0x0

    :try_start_5
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/apksig/apk/ApkUtils;->findApkSigningBlock(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;->getStartOffset()J
    :try_end_10
    .catch Lcom/android/apksig/apk/ApkSigningBlockNotFoundException; {:try_start_5 .. :try_end_10} :catch_132

    move-result-wide v4

    :try_start_11
    invoke-virtual {v7}, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;->getContents()Lcom/android/apksig/util/DataSource;
    :try_end_14
    .catch Lcom/android/apksig/apk/ApkSigningBlockNotFoundException; {:try_start_11 .. :try_end_14} :catch_40d

    move-result-object v7

    :goto_15
    const-wide/16 v8, -0x1

    cmp-long v8, v4, v8

    if-eqz v8, :cond_138

    :goto_1b
    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v8, v9, v4, v5}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/apksig/ApkSigner;->getZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/android/apksig/ApkSigner;->parseZipCentralDirectory(Ljava/nio/ByteBuffer;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v0, v5}, Lcom/android/apksig/ApkSigner;->extractPinPatterns(Ljava/util/List;Lcom/android/apksig/util/DataSource;)Ljava/util/List;

    move-result-object v16

    if-nez v16, :cond_13e

    move-object v8, v6

    :goto_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/apksig/ApkSigner;->mSignerEngine:Lcom/android/apksig/ApkSignerEngine;

    if-eqz v4, :cond_146

    move-object v12, v4

    :goto_41
    if-eqz v7, :cond_46

    invoke-interface {v12, v7}, Lcom/android/apksig/ApkSignerEngine;->inputApkSigningBlock(Lcom/android/apksig/util/DataSource;)V

    :cond_46
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v6, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->BY_LOCAL_FILE_HEADER_OFFSET_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v25, Ljava/util/HashMap;

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    const/4 v13, -0x1

    const-wide/16 v6, 0x0

    const/4 v14, -0x1

    const-wide/16 v10, 0x0

    move-wide/from16 v18, v10

    move-object v15, v8

    :cond_6a
    :goto_6a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v27

    const-string v4, "pinlist.meta"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Lcom/android/apksig/ApkSignerEngine;->inputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;

    move-result-object v28

    sget-object v4, Lcom/android/apksig/ApkSigner$1;->$SwitchMap$com$android$apksig$ApkSignerEngine$InputJarEntryInstructions$OutputPolicy:[I

    invoke-virtual/range {v28 .. v28}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;->getOutputPolicy()Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->ordinal()I

    move-result v8

    aget v4, v4, v8

    const/4 v8, 0x1

    if-eq v4, v8, :cond_219

    const/4 v8, 0x2

    if-eq v4, v8, :cond_a0

    const/4 v8, 0x3

    if-ne v4, v8, :cond_1fe

    :cond_a0
    const/4 v4, 0x0

    :goto_a1
    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLocalFileHeaderOffset()J

    move-result-wide v22

    cmp-long v8, v22, v6

    if-lez v8, :cond_41f

    sub-long v8, v22, v6

    move-object/from16 v10, p2

    invoke-interface/range {v5 .. v10}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    add-long v20, v18, v8

    :goto_b2
    :try_start_b2
    invoke-interface {v5}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v6

    invoke-static {v5, v11, v6, v7}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getRecord(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)Lcom/android/apksig/internal/zip/LocalFileRecord;
    :try_end_b9
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_b2 .. :try_end_b9} :catch_25e

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getSize()J

    move-result-wide v30

    invoke-virtual/range {v28 .. v28}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;->getInspectJarEntryRequest()Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    move-result-object v6

    if-eqz v6, :cond_c7

    invoke-static {v5, v9, v6}, Lcom/android/apksig/ApkSigner;->fulfillInspectInputJarEntryRequest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V

    :cond_c7
    if-eqz v4, :cond_258

    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLastModificationDate()I

    move-result v7

    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getLastModificationTime()I

    move-result v4

    const/4 v6, -0x1

    if-eq v14, v6, :cond_da

    if-gt v7, v14, :cond_da

    if-ne v7, v14, :cond_21c

    if-le v4, v13, :cond_21c

    :cond_da
    move v6, v4

    :goto_db
    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Lcom/android/apksig/ApkSignerEngine;->outputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    move-result-object v4

    if-eqz v4, :cond_e6

    invoke-static {v5, v9, v4}, Lcom/android/apksig/ApkSigner;->fulfillInspectInputJarEntryRequest(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;)V

    :cond_e6
    move-object/from16 v0, p2

    move-wide/from16 v1, v20

    invoke-static {v5, v9, v0, v1, v2}, Lcom/android/apksig/ApkSigner;->outputInputJarEntryLfhRecordPreservingDataAlignment(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/LocalFileRecord;Lcom/android/apksig/util/DataSink;J)Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;

    move-result-object v4

    iget-wide v0, v4, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;->outputBytes:J

    move-wide/from16 v18, v0

    add-long v18, v18, v20

    iget-wide v0, v4, Lcom/android/apksig/ApkSigner$OutputSizeAndDataOffset;->dataOffsetBytes:J

    move-wide/from16 v28, v0

    add-long v28, v28, v20

    if-eqz v16, :cond_24d

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v4, 0x0

    move v8, v4

    :goto_102
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_220

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/Hints$PatternWithRange;

    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/android/apksig/Hints$PatternWithRange;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_41c

    new-instance v13, Lcom/android/apksig/Hints$ByteRange;

    move-wide/from16 v0, v28

    move-wide/from16 v2, v18

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/apksig/Hints$ByteRange;-><init>(JJ)V

    invoke-virtual {v4, v13}, Lcom/android/apksig/Hints$PatternWithRange;->ClampToAbsoluteByteRange(Lcom/android/apksig/Hints$ByteRange;)Lcom/android/apksig/Hints$ByteRange;

    move-result-object v4

    if-eqz v4, :cond_41c

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    move v4, v8

    :goto_130
    move v8, v4

    goto :goto_102

    :catch_132
    move-exception v4

    const-wide/16 v4, -0x1

    :goto_135
    const/4 v7, 0x0

    goto/16 :goto_15

    :cond_138
    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v4

    goto/16 :goto_1b

    :cond_13e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v4

    goto/16 :goto_3a

    :cond_146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/apksig/ApkSigner;->mMinSdkVersion:Ljava/lang/Integer;

    if-eqz v4, :cond_18b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v6, v4

    :goto_151
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/apksig/ApkSigner;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/apksig/ApkSigner;->mSignerConfigs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_166
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_193

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/ApkSigner$SignerConfig;

    new-instance v11, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;

    invoke-virtual {v4}, Lcom/android/apksig/ApkSigner$SignerConfig;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/apksig/ApkSigner$SignerConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v13

    invoke-virtual {v4}, Lcom/android/apksig/ApkSigner$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v4

    invoke-direct {v11, v12, v13, v4}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;)V

    invoke-virtual {v11}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->build()Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_166

    :cond_18b
    move-object/from16 v0, v24

    invoke-static {v0, v5}, Lcom/android/apksig/ApkSigner;->getMinSdkVersionFromApk(Ljava/util/List;Lcom/android/apksig/util/DataSource;)I

    move-result v4

    move v6, v4

    goto :goto_151

    :cond_193
    new-instance v4, Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    invoke-direct {v4, v9, v6}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;-><init>(Ljava/util/List;I)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/apksig/ApkSigner;->mV1SigningEnabled:Z

    invoke-virtual {v4, v6}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setV1SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/apksig/ApkSigner;->mV2SigningEnabled:Z

    invoke-virtual {v4, v6}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setV2SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/apksig/ApkSigner;->mV3SigningEnabled:Z

    invoke-virtual {v4, v6}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setV3SigningEnabled(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/apksig/ApkSigner;->mDebuggableApkPermitted:Z

    invoke-virtual {v4, v6}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setDebuggableApkPermitted(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/apksig/ApkSigner;->mOtherSignersSignaturesPreserved:Z

    invoke-virtual {v4, v6}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setOtherSignersSignaturesPreserved(Z)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/apksig/ApkSigner;->mSigningCertificateLineage:Lcom/android/apksig/SigningCertificateLineage;

    invoke-virtual {v4, v6}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setSigningCertificateLineage(Lcom/android/apksig/SigningCertificateLineage;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/apksig/ApkSigner;->mCreatedBy:Ljava/lang/String;

    if-eqz v6, :cond_1d1

    invoke-virtual {v4, v6}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setCreatedBy(Ljava/lang/String;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    :cond_1d1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    if-eqz v6, :cond_1f7

    new-instance v9, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;

    invoke-virtual {v6}, Lcom/android/apksig/ApkSigner$SignerConfig;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    invoke-virtual {v10}, Lcom/android/apksig/ApkSigner$SignerConfig;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/apksig/ApkSigner;->mSourceStampSignerConfig:Lcom/android/apksig/ApkSigner$SignerConfig;

    invoke-virtual {v11}, Lcom/android/apksig/ApkSigner$SignerConfig;->getCertificates()Ljava/util/List;

    move-result-object v11

    invoke-direct {v9, v6, v10, v11}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/util/List;)V

    invoke-virtual {v9}, Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig$Builder;->build()Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->setStampSignerConfig(Lcom/android/apksig/DefaultApkSignerEngine$SignerConfig;)Lcom/android/apksig/DefaultApkSignerEngine$Builder;

    :cond_1f7
    invoke-virtual {v4}, Lcom/android/apksig/DefaultApkSignerEngine$Builder;->build()Lcom/android/apksig/DefaultApkSignerEngine;

    move-result-object v4

    move-object v12, v4

    goto/16 :goto_41

    :cond_1fe
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown output policy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v28 .. v28}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions;->getOutputPolicy()Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_219
    const/4 v4, 0x1

    goto/16 :goto_a1

    :cond_21c
    move v6, v13

    move v7, v14

    goto/16 :goto_db

    :cond_220
    if-eqz v8, :cond_417

    new-instance v4, Lcom/android/apksig/Hints$ByteRange;

    move-wide/from16 v0, v20

    move-wide/from16 v2, v28

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/apksig/Hints$ByteRange;-><init>(JJ)V

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v15

    move-object/from16 v8, v16

    :goto_231
    invoke-virtual {v9}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getStartOffsetInArchive()J

    move-result-wide v14

    cmp-long v9, v20, v14

    if-nez v9, :cond_251

    :goto_239
    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v10, v18

    move v13, v6

    move v14, v7

    :goto_244
    add-long v6, v30, v22

    move-object/from16 v16, v8

    move-wide/from16 v18, v10

    move-object v15, v4

    goto/16 :goto_6a

    :cond_24d
    move-object v4, v15

    move-object/from16 v8, v16

    goto :goto_231

    :cond_251
    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->createWithModifiedLocalFileHeaderOffset(J)Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    move-result-object v11

    goto :goto_239

    :cond_258
    move-object v4, v15

    move-wide/from16 v10, v20

    move-object/from16 v8, v16

    goto :goto_244

    :catch_25e
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed ZIP entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/android/apksig/apk/ApkFormatException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v4}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_27a
    invoke-interface {v5}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gez v4, :cond_2b7

    sub-long/2addr v8, v6

    move-object/from16 v10, p2

    invoke-interface/range {v5 .. v10}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    add-long v6, v18, v8

    :goto_28a
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_299
    :goto_299
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2ba

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    if-eqz v4, :cond_299

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_299

    :cond_2b7
    move-wide/from16 v6, v18

    goto :goto_28a

    :cond_2ba
    const/4 v4, -0x1

    if-ne v14, v4, :cond_413

    const/16 v10, 0x3a21

    const/4 v9, 0x0

    :goto_2c0
    invoke-interface {v12}, Lcom/android/apksig/ApkSignerEngine;->isEligibleForSourceStamp()Z

    move-result v4

    if-eqz v4, :cond_2d3

    const-string v4, "stamp-cert-sha256"

    invoke-interface {v12}, Lcom/android/apksig/ApkSignerEngine;->generateSourceStampCertificateDigest()[B

    move-result-object v5

    move-object/from16 v11, p2

    invoke-static/range {v4 .. v11}, Lcom/android/apksig/ApkSigner;->outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J

    move-result-wide v4

    add-long/2addr v6, v4

    :cond_2d3
    invoke-interface {v12}, Lcom/android/apksig/ApkSignerEngine;->outputJarEntries()Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;

    move-result-object v13

    if-eqz v13, :cond_31c

    invoke-interface {v13}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;->getAdditionalJarEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2e1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_319

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;

    invoke-virtual {v5}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest$JarEntry;->getData()[B

    move-result-object v5

    invoke-interface {v12, v4}, Lcom/android/apksig/ApkSignerEngine;->outputJarEntry(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;

    move-result-object v11

    if-eqz v11, :cond_311

    invoke-interface {v11}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->getDataSink()Lcom/android/apksig/util/DataSink;

    move-result-object v16

    const/16 v18, 0x0

    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v5, v1, v2}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    invoke-interface {v11}, Lcom/android/apksig/ApkSignerEngine$InspectJarEntryRequest;->done()V

    :cond_311
    move-object/from16 v11, p2

    invoke-static/range {v4 .. v11}, Lcom/android/apksig/ApkSigner;->outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J

    move-result-wide v4

    add-long/2addr v6, v4

    goto :goto_2e1

    :cond_319
    invoke-interface {v13}, Lcom/android/apksig/ApkSignerEngine$OutputJarSignatureRequest;->done()V

    :cond_31c
    if-eqz v15, :cond_410

    new-instance v4, Lcom/android/apksig/Hints$ByteRange;

    const-wide v18, 0x7fffffffffffffffL

    move-wide/from16 v0, v18

    invoke-direct {v4, v6, v7, v0, v1}, Lcom/android/apksig/Hints$ByteRange;-><init>(JJ)V

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "pinlist.meta"

    invoke-static {v15}, Lcom/android/apksig/Hints;->encodeByteRangeList(Ljava/util/List;)[B

    move-result-object v5

    move-object/from16 v11, p2

    invoke-static/range {v4 .. v11}, Lcom/android/apksig/ApkSigner;->outputDataToOutputApk(Ljava/lang/String;[BJLjava/util/List;IILcom/android/apksig/util/DataSink;)J

    move-result-wide v4

    add-long/2addr v6, v4

    move-wide v10, v6

    :goto_33b
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_342
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_356

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v4}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v6

    move-wide v6, v4

    goto :goto_342

    :cond_356
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v6, v4

    if-gtz v4, :cond_3e8

    long-to-int v4, v6

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_366
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_376

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    invoke-virtual {v4, v5}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->copyTo(Ljava/nio/ByteBuffer;)V

    goto :goto_366

    :cond_376
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v13, Lcom/android/apksig/internal/util/ByteBufferDataSource;

    invoke-direct {v13, v5}, Lcom/android/apksig/internal/util/ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipEndOfCentralDirectory()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {v13}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v6

    move-wide v8, v10

    invoke-static/range {v4 .. v9}, Lcom/android/apksig/internal/zip/EocdRecord;->createWithModifiedCentralDirectoryInfo(Ljava/nio/ByteBuffer;IJJ)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/nio/ByteBuffer;)Lcom/android/apksig/util/DataSource;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-interface {v12, v0, v13, v5}, Lcom/android/apksig/ApkSignerEngine;->outputZipSections2(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;

    move-result-object v5

    if-eqz v5, :cond_3be

    invoke-interface {v5}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->getPaddingSizeBeforeApkSigningBlock()I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    invoke-interface {v5}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->getApkSigningBlock()[B

    move-result-object v7

    const/4 v8, 0x0

    array-length v9, v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v8, v9}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    int-to-long v8, v6

    array-length v6, v7

    int-to-long v6, v6

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-static {v4, v6, v7}, Lcom/android/apksig/internal/zip/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    invoke-interface {v5}, Lcom/android/apksig/ApkSignerEngine$OutputApkSigningBlockRequest2;->done()V

    :cond_3be
    const-wide/16 v6, 0x0

    invoke-interface {v13}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v8

    move-object v5, v13

    move-object/from16 v10, p2

    invoke-interface/range {v5 .. v10}, Lcom/android/apksig/util/DataSource;->feed(JJLcom/android/apksig/util/DataSink;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    invoke-interface {v12}, Lcom/android/apksig/ApkSignerEngine;->outputDone()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/apksig/ApkSigner;->mV4SigningEnabled:Z

    if-eqz v4, :cond_3e7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/apksig/ApkSigner;->mOutputV4File:Ljava/io/File;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/apksig/ApkSigner;->mV4ErrorReportingEnabled:Z

    xor-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p3

    invoke-interface {v12, v0, v4, v5}, Lcom/android/apksig/ApkSignerEngine;->signV4(Lcom/android/apksig/util/DataSource;Ljava/io/File;Z)V

    :cond_3e7
    return-void

    :cond_3e8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Output ZIP Central Directory too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_404
    move-exception v4

    new-instance v5, Lcom/android/apksig/apk/ApkFormatException;

    const-string v6, "Malformed APK: not a ZIP archive"

    invoke-direct {v5, v6, v4}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_40d
    move-exception v7

    goto/16 :goto_135

    :cond_410
    move-wide v10, v6

    goto/16 :goto_33b

    :cond_413
    move v9, v13

    move v10, v14

    goto/16 :goto_2c0

    :cond_417
    move-object v4, v15

    move-object/from16 v8, v16

    goto/16 :goto_231

    :cond_41c
    move v4, v8

    goto/16 :goto_130

    :cond_41f
    move-wide/from16 v22, v6

    move-wide/from16 v20, v18

    goto/16 :goto_b2
.end method


# virtual methods
.method public sign()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/apksig/ApkSigner;->mInputApkDataSource:Lcom/android/apksig/util/DataSource;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_68

    if-eqz v0, :cond_1b

    move-object v1, v2

    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSink:Lcom/android/apksig/util/DataSink;

    if-eqz v3, :cond_2d

    iget-object v4, p0, Lcom/android/apksig/ApkSigner;->mOutputApkDataSource:Lcom/android/apksig/util/DataSource;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_51

    move-object v5, v2

    :goto_d
    :try_start_d
    invoke-direct {p0, v0, v3, v4}, Lcom/android/apksig/ApkSigner;->sign(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/util/DataSink;Lcom/android/apksig/util/DataSource;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_6b

    if-eqz v5, :cond_15

    :try_start_12
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_59

    :cond_15
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_1a
    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/apksig/ApkSigner;->mInputApkFile:Ljava/io/File;

    if-eqz v0, :cond_60

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/android/apksig/ApkSigner;->mInputApkFile:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_68

    :try_start_28
    invoke-static {v1}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSource;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_59

    move-result-object v0

    goto :goto_6

    :cond_2d
    :try_start_2d
    iget-object v3, p0, Lcom/android/apksig/ApkSigner;->mOutputApkFile:Ljava/io/File;

    if-eqz v3, :cond_49

    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/apksig/ApkSigner;->mOutputApkFile:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v5, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_51

    const-wide/16 v2, 0x0

    :try_start_3c
    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-static {v5}, Lcom/android/apksig/util/DataSinks;->asDataSink(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSink;

    move-result-object v2

    invoke-static {v5}, Lcom/android/apksig/util/DataSources;->asDataSource(Ljava/io/RandomAccessFile;)Lcom/android/apksig/util/DataSource;
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_6e

    move-result-object v4

    move-object v3, v2

    goto :goto_d

    :cond_49
    :try_start_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Output APK not specified"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    :goto_52
    move-object v5, v2

    :goto_53
    if-eqz v5, :cond_58

    :try_start_55
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    :cond_58
    throw v0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v0

    :goto_5a
    if-eqz v1, :cond_5f

    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    :cond_5f
    throw v0

    :cond_60
    :try_start_60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input APK not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v0

    move-object v1, v2

    goto :goto_5a

    :catchall_6b
    move-exception v0

    move-object v2, v5

    goto :goto_52

    :catchall_6e
    move-exception v0

    goto :goto_53
.end method
