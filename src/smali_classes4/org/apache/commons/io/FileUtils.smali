.class public Lorg/apache/commons/io/FileUtils;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_FILE_ARRAY:[Ljava/io/File;

.field private static final FILE_COPY_BUFFER_SIZE:J = 0x1e00000L

.field public static final ONE_EB:J = 0x1000000000000000L

.field public static final ONE_EB_BI:Ljava/math/BigInteger;

.field public static final ONE_GB:J = 0x40000000L

.field public static final ONE_GB_BI:Ljava/math/BigInteger;

.field public static final ONE_KB:J = 0x400L

.field public static final ONE_KB_BI:Ljava/math/BigInteger;

.field public static final ONE_MB:J = 0x100000L

.field public static final ONE_MB_BI:Ljava/math/BigInteger;

.field public static final ONE_PB:J = 0x4000000000000L

.field public static final ONE_PB_BI:Ljava/math/BigInteger;

.field public static final ONE_TB:J = 0x10000000000L

.field public static final ONE_TB_BI:Ljava/math/BigInteger;

.field public static final ONE_YB:Ljava/math/BigInteger;

.field public static final ONE_ZB:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, 0x400

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_MB_BI:Ljava/math/BigInteger;

    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_MB_BI:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_GB_BI:Ljava/math/BigInteger;

    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_GB_BI:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_TB_BI:Ljava/math/BigInteger;

    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_TB_BI:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_PB_BI:Ljava/math/BigInteger;

    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_PB_BI:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_EB_BI:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/high16 v2, 0x1000000000000000L

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_ZB:Ljava/math/BigInteger;

    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_ZB:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FileUtils;->ONE_YB:Ljava/math/BigInteger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteCountToDisplaySize(J)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteCountToDisplaySize(Ljava/math/BigInteger;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_EB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_EB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " EB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    return-object v0

    :cond_2c
    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_PB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_PB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_58
    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_TB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_84

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_TB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_84
    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_GB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_b1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_GB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    :cond_b1
    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_MB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_de

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_MB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    :cond_de
    sget-object v0, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_10b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/commons/io/FileUtils;->ONE_KB_BI:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    :cond_10b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b
.end method

.method private static checkDirectory(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    return-void
.end method

.method private static checkFileRequirements(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    return-void
.end method

.method public static checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Checksums can\'t be computed on directories"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0, p1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    const/4 v1, 0x0

    :try_start_19
    new-instance v0, Lorg/apache/commons/io/output/NullOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/NullOutputStream;-><init>()V

    invoke-static {v3, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_21} :catch_27
    .catchall {:try_start_19 .. :try_end_21} :catchall_3c

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_26
    return-object p1

    :catch_27
    move-exception v0

    :try_start_28
    throw v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v2

    move-object v1, v0

    :goto_2b
    if-eqz v3, :cond_32

    if-eqz v1, :cond_38

    :try_start_2f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    throw v2

    :catch_33
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_32

    :cond_38
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_32

    :catchall_3c
    move-exception v0

    move-object v2, v0

    goto :goto_2b
.end method

.method public static checksumCRC32(Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->checksum(Ljava/io/File;Ljava/util/zip/Checksum;)Ljava/util/zip/Checksum;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static cleanDirectory(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->verifiedListFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_11

    aget-object v4, v2, v1

    :try_start_b
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_14

    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    if-eqz v0, :cond_16

    throw v0

    :catch_14
    move-exception v0

    goto :goto_e

    :cond_16
    return-void
.end method

.method private static cleanDirectoryOnExit(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->verifiedListFiles(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v3, :cond_11

    aget-object v4, v2, v1

    :try_start_b
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->forceDeleteOnExit(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_14

    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    if-eqz v0, :cond_16

    throw v0

    :catch_14
    move-exception v0

    goto :goto_e

    :cond_16
    return-void
.end method

.method public static contentEquals(Ljava/io/File;Ljava/io/File;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v1, v3, :cond_e

    :cond_c
    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0

    :cond_e
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t compare directories, only files"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_43
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_48} :catch_57
    .catchall {:try_start_43 .. :try_end_48} :catchall_63

    :try_start_48
    invoke-static {v3, v4}, Lorg/apache/commons/io/IOUtils;->contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4b} :catch_66
    .catchall {:try_start_48 .. :try_end_4b} :catchall_83

    move-result v0

    if-eqz v4, :cond_51

    :try_start_4e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_51} :catch_57
    .catchall {:try_start_4e .. :try_end_51} :catchall_63

    :cond_51
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_d

    :catch_57
    move-exception v0

    :try_start_58
    throw v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception v1

    move-object v2, v0

    :goto_5b
    if-eqz v3, :cond_62

    if-eqz v2, :cond_7f

    :try_start_5f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_62} :catch_7a

    :cond_62
    :goto_62
    throw v1

    :catchall_63
    move-exception v0

    move-object v1, v0

    goto :goto_5b

    :catch_66
    move-exception v1

    :try_start_67
    throw v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v0

    :goto_69
    if-eqz v4, :cond_70

    if-eqz v1, :cond_76

    :try_start_6d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_70} :catch_71
    .catchall {:try_start_6d .. :try_end_70} :catchall_63

    :cond_70
    :goto_70
    :try_start_70
    throw v0

    :catch_71
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_70

    :cond_76
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_79} :catch_57
    .catchall {:try_start_70 .. :try_end_79} :catchall_63

    goto :goto_70

    :catch_7a
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_62

    :cond_7f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_62

    :catchall_83
    move-exception v0

    move-object v1, v2

    goto :goto_69
.end method

.method public static contentEqualsIgnoreEOL(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v2, v3, :cond_e

    const/4 v0, 0x0

    :cond_d
    :goto_d
    return v0

    :cond_e
    if-eqz v2, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t compare directories, only files"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    if-nez p2, :cond_63

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object v4, v0

    :goto_43
    if-nez p2, :cond_6f

    :try_start_45
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_53} :catch_7b
    .catchall {:try_start_45 .. :try_end_53} :catchall_87

    move-object v3, v0

    :goto_54
    :try_start_54
    invoke-static {v4, v3}, Lorg/apache/commons/io/IOUtils;->contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_57} :catch_8a
    .catchall {:try_start_54 .. :try_end_57} :catchall_a7

    move-result v0

    if-eqz v3, :cond_5d

    :try_start_5a
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_7b
    .catchall {:try_start_5a .. :try_end_5d} :catchall_87

    :cond_5d
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    goto :goto_d

    :cond_63
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v4, v0

    goto :goto_43

    :cond_6f
    :try_start_6f
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_79} :catch_7b
    .catchall {:try_start_6f .. :try_end_79} :catchall_87

    move-object v3, v0

    goto :goto_54

    :catch_7b
    move-exception v0

    :try_start_7c
    throw v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception v2

    move-object v1, v0

    :goto_7f
    if-eqz v4, :cond_86

    if-eqz v1, :cond_a3

    :try_start_83
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_9e

    :cond_86
    :goto_86
    throw v2

    :catchall_87
    move-exception v0

    move-object v2, v0

    goto :goto_7f

    :catch_8a
    move-exception v0

    :try_start_8b
    throw v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception v2

    :goto_8d
    if-eqz v3, :cond_94

    if-eqz v0, :cond_9a

    :try_start_91
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_95
    .catchall {:try_start_91 .. :try_end_94} :catchall_87

    :cond_94
    :goto_94
    :try_start_94
    throw v2

    :catch_95
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_94

    :cond_9a
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_9d} :catch_7b
    .catchall {:try_start_94 .. :try_end_9d} :catchall_87

    goto :goto_94

    :catch_9e
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_86

    :cond_a3
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    goto :goto_86

    :catchall_a7
    move-exception v2

    move-object v0, v1

    goto :goto_8d
.end method

.method public static convertFileCollectionToFileArray(Ljava/util/Collection;)[Ljava/io/File;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;)[",
            "Ljava/io/File;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V

    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->checkFileRequirements(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' are the same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    if-nez p2, :cond_99

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    move-object v2, v1

    :goto_75
    if-eqz v2, :cond_9f

    array-length v1, v2

    if-lez v1, :cond_9f

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_82
    if-ge v1, v3, :cond_9f

    new-instance v4, Ljava/io/File;

    aget-object v5, v2, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    :cond_99
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    move-object v2, v1

    goto :goto_75

    :cond_9f
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/FileUtils;->doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;)V

    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;Z)V

    return-void
.end method

.method public static copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    if-nez p1, :cond_3f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/OutputStream;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_6
    invoke-static {v2, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_10
    .catchall {:try_start_6 .. :try_end_9} :catchall_12

    move-result-wide v0

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_f
    return-wide v0

    :catch_10
    move-exception v1

    :try_start_11
    throw v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    if-eqz v2, :cond_1a

    if-eqz v1, :cond_20

    :try_start_17
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    throw v0

    :catch_1b
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_20
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_1a
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->checkFileRequirements(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' and destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' are the same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_90

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_90

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' directory cannot be created"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_90
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_bb

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bb
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->doCopyFile(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public static copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public static copyFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Z)V

    return-void
.end method

.method public static copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_a
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_9
    return-void

    :catch_a
    move-exception v1

    :try_start_b
    throw v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    if-eqz p0, :cond_14

    if-eqz v1, :cond_1a

    :try_start_11
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    throw v0

    :catch_15
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_14

    :cond_1a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_14
.end method

.method public static copyToDirectory(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyDirectoryToDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_13

    :cond_1e
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyToDirectory(Ljava/lang/Iterable;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Sources must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->copyFileToDirectory(Ljava/io/File;Ljava/io/File;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_13
    .catchall {:try_start_1 .. :try_end_4} :catchall_1f

    move-result-object v3

    :try_start_5
    invoke-static {p0, v3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_22
    .catchall {:try_start_5 .. :try_end_8} :catchall_3f

    if-eqz v3, :cond_d

    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_13
    .catchall {:try_start_a .. :try_end_d} :catchall_1f

    :cond_d
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_12
    return-void

    :catch_13
    move-exception v0

    :try_start_14
    throw v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v1

    move-object v2, v0

    :goto_17
    if-eqz p0, :cond_1e

    if-eqz v2, :cond_3b

    :try_start_1b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_36

    :cond_1e
    :goto_1e
    throw v1

    :catchall_1f
    move-exception v0

    move-object v1, v0

    goto :goto_17

    :catch_22
    move-exception v1

    :try_start_23
    throw v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v0

    :goto_25
    if-eqz v3, :cond_2c

    if-eqz v1, :cond_32

    :try_start_29
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2d
    .catchall {:try_start_29 .. :try_end_2c} :catchall_1f

    :cond_2c
    :goto_2c
    :try_start_2c
    throw v0

    :catch_2d
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2c

    :cond_32
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_35} :catch_13
    .catchall {:try_start_2c .. :try_end_35} :catchall_1f

    goto :goto_2c

    :catch_36
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_3b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_1e

    :catchall_3f
    move-exception v0

    move-object v1, v2

    goto :goto_25
.end method

.method public static copyURLToFile(Ljava/net/URL;Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method public static copyURLToFile(Ljava/net/URL;Ljava/io/File;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->copyInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method static decodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v6, 0x25

    if-eqz p0, :cond_99

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_99

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v0, 0x0

    :cond_18
    :goto_18
    if-ge v0, v1, :cond_95

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_70

    :cond_20
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x3

    :try_start_24
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    if-ge v0, v1, :cond_3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_39} :catch_56
    .catchall {:try_start_24 .. :try_end_39} :catchall_7a

    move-result v4

    if-eq v4, v6, :cond_20

    :cond_3c
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lez v4, :cond_18

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_18

    :catch_56
    move-exception v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-lez v4, :cond_70

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_70
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :catchall_7a
    move-exception v0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-lez v1, :cond_94

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_94
    throw v0

    :cond_95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_99
    return-object p0
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static deleteDirectoryOnExit(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->cleanDirectoryOnExit(Ljava/io/File;)V

    goto :goto_6
.end method

.method public static deleteQuietly(Ljava/io/File;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->cleanDirectory(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_14

    :cond_d
    :goto_d
    :try_start_d
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12

    move-result v0

    goto :goto_3

    :catch_12
    move-exception v1

    goto :goto_3

    :catch_14
    move-exception v1

    goto :goto_d
.end method

.method public static directoryContains(Ljava/io/File;Ljava/io/File;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Directory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    if-nez p1, :cond_2d

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/io/FilenameUtils;->directoryContains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2c
.end method

.method private static doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_22

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    :goto_7
    if-nez v1, :cond_28

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to list contents of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    move-object v1, v0

    goto :goto_7

    :cond_28
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7e

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7e

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' directory cannot be created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7e
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_a3

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be written to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a3
    array-length v2, v1

    const/4 v0, 0x0

    :goto_a5
    if-ge v0, v2, :cond_ce

    aget-object v3, v1, v0

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p4, :cond_be

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c7

    :cond_be
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_ca

    invoke-static {v3, v4, p2, p3, p4}, Lorg/apache/commons/io/FileUtils;->doCopyDirectory(Ljava/io/File;Ljava/io/File;Ljava/io/FileFilter;ZLjava/util/List;)V

    :cond_c7
    :goto_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    :cond_ca
    invoke-static {v3, v4, p3}, Lorg/apache/commons/io/FileUtils;->doCopyFile(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_c7

    :cond_ce
    if-eqz p3, :cond_d7

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :cond_d7
    return-void
.end method

.method private static doCopyFile(Ljava/io/File;Ljava/io/File;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_30
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_ce
    .catchall {:try_start_30 .. :try_end_33} :catchall_100

    move-result-object v1

    :try_start_34
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_39} :catch_c2
    .catchall {:try_start_34 .. :try_end_39} :catchall_f3

    :try_start_39
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_b6
    .catchall {:try_start_39 .. :try_end_3c} :catchall_da

    move-result-object v0

    :try_start_3d
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v2, 0x0

    :goto_43
    cmp-long v4, v2, v8

    if-gez v4, :cond_5d

    sub-long v4, v8, v2

    const-wide/32 v10, 0x1e00000

    cmp-long v10, v4, v10

    if-lez v10, :cond_53

    const-wide/32 v4, 0x1e00000

    :cond_53
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_56} :catch_de
    .catchall {:try_start_3d .. :try_end_56} :catchall_120

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_b4

    :cond_5d
    if-eqz v0, :cond_62

    :try_start_5f
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_62} :catch_b6
    .catchall {:try_start_5f .. :try_end_62} :catchall_da

    :cond_62
    if-eqz v7, :cond_67

    :try_start_64
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_67} :catch_c2
    .catchall {:try_start_64 .. :try_end_67} :catchall_f3

    :cond_67
    if-eqz v1, :cond_6c

    :try_start_69
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_ce
    .catchall {:try_start_69 .. :try_end_6c} :catchall_100

    :cond_6c
    if-eqz v6, :cond_71

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_71
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_116

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to copy full contents from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' Expected length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b4
    add-long/2addr v2, v4

    goto :goto_43

    :catch_b6
    move-exception v0

    :try_start_b7
    throw v0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception v2

    move-object v3, v0

    :goto_ba
    if-eqz v7, :cond_c1

    if-eqz v3, :cond_fc

    :try_start_be
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_c1} :catch_f7
    .catchall {:try_start_be .. :try_end_c1} :catchall_f3

    :cond_c1
    :goto_c1
    :try_start_c1
    throw v2
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c2} :catch_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_f3

    :catch_c2
    move-exception v0

    :try_start_c3
    throw v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c4

    :catchall_c4
    move-exception v3

    move-object v2, v0

    :goto_c6
    if-eqz v1, :cond_cd

    if-eqz v2, :cond_109

    :try_start_ca
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_cd
    .catch Ljava/lang/Throwable; {:try_start_ca .. :try_end_cd} :catch_104
    .catchall {:try_start_ca .. :try_end_cd} :catchall_100

    :cond_cd
    :goto_cd
    :try_start_cd
    throw v3
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_ce} :catch_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_100

    :catch_ce
    move-exception v0

    :try_start_cf
    throw v0
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_d0

    :catchall_d0
    move-exception v1

    move-object v2, v0

    :goto_d2
    if-eqz v6, :cond_d9

    if-eqz v2, :cond_112

    :try_start_d6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_d9} :catch_10d

    :cond_d9
    :goto_d9
    throw v1

    :catchall_da
    move-exception v0

    const/4 v3, 0x0

    move-object v2, v0

    goto :goto_ba

    :catch_de
    move-exception v2

    :try_start_df
    throw v2
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_e0

    :catchall_e0
    move-exception v4

    move-object v3, v2

    :goto_e2
    if-eqz v0, :cond_e9

    if-eqz v3, :cond_ef

    :try_start_e6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_e6 .. :try_end_e9} :catch_ea
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_da

    :cond_e9
    :goto_e9
    :try_start_e9
    throw v4

    :catch_ea
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e9

    :cond_ef
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_e9 .. :try_end_f2} :catch_b6
    .catchall {:try_start_e9 .. :try_end_f2} :catchall_da

    goto :goto_e9

    :catchall_f3
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v0

    goto :goto_c6

    :catch_f7
    move-exception v0

    :try_start_f8
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c1

    :cond_fc
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_ff} :catch_c2
    .catchall {:try_start_f8 .. :try_end_ff} :catchall_f3

    goto :goto_c1

    :catchall_100
    move-exception v0

    const/4 v2, 0x0

    move-object v1, v0

    goto :goto_d2

    :catch_104
    move-exception v0

    :try_start_105
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_cd

    :cond_109
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_105 .. :try_end_10c} :catch_ce
    .catchall {:try_start_105 .. :try_end_10c} :catchall_100

    goto :goto_cd

    :catch_10d
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d9

    :cond_112
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto :goto_d9

    :cond_116
    if-eqz p2, :cond_11f

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    :cond_11f
    return-void

    :catchall_120
    move-exception v2

    const/4 v3, 0x0

    move-object v4, v2

    goto :goto_e2
.end method

.method public static forceDelete(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    :cond_9
    return-void

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_9

    if-nez v0, :cond_2f

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forceDeleteOnExit(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteDirectoryOnExit(Ljava/io/File;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    goto :goto_9
.end method

.method public static forceMkdir(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists and is not a directory. Unable to create directory."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_50

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    return-void
.end method

.method public static forceMkdirParent(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V

    goto :goto_6
.end method

.method public static varargs getFile(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .registers 6

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "directory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "names must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    array-length v2, p1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v2, :cond_23

    new-instance v1, Ljava/io/File;

    aget-object v3, p1, v0

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move-object p0, v1

    goto :goto_16

    :cond_23
    return-object p0
.end method

.method public static varargs getFile([Ljava/lang/String;)Ljava/io/File;
    .registers 6

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "names must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x0

    array-length v3, p0

    const/4 v2, 0x0

    move-object v1, v0

    :goto_e
    if-ge v2, v3, :cond_23

    aget-object v4, p0, v2

    if-nez v1, :cond_1d

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_19
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_e

    :cond_1d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_19

    :cond_23
    return-object v1
.end method

.method public static getTempDirectory()Ljava/io/File;
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTempDirectoryPath()Ljava/lang/String;
    .registers 1

    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserDirectory()Ljava/io/File;
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/apache/commons/io/FileUtils;->getUserDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserDirectoryPath()Ljava/lang/String;
    .registers 1

    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static innerListFiles(Ljava/util/Collection;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_21

    array-length v2, v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_21

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-eqz p3, :cond_17

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-static {p0, v3, p2, p3}, Lorg/apache/commons/io/FileUtils;->innerListFiles(Ljava/util/Collection;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1d
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_21
    return-void
.end method

.method public static isFileNewer(Ljava/io/File;J)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-lez v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/io/File;)Z
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified reference file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The reference file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isFileNewer(Ljava/io/File;Ljava/util/Date;)Z
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isFileOlder(Ljava/io/File;J)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/io/File;)Z
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified reference file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The reference file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isFileOlder(Ljava/io/File;Ljava/util/Date;)Z
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No specified date"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FileUtils;->isFileOlder(Ljava/io/File;J)Z

    move-result v0

    return v0
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public static iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static iterateFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static iterateFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static lineIterator(Ljava/io/File;)Lorg/apache/commons/io/LineIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;

    move-result-object v0

    return-object v0
.end method

.method public static lineIterator(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/apache/commons/io/IOUtils;->lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    :catch_a
    move-exception v0

    :goto_b
    if-eqz v1, :cond_10

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    :cond_10
    :goto_10
    throw v0

    :catch_11
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_16
    move-exception v0

    goto :goto_b
.end method

.method public static listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {v2, p0, v0, v4}, Lorg/apache/commons/io/FileUtils;->innerListFiles(Ljava/util/Collection;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V

    return-object v2
.end method

.method public static listFiles(Ljava/io/File;[Ljava/lang/String;Z)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_e

    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-object v1, v0

    :goto_5
    if-eqz p2, :cond_19

    sget-object v0, Lorg/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    :goto_9
    invoke-static {p0, v1, v0}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    :cond_e
    new-instance v0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->toSuffixes([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/SuffixFileFilter;-><init>([Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_5

    :cond_19
    sget-object v0, Lorg/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    goto :goto_9
.end method

.method public static listFilesAndDirs(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            "Lorg/apache/commons/io/filefilter/IOFileFilter;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1a
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-static {v3}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->or([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    invoke-static {v2, p0, v0, v5}, Lorg/apache/commons/io/FileUtils;->innerListFiles(Ljava/util/Collection;Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Z)V

    return-object v2
.end method

.method public static moveDirectory(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_5e

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_83

    new-instance v0, Lorg/apache/commons/io/FileExistsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_102

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cd

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to a subdirectory of itself: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cd
    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_102

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete original directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' after copy to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_102
    return-void
.end method

.method public static moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination directory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz p2, :cond_1f

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4e

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist [createDestDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_73

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->moveDirectory(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5e

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_83

    new-instance v0, Lorg/apache/commons/io/FileExistsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/FileExistsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a8

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e3

    invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_e3

    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete original file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' after copy to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e3
    return-void
.end method

.method public static moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination directory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz p2, :cond_1f

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_1f
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4e

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist [createDestDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_73

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public static moveToDirectory(Ljava/io/File;Ljava/io/File;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Destination must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Source \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->moveDirectoryToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    :goto_42
    return-void

    :cond_43
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/FileUtils;->moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_42
.end method

.method public static openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_6f

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exists but is a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_81

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' cannot be written to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_81

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_81

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' could not be created"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_81
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    return-object v0
.end method

.method public static readFileToByteArray(Ljava/io/File;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_19

    invoke-static {v3, v0, v1}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;J)[B
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_12} :catch_1e
    .catchall {:try_start_5 .. :try_end_12} :catchall_33

    move-result-object v0

    :goto_13
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_18
    return-object v0

    :cond_19
    :try_start_19
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_1c} :catch_1e
    .catchall {:try_start_19 .. :try_end_1c} :catchall_33

    move-result-object v0

    goto :goto_13

    :catch_1e
    move-exception v0

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v1

    move-object v2, v0

    :goto_22
    if-eqz v3, :cond_29

    if-eqz v2, :cond_2f

    :try_start_26
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2a

    :cond_29
    :goto_29
    throw v1

    :catch_2a
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_29

    :cond_2f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_29

    :catchall_33
    move-exception v0

    move-object v1, v0

    goto :goto_22
.end method

.method public static readFileToString(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    const/4 v1, 0x0

    :try_start_5
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_13
    .catchall {:try_start_5 .. :try_end_c} :catchall_28

    move-result-object v0

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_12
    return-object v0

    :catch_13
    move-exception v0

    :try_start_14
    throw v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    move-object v1, v0

    :goto_17
    if-eqz v3, :cond_1e

    if-eqz v1, :cond_24

    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    throw v2

    :catch_1f
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_24
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_1e

    :catchall_28
    move-exception v0

    move-object v2, v0

    goto :goto_17
.end method

.method public static readLines(Ljava/io/File;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FileUtils;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    const/4 v1, 0x0

    :try_start_5
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_13
    .catchall {:try_start_5 .. :try_end_c} :catchall_28

    move-result-object v0

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_12
    return-object v0

    :catch_13
    move-exception v0

    :try_start_14
    throw v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v2

    move-object v1, v0

    :goto_17
    if-eqz v3, :cond_1e

    if-eqz v1, :cond_24

    :try_start_1b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    throw v2

    :catch_1f
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1e

    :cond_24
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_1e

    :catchall_28
    move-exception v0

    move-object v2, v0

    goto :goto_17
.end method

.method private static setUpEffectiveDirFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .registers 4

    if-nez p0, :cond_5

    sget-object v0, Lorg/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    goto :goto_4
.end method

.method private static setUpEffectiveFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/io/filefilter/IOFileFilter;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-static {v2}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->notFileFilter(Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/apache/commons/io/filefilter/FileFilterUtils;->and([Lorg/apache/commons/io/filefilter/IOFileFilter;)Lorg/apache/commons/io/filefilter/IOFileFilter;

    move-result-object v0

    return-object v0
.end method

.method public static sizeOf(Ljava/io/File;)J
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory0(Ljava/io/File;)J

    move-result-wide v0

    :goto_29
    return-wide v0

    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_29
.end method

.method private static sizeOf0(Ljava/io/File;)J
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory0(Ljava/io/File;)J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_a
.end method

.method public static sizeOfAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_29
    return-object v0

    :cond_2a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_29
.end method

.method private static sizeOfBig0(Ljava/io/File;)Ljava/math/BigInteger;
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_a
.end method

.method public static sizeOfDirectory(Ljava/io/File;)J
    .registers 3

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->checkDirectory(Ljava/io/File;)V

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectory0(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static sizeOfDirectory0(Ljava/io/File;)J
    .registers 11

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    array-length v6, v5

    const/4 v4, 0x0

    move-wide v2, v0

    :goto_c
    if-ge v4, v6, :cond_24

    aget-object v7, v5, v4

    :try_start_10
    invoke-static {v7}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-static {v7}, Lorg/apache/commons/io/FileUtils;->sizeOf0(Ljava/io/File;)J
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_19} :catch_22

    move-result-wide v8

    add-long/2addr v2, v8

    cmp-long v7, v2, v0

    if-ltz v7, :cond_24

    :cond_1f
    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :catch_22
    move-exception v7

    goto :goto_1f

    :cond_24
    move-wide v0, v2

    goto :goto_8
.end method

.method public static sizeOfDirectoryAsBigInteger(Ljava/io/File;)Ljava/math/BigInteger;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->checkDirectory(Ljava/io/File;)V

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static sizeOfDirectoryBig0(Ljava/io/File;)Ljava/math/BigInteger;
    .registers 7

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_9

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :cond_8
    return-object v0

    :cond_9
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v3, :cond_8

    aget-object v4, v2, v1

    :try_start_11
    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->isSymlink(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->sizeOfBig0(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1e} :catch_22

    move-result-object v0

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catch_22
    move-exception v4

    goto :goto_1f
.end method

.method public static toFile(Ljava/net/URL;)Ljava/io/File;
    .registers 5

    if-eqz p0, :cond_e

    const-string v0, "file"

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static toFiles([Ljava/net/URL;)[Ljava/io/File;
    .registers 6

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_8

    :cond_5
    sget-object v0, Lorg/apache/commons/io/FileUtils;->EMPTY_FILE_ARRAY:[Ljava/io/File;

    :cond_7
    return-object v0

    :cond_8
    array-length v0, p0

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_7

    aget-object v2, p0, v1

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL could not be converted to a File: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->toFile(Ljava/net/URL;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private static toSuffixes([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_21
    return-object v1
.end method

.method public static toURLs([Ljava/io/File;)[Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p0

    new-array v1, v0, [Ljava/net/URL;

    const/4 v0, 0x0

    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_16

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    return-object v1
.end method

.method public static touch(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    move-result v0

    if-nez v0, :cond_30

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set the last modification time for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    return-void
.end method

.method private static validateListFilesParameters(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;)V
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter \'directory\' is not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    if-nez p1, :cond_29

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter \'fileFilter\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    return-void
.end method

.method private static verifiedListFiles(Ljava/io/File;)[Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_5d

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to list contents of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    return-object v0
.end method

.method public static waitFor(Ljava/io/File;I)Z
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p1

    move v2, v0

    :goto_8
    :try_start_8
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_36

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_41

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v6

    add-long/2addr v10, v4

    sub-long v8, v10, v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-gez v3, :cond_28

    if-eqz v2, :cond_27

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_27
    :goto_27
    return v0

    :cond_28
    const-wide/16 v10, 0x64

    :try_start_2a
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_31} :catch_32
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_35
    .catchall {:try_start_2a .. :try_end_31} :catchall_41

    goto :goto_8

    :catch_32
    move-exception v2

    move v2, v1

    goto :goto_8

    :catch_35
    move-exception v0

    :cond_36
    if-eqz v2, :cond_4c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    move v0, v1

    goto :goto_27

    :catchall_41
    move-exception v0

    if-eqz v2, :cond_4b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_4b
    throw v0

    :cond_4c
    move v0, v1

    goto :goto_27
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    return-void
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-static {p0, v0, p2, p3}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static write(Ljava/io/File;Ljava/lang/CharSequence;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->write(Ljava/io/File;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static writeByteArrayToFile(Ljava/io/File;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[BZ)V

    return-void
.end method

.method public static writeByteArrayToFile(Ljava/io/File;[BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[BIIZ)V

    return-void
.end method

.method public static writeByteArrayToFile(Ljava/io/File;[BIIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p4}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_e
    .catchall {:try_start_5 .. :try_end_8} :catchall_10

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_d
    return-void

    :catch_e
    move-exception v1

    :try_start_f
    throw v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    if-eqz v2, :cond_18

    if-eqz v1, :cond_1e

    :try_start_15
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    throw v0

    :catch_19
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_18

    :cond_1e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_18
.end method

.method public static writeByteArrayToFile(Ljava/io/File;[BZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/commons/io/FileUtils;->writeByteArrayToFile(Ljava/io/File;[BIIZ)V

    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-static {p0, p4}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    :try_start_a
    invoke-static {p2, p3, v2, p1}, Lorg/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_13
    .catchall {:try_start_a .. :try_end_d} :catchall_15

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_12
    return-void

    :catch_13
    move-exception v1

    :try_start_14
    throw v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v0

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_23

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    throw v0

    :catch_1e
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_23
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_1d
.end method

.method public static writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/Collection;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/Collection;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method public static writeLines(Ljava/io/File;Ljava/util/Collection;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection",
            "<*>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->writeLines(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p3}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;Z)Ljava/io/FileOutputStream;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_5
    invoke-static {p1, v2, p2}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_e
    .catchall {:try_start_5 .. :try_end_8} :catchall_10

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_d
    return-void

    :catch_e
    move-exception v1

    :try_start_f
    throw v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    if-eqz v2, :cond_18

    if-eqz v1, :cond_1e

    :try_start_15
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    throw v0

    :catch_19
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_18

    :cond_1e
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_18
.end method

.method public static writeStringToFile(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method
