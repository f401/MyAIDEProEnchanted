.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;
.super Ljava/lang/Object;
.source "DigestAlgorithm.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/modifiedselector/Algorithm;


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final BYTE_MASK:I = 0xff


# instance fields
.field private algorithm:Ljava/lang/String;

.field private messageDigest:Ljava/security/MessageDigest;

.field private provider:Ljava/lang/String;

.field private readBufferSize:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "MD5"

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;

    .line 87
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->readBufferSize:I

    return-void
.end method


# virtual methods
.method public getValue(Ljava/io/File;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_9

    .line 173
    :goto_8
    return-object v0

    .line 159
    :cond_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->initMessageDigest()V

    .line 160
    iget v2, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->readBufferSize:I

    new-array v2, v2, [B

    .line 161
    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 162
    :try_start_15
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;

    invoke-direct {v3, v4, v5}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_27} :catch_67

    .line 165
    :cond_27
    const/4 v4, 0x0

    :try_start_28
    iget v5, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->readBufferSize:I

    invoke-virtual {v3, v2, v4, v5}, Ljava/security/DigestInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_27

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    iget-object v4, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    array-length v5, v4
    :try_end_3d
    .catchall {:try_start_28 .. :try_end_3d} :catchall_62

    :goto_3d
    if-ge v1, v5, :cond_59

    aget-byte v6, v4, v1

    .line 169
    :try_start_41
    const-string v7, "%02x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 171
    :cond_59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_62

    move-result-object v1

    .line 172
    :try_start_5d
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_67

    move-object v0, v1

    .line 171
    goto :goto_8

    .line 162
    :catchall_62
    move-exception v1

    :try_start_63
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_69

    :goto_66
    :try_start_66
    throw v1
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_67} :catch_67

    .line 172
    :catch_67
    move-exception v1

    goto :goto_8

    .line 162
    :catchall_69
    move-exception v2

    goto :goto_66
.end method

.method public initMessageDigest()V
    .registers 3

    .line 116
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_5

    .line 131
    :goto_4
    return-void

    .line 120
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "null"

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 122
    :try_start_19
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_23} :catch_24
    .catch Ljava/security/NoSuchProviderException; {:try_start_19 .. :try_end_23} :catch_3b

    goto :goto_4

    .line 123
    :catch_24
    move-exception v0

    .line 124
    :goto_25
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->messageDigest:Ljava/security/MessageDigest;
    :try_end_33
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2b .. :try_end_33} :catch_34

    goto :goto_4

    .line 129
    :catch_34
    move-exception v0

    .line 130
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 123
    :catch_3b
    move-exception v0

    goto :goto_25
.end method

.method public isValid()Z
    .registers 3

    .line 145
    const-string v0, "SHA"

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "MD5"

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .registers 3

    .line 99
    if-eqz p1, :cond_b

    .line 100
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    .line 101
    return-void

    .line 100
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 183
    const-string v0, "<DigestAlgorithm:algorithm=%s;provider=%s>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->algorithm:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/modifiedselector/DigestAlgorithm;->provider:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
