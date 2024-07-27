.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;
.super Ljava/lang/Object;
.source "ChecksumAlgorithm.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private checksum:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "CRC"

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    return-void
.end method


# virtual methods
.method public getValue(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 121
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->initChecksum()V

    .line 123
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->reset()V

    .line 125
    :try_start_0
    new-instance v1, Ljava/util/zip/CheckedInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    invoke-direct {v1, v0, v2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 130
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 131
    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    :goto_0
    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 131
    :catch_0
    move-exception v0

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public initChecksum()V
    .registers 3

    .line 88
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "CRC"

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    goto :goto_0

    .line 93
    :cond_1
    const-string v0, "ADLER"

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->checksum:Ljava/util/zip/Checksum;

    goto :goto_0

    .line 96
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v1}, Ljava/security/NoSuchAlgorithmException;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isValid()Z
    .registers 3

    .line 110
    const-string v0, "CRC"

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ADLER"

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .registers 3

    .line 81
    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    .line 83
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 144
    const-string v0, "<ChecksumAlgorithm:algorithm=%s>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/ChecksumAlgorithm;->algorithm:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
