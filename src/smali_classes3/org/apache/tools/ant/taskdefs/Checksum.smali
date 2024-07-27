.class public Lorg/apache/tools/ant/taskdefs/Checksum;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "Checksum.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;,
        Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final BYTE_MASK:I = 0xff

.field private static final NIBBLE:I = 0x4

.field private static final WORD:I = 0x10


# instance fields
.field private algorithm:Ljava/lang/String;

.field private allDigests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "[B>;"
        }
    .end annotation
.end field

.field private file:Ljava/io/File;

.field private fileext:Ljava/lang/String;

.field private forceOverwrite:Z

.field private format:Ljava/text/MessageFormat;

.field private includeFileMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isCondition:Z

.field private messageDigest:Ljava/security/MessageDigest;

.field private property:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private readBufferSize:I

.field private relativeFilePaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

.field private todir:Ljava/io/File;

.field private totalproperty:Ljava/lang/String;

.field private verifyProperty:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$nmdcjOks-KmmPOjXf_A76_ewm14(Lorg/apache/tools/ant/taskdefs/Checksum;Ljava/io/File;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum;->getRelativeFilePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 82
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    .line 94
    const-string v0, "MD5"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->provider:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->allDigests:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->relativeFilePaths:Ljava/util/Map;

    .line 137
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    .line 141
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    .line 153
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->readBufferSize:I

    .line 158
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->getDefault()Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->getFormat()Ljava/text/MessageFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->format:Ljava/text/MessageFormat;

    return-void
.end method

.method private addToIncludeFileMap(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 424
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->property:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 425
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum;->getChecksumFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 426
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->forceOverwrite:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    if-nez v1, :cond_0

    .line 427
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 428
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_1
    :goto_0
    return-void

    .line 430
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " omitted as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is up to date."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Checksum;->log(Ljava/lang/String;I)V

    .line 432
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 434
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Checksum;->readChecksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Checksum;->decodeHex([C)[B

    move-result-object v0

    .line 436
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->allDigests:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 443
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to generate checksum for."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Checksum;->log(Ljava/lang/String;)V

    .line 447
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method private createDigestString([B)Ljava/lang/String;
    .registers 9

    const/4 v1, 0x0

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p1, v0

    .line 579
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeHex([C)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v1, 0x0

    .line 597
    array-length v3, p0

    .line 599
    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_0

    .line 603
    shr-int/lit8 v0, v3, 0x1

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    .line 606
    :goto_0
    if-ge v0, v3, :cond_1

    .line 607
    add-int/lit8 v5, v0, 0x1

    aget-char v0, p0, v0

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 608
    aget-char v1, p0, v5

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 609
    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    .line 606
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v5, 0x1

    move v2, v1

    goto :goto_0

    .line 600
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "odd number of characters."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_1
    return-object v4
.end method

.method private generateChecksums()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 471
    .line 474
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->readBufferSize:I

    new-array v7, v0, [B

    .line 476
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 477
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 478
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 479
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    if-nez v6, :cond_0

    .line 480
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calculating "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " checksum for "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x3

    invoke-virtual {p0, v6, v9}, Lorg/apache/tools/ant/taskdefs/Checksum;->log(Ljava/lang/String;I)V

    .line 482
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/nio/file/OpenOption;

    invoke-static {v6, v9}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 483
    :try_start_1
    new-instance v9, Ljava/security/DigestInputStream;

    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-direct {v9, v6, v10}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 485
    :cond_1
    const/4 v10, 0x0

    iget v11, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->readBufferSize:I

    invoke-virtual {v9, v7, v10, v11}, Ljava/security/DigestInputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 488
    invoke-virtual {v9}, Ljava/security/DigestInputStream;->close()V

    .line 489
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 491
    :try_start_2
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 492
    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 493
    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->allDigests:Ljava/util/Map;

    invoke-interface {v9, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    :cond_2
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/taskdefs/Checksum;->createDigestString([B)Ljava/lang/String;

    move-result-object v9

    .line 497
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 498
    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 499
    check-cast v0, Ljava/lang/String;

    .line 500
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    if-eqz v1, :cond_4

    .line 501
    if-eqz v4, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->property:Ljava/lang/String;

    .line 502
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    move v4, v0

    .line 543
    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 502
    goto :goto_1

    .line 504
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0, v9}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    goto :goto_1

    .line 506
    :cond_5
    instance-of v6, v0, Ljava/io/File;

    if-eqz v6, :cond_c

    .line 507
    iget-boolean v6, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    if-eqz v6, :cond_8

    .line 508
    check-cast v0, Ljava/io/File;

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_7

    .line 511
    :try_start_3
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Checksum;->readChecksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 513
    if-eqz v4, :cond_6

    .line 514
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_1

    .line 515
    :catch_0
    move-exception v0

    move v0, v3

    .line 517
    goto :goto_1

    :cond_7
    move v0, v3

    .line 520
    goto :goto_1

    .line 523
    :cond_8
    :try_start_4
    check-cast v0, Ljava/io/File;

    .line 524
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/nio/file/OpenOption;

    invoke-static {v6, v10}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 525
    :try_start_5
    iget-object v10, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->format:Ljava/text/MessageFormat;

    .line 527
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 530
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 529
    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v12

    .line 534
    invoke-virtual {v12}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v12

    .line 533
    invoke-static {v12, v1}, Lorg/apache/tools/ant/util/FileUtils;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    .line 536
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 525
    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const/4 v9, 0x1

    aput-object v11, v13, v9

    const/4 v9, 0x2

    aput-object v0, v13, v9

    const/4 v0, 0x3

    aput-object v12, v13, v0

    const/4 v0, 0x4

    aput-object v1, v13, v0

    invoke-virtual {v10, v13}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 525
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 538
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 539
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v0, v4

    .line 540
    goto/16 :goto_1

    .line 544
    :cond_9
    :try_start_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 547
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->allDigests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    .line 550
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Checksum;)V

    .line 551
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticStaticInterfaceCall1;->m(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 550
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Checksum$$ExternalSyntheticStaticInterfaceCall0;->m(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 554
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 555
    array-length v2, v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    if-ge v3, v2, :cond_a

    aget-object v6, v0, v3

    .line 557
    :try_start_7
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->allDigests:Ljava/util/Map;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 558
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v7, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 561
    invoke-direct {p0, v6}, Lorg/apache/tools/ant/taskdefs/Checksum;->getRelativeFilePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 562
    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 555
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 564
    :cond_a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Checksum;->createDigestString([B)Ljava/lang/String;

    move-result-object v0

    .line 565
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 570
    :cond_b
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 571
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 572
    return v4

    .line 567
    :catch_1
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    .line 568
    :goto_3
    :try_start_8
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 570
    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 571
    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 572
    throw v0

    .line 567
    :catch_2
    move-exception v0

    move-object v1, v5

    move-object v2, v6

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v6

    move-object v2, v5

    goto :goto_3

    .line 570
    :catchall_1
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v5

    move-object v2, v6

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v6

    move-object v2, v5

    goto :goto_4

    :cond_c
    move v0, v4

    goto/16 :goto_1
.end method

.method private getChecksumFile(Ljava/io/File;)Ljava/io/File;
    .registers 5

    .line 453
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->todir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum;->getRelativeFilePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 456
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->todir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 464
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 462
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private getRelativeFilePath(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 637
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->relativeFilePaths:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 638
    if-eqz v0, :cond_0

    .line 644
    return-object v0

    .line 640
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Internal error: relativeFilePaths could not match file %s\nplease file a bug report on this"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private readChecksum(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    .line 621
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 623
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->format:Ljava/text/MessageFormat;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_0

    array-length v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    .line 627
    const/4 v2, 0x0

    :try_start_2
    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 628
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    .line 627
    return-object v0

    .line 625
    :cond_0
    :try_start_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "failed to find a checksum"

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 621
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_0
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_1

    .line 628
    :catch_0
    move-exception v0

    .line 629
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t read checksum file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 621
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 628
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private validateAndExecute()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x1

    .line 324
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;->isFilesystemOnly()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 333
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_10

    .line 336
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-nez v0, :cond_11

    .line 339
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->property:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 342
    :cond_4
    if-eqz v0, :cond_7

    .line 343
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->forceOverwrite:Z

    if-nez v0, :cond_14

    .line 347
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    if-eqz v1, :cond_5

    .line 349
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 351
    :cond_5
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    if-eqz v1, :cond_6

    .line 352
    add-int/lit8 v0, v0, 0x1

    .line 354
    :cond_6
    if-gt v0, v3, :cond_13

    .line 359
    :cond_7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->verifyProperty:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 360
    iput-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    .line 362
    :cond_8
    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->forceOverwrite:Z

    if-nez v0, :cond_15

    .line 365
    :cond_9
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->forceOverwrite:Z

    if-nez v0, :cond_16

    .line 369
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    .line 370
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->provider:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 372
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2

    .line 381
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;

    if-eqz v0, :cond_1d

    .line 386
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    .line 392
    :cond_b
    :try_start_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    if-eqz v0, :cond_19

    .line 393
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    .line 394
    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v1

    .line 395
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-nez v4, :cond_c

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->todir:Ljava/io/File;

    if-eqz v4, :cond_d

    .line 399
    :cond_c
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->relativeFilePaths:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    sget-char v5, Ljava/io/File;->separatorChar:C

    const/16 v6, 0x2f

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_d
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/taskdefs/Checksum;->addToIncludeFileMap(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 413
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    .line 414
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 415
    throw v0

    .line 327
    :cond_e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Specify at least one source - a file or a resource collection."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Can only calculate checksums for file-based resources."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_10
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Checksum cannot be generated for directories"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_11
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File and Totalproperty cannot co-exist."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_12
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Property and FileExt cannot co-exist."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_13
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Multiple files cannot be used when Property is specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_14
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "ForceOverwrite cannot be used when Property is specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_15
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "VerifyProperty and ForceOverwrite cannot co-exist."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_16
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "ForceOverwrite cannot be used when conditions are being used."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    :goto_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 378
    :cond_17
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->messageDigest:Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 379
    :catch_1
    move-exception v0

    .line 380
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 388
    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 389
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File extension when specified must not be an empty string"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_19
    :try_start_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    if-eqz v0, :cond_1c

    .line 405
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    if-nez v1, :cond_1a

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->todir:Ljava/io/File;

    if-eqz v1, :cond_1b

    .line 406
    :cond_1a
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->relativeFilePaths:Ljava/util/Map;

    .line 407
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_1b
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Checksum;->addToIncludeFileMap(Ljava/io/File;)V

    .line 411
    :cond_1c
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->generateChecksums()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 413
    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    .line 414
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->includeFileMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 411
    return v0

    .line 384
    :cond_1d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unable to create Message Digest"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 373
    :catch_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 286
    if-nez p1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;-><init>()V

    :cond_1
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->resources:Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;

    .line 290
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum$FileUnion;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    goto :goto_0
.end method

.method public addFileset(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 2

    .line 278
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Checksum;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 279
    return-void
.end method

.method public eval()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    .line 317
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->validateAndExecute()Z

    move-result v0

    return v0
.end method

.method public execute()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->isCondition:Z

    .line 300
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->validateAndExecute()Z

    move-result v0

    .line 301
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->verifyProperty:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Checksum;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->verifyProperty:Ljava/lang/String;

    .line 303
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_0
    return-void
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->algorithm:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->file:Ljava/io/File;

    .line 166
    return-void
.end method

.method public setFileext(Ljava/lang/String;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->fileext:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setForceOverwrite(Z)V
    .registers 2

    .line 240
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->forceOverwrite:Z

    .line 241
    return-void
.end method

.method public setFormat(Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;)V
    .registers 3

    .line 258
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Checksum$FormatElement;->getFormat()Ljava/text/MessageFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->format:Ljava/text/MessageFormat;

    .line 259
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .registers 3

    .line 270
    new-instance v0, Ljava/text/MessageFormat;

    invoke-direct {v0, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->format:Ljava/text/MessageFormat;

    .line 271
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->property:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->provider:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setReadBufferSize(I)V
    .registers 2

    .line 248
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->readBufferSize:I

    .line 249
    return-void
.end method

.method public setTodir(Ljava/io/File;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->todir:Ljava/io/File;

    .line 176
    return-void
.end method

.method public setTotalproperty(Ljava/lang/String;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->totalproperty:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setVerifyproperty(Ljava/lang/String;)V
    .registers 2

    .line 230
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Checksum;->verifyProperty:Ljava/lang/String;

    .line 231
    return-void
.end method
