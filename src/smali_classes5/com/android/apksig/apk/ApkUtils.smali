.class public abstract Lcom/android/apksig/apk/ApkUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;,
        Lcom/android/apksig/apk/ApkUtils$CodenamesLazyInitializer;,
        Lcom/android/apksig/apk/ApkUtils$CodenamesLazyInitializer$ByFirstComparator;,
        Lcom/android/apksig/apk/ApkUtils$ZipSections;
    }
.end annotation


# static fields
.field public static final ANDROID_MANIFEST_ZIP_ENTRY_NAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field private static final DEBUGGABLE_ATTR_ID:I = 0x101000f

.field private static final MIN_SDK_VERSION_ATTR_ID:I = 0x101020c

.field public static final SOURCE_STAMP_CERTIFICATE_HASH_ZIP_ENTRY_NAME:Ljava/lang/String; = "stamp-cert-sha256"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findApkSigningBlock(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;
        }
    .end annotation

    const/16 v9, 0x8

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectorySizeBytes()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipEndOfCentralDirectoryOffset()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_ec

    const-wide/16 v2, 0x20

    cmp-long v2, v0, v2

    if-ltz v2, :cond_d5

    const-wide/16 v2, 0x18

    sub-long v2, v0, v2

    const/16 v4, 0x18

    invoke-interface {p0, v2, v3, v4}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    const-wide v6, 0x20676953204b5041L

    cmp-long v3, v4, v6

    if-nez v3, :cond_cd

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    const-wide v6, 0x3234206b636f6c42L  # 7.465385175170059E-67

    cmp-long v3, v4, v6

    if-nez v3, :cond_cd

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-ltz v2, :cond_b6

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v4, v2

    if-gtz v2, :cond_b6

    const-wide/16 v2, 0x8

    add-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_9f

    invoke-interface {p0, v0, v1, v9}, Lcom/android/apksig/util/DataSource;->getByteBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_80

    new-instance v4, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v2

    invoke-direct {v4, v0, v1, v2}, Lcom/android/apksig/apk/ApkUtils$ApkSigningBlock;-><init>(JLcom/android/apksig/util/DataSource;)V

    return-object v4

    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK Signing Block offset out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APK Signing Block size out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_cd
    new-instance v0, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;

    const-string v1, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZIP Central Directory is not immediately followed by End of Central Directory. CD end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", EoCD start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/apk/ApkSigningBlockNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/zip/ZipFormatException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/zip/ZipUtils;->findZipEndOfCentralDirectoryRecord(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v9}, Lcom/android/apksig/internal/zip/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    cmp-long v0, v2, v7

    if-gtz v0, :cond_56

    invoke-static {v9}, Lcom/android/apksig/internal/zip/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    add-long v0, v2, v4

    cmp-long v6, v0, v7

    if-gtz v6, :cond_37

    new-instance v1, Lcom/android/apksig/apk/ApkUtils$ZipSections;

    invoke-static {v9}, Lcom/android/apksig/internal/zip/ZipUtils;->getZipEocdCentralDirectoryTotalRecordCount(Ljava/nio/ByteBuffer;)I

    move-result v6

    invoke-direct/range {v1 .. v9}, Lcom/android/apksig/apk/ApkUtils$ZipSections;-><init>(JJIJLjava/nio/ByteBuffer;)V

    return-object v1

    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZIP Central Directory overlaps with End of Central Directory. CD end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", EoCD start: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZIP Central Directory start offset out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ". ZIP End of Central Directory offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/zip/ZipFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_75
    new-instance v0, Lcom/android/apksig/zip/ZipFormatException;

    const-string v1, "ZIP End of Central Directory record not found"

    invoke-direct {v0, v1}, Lcom/android/apksig/zip/ZipFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAndroidManifest(Lcom/android/apksig/util/DataSource;)Ljava/nio/ByteBuffer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/apk/ApkUtils;->findZipSections(Lcom/android/apksig/util/DataSource;)Lcom/android/apksig/apk/ApkUtils$ZipSections;
    :try_end_3
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_0 .. :try_end_3} :catch_50

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/apksig/internal/apk/v1/V1SchemeVerifier;->parseZipCentralDirectory(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/apk/ApkUtils$ZipSections;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;

    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v0}, Lcom/android/apksig/internal/zip/CentralDirectoryRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_24
    if-eqz v0, :cond_48

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Lcom/android/apksig/apk/ApkUtils$ZipSections;->getZipCentralDirectoryOffset()J

    move-result-wide v4

    invoke-interface {p0, v2, v3, v4, v5}, Lcom/android/apksig/util/DataSource;->slice(JJ)Lcom/android/apksig/util/DataSource;

    move-result-object v1

    :try_start_30
    invoke-interface {v1}, Lcom/android/apksig/util/DataSource;->size()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/android/apksig/internal/zip/LocalFileRecord;->getUncompressedData(Lcom/android/apksig/util/DataSource;Lcom/android/apksig/internal/zip/CentralDirectoryRecord;J)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_3b
    .catch Lcom/android/apksig/zip/ZipFormatException; {:try_start_30 .. :try_end_3b} :catch_3f

    move-result-object v0

    return-object v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_24

    :catch_3f
    move-exception v0

    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    const-string v2, "Failed to read AndroidManifest.xml"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_48
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Missing AndroidManifest.xml"

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_50
    move-exception v0

    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    const-string v2, "Not a valid ZIP archive"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDebuggableFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    :try_start_4
    new-instance v3, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;

    invoke-direct {v3, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getEventType()I

    move-result v0

    :goto_d
    if-eq v0, v6, :cond_67

    if-ne v0, v7, :cond_84

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getDepth()I

    move-result v0

    if-ne v0, v6, :cond_84

    const-string v0, "application"

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_84

    move v0, v1

    :goto_2e
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeCount()I

    move-result v4

    if-ge v0, v4, :cond_67

    invoke-virtual {v3, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeNameResourceId(I)I

    move-result v4

    const v5, 0x101000f

    if-ne v4, v5, :cond_81

    invoke-virtual {v3, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeValueType(I)I

    move-result v4

    if-eq v4, v2, :cond_4a

    if-eq v4, v6, :cond_4a

    if-eq v4, v7, :cond_79

    const/4 v5, 0x4

    if-ne v4, v5, :cond_68

    :cond_4a
    invoke-virtual {v3, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeStringValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string v3, "TRUE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_66
    move v1, v2

    :cond_67
    return v1

    :cond_68
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Unable to determine whether APK is debuggable: AndroidManifest.xml\'s android:debuggable attribute uses unsupported value type. Only boolean, string and int values are supported."

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_70
    .catch Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException; {:try_start_4 .. :try_end_70} :catch_70

    :catch_70
    move-exception v0

    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    const-string v2, "Unable to determine whether APK is debuggable: malformed binary resource: AndroidManifest.xml"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_79
    :try_start_79
    new-instance v0, Lcom/android/apksig/apk/ApkFormatException;

    const-string v1, "Unable to determine whether APK is debuggable: AndroidManifest.xml\'s android:debuggable attribute references a resource. References are not supported for security reasons. Only constant boolean, string and int values are supported."

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_84
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->next()I
    :try_end_87
    .catch Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException; {:try_start_79 .. :try_end_87} :catch_70

    move-result v0

    goto :goto_d
.end method

.method static getMinSdkVersionForCodename(Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/CodenameMinSdkVersionException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x20

    move v1, v0

    :goto_9
    const/16 v0, 0x41

    if-lt v1, v0, :cond_5c

    const/16 v0, 0x5a

    if-gt v1, v0, :cond_5c

    invoke-static {}, Lcom/android/apksig/apk/ApkUtils$CodenamesLazyInitializer;->access$100()[Lcom/android/apksig/internal/util/Pair;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/apksig/internal/util/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;

    move-result-object v0

    invoke-static {}, Lcom/android/apksig/apk/ApkUtils$CodenamesLazyInitializer;->access$200()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    const/4 v0, 0x1

    if-ltz v3, :cond_3d

    aget-object v0, v2, v3

    invoke-virtual {v0}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_35
    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    goto :goto_9

    :cond_3d
    rsub-int/lit8 v3, v3, -0x1

    if-eqz v3, :cond_35

    add-int/lit8 v0, v3, -0x1

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v2}, Lcom/android/apksig/internal/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    goto :goto_35

    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to determine APK\'s minimum supported Android platform version : Unsupported codename in AndroidManifest.xml\'s minSdkVersion: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/apk/CodenameMinSdkVersionException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/android/apksig/apk/CodenameMinSdkVersionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static getMinSdkVersionFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/MinSdkVersionException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v2, 0x1

    :try_start_2
    new-instance v3, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;

    invoke-direct {v3, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getEventType()I

    move-result v1

    move v0, v2

    :goto_c
    if-eq v1, v6, :cond_71

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4d

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getDepth()I

    move-result v1

    if-ne v1, v6, :cond_4d

    const-string v1, "uses-sdk"

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, 0x0

    :goto_2e
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeCount()I

    move-result v4

    if-ge v1, v4, :cond_6f

    invoke-virtual {v3, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeNameResourceId(I)I

    move-result v4

    const v5, 0x101020c

    if-ne v4, v5, :cond_6c

    invoke-virtual {v3, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeValueType(I)I

    move-result v4

    if-eq v4, v2, :cond_63

    if-ne v4, v6, :cond_52

    invoke-virtual {v3, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeIntValue(I)I

    move-result v1

    :goto_49
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_4d
    invoke-virtual {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->next()I

    move-result v1

    goto :goto_c

    :cond_52
    new-instance v0, Lcom/android/apksig/apk/MinSdkVersionException;

    const-string v1, "Unable to determine APK\'s minimum supported Android: unsupported value type in AndroidManifest.xml\'s minSdkVersion. Only integer values supported."

    invoke-direct {v0, v1}, Lcom/android/apksig/apk/MinSdkVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5a
    .catch Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException; {:try_start_2 .. :try_end_5a} :catch_5a

    :catch_5a
    move-exception v0

    new-instance v1, Lcom/android/apksig/apk/MinSdkVersionException;

    const-string v2, "Unable to determine APK\'s minimum supported Android platform version: malformed binary resource: AndroidManifest.xml"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/apk/MinSdkVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_63
    :try_start_63
    invoke-virtual {v3, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeStringValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/apksig/apk/ApkUtils;->getMinSdkVersionForCodename(Ljava/lang/String;)I
    :try_end_6a
    .catch Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException; {:try_start_63 .. :try_end_6a} :catch_5a

    move-result v1

    goto :goto_49

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_6f
    move v1, v2

    goto :goto_49

    :cond_71
    return v0
.end method

.method public static getPackageNameFromBinaryAndroidManifest(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/apk/ApkFormatException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;

    invoke-direct {v1, p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getEventType()I

    move-result v0

    :goto_9
    const/4 v2, 0x2

    if-eq v0, v2, :cond_56

    const/4 v2, 0x3

    if-ne v0, v2, :cond_51

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getDepth()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_51

    const-string v0, "manifest"

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_56

    const-string v2, "package"

    invoke-virtual {v1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual {v1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttributeStringValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_4d
    return-object v0

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_51
    invoke-virtual {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->next()I
    :try_end_54
    .catch Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException; {:try_start_0 .. :try_end_54} :catch_58

    move-result v0

    goto :goto_9

    :cond_56
    const/4 v0, 0x0

    goto :goto_4d

    :catch_58
    move-exception v0

    new-instance v1, Lcom/android/apksig/apk/ApkFormatException;

    const-string v2, "Unable to determine APK package name: malformed binary resource: AndroidManifest.xml"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/apk/ApkFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V
    .registers 6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2}, Lcom/android/apksig/internal/zip/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    return-void
.end method
