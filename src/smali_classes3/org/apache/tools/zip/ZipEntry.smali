.class public Lorg/apache/tools/zip/ZipEntry;
.super Ljava/util/zip/ZipEntry;
.source "ZipEntry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CRC_UNKNOWN:I = -0x1

.field private static final EMPTY:[B

.field public static final PLATFORM_FAT:I = 0x0

.field public static final PLATFORM_UNIX:I = 0x3

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_SHIFT:I = 0x10

.field private static final noExtraFields:[Lorg/apache/tools/zip/ZipExtraField;


# instance fields
.field private externalAttributes:J

.field private extraFields:[Lorg/apache/tools/zip/ZipExtraField;

.field private gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

.field private internalAttributes:I

.field private method:I

.field private name:Ljava/lang/String;

.field private platform:I

.field private rawName:[B

.field private size:J

.field private unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    .line 56
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/tools/zip/ZipEntry;->EMPTY:[B

    .line 82
    new-array v0, v1, [Lorg/apache/tools/zip/ZipExtraField;

    sput-object v0, Lorg/apache/tools/zip/ZipEntry;->noExtraFields:[Lorg/apache/tools/zip/ZipExtraField;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 147
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .line 163
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setSize(J)V

    .line 167
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setTime(J)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->method:I

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->size:J

    .line 74
    iput v3, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    .line 75
    iput v3, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    .line 78
    iput-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    .line 79
    iput-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->rawName:[B

    .line 81
    new-instance v0, Lorg/apache/tools/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/tools/zip/GeneralPurposeBit;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    .line 95
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->method:I

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->size:J

    .line 74
    iput v3, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    .line 75
    iput v3, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    .line 78
    iput-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    .line 79
    iput-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->rawName:[B

    .line 81
    new-instance v0, Lorg/apache/tools/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/tools/zip/GeneralPurposeBit;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    .line 110
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    const/4 v1, 0x1

    sget-object v2, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {v0, v1, v2}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 119
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setMethod(I)V

    .line 120
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->size:J

    .line 121
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/tools/zip/ZipEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/ZipEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 135
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setInternalAttributes(I)V

    .line 136
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setExternalAttributes(J)V

    .line 137
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 138
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getPlatform()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setPlatform(I)V

    .line 139
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getGeneralPurposeBit()Lorg/apache/tools/zip/GeneralPurposeBit;

    move-result-object v0

    .line 140
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->setGeneralPurposeBit(Lorg/apache/tools/zip/GeneralPurposeBit;)V

    .line 141
    return-void

    .line 140
    :cond_0
    invoke-virtual {v0}, Lorg/apache/tools/zip/GeneralPurposeBit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/GeneralPurposeBit;

    goto :goto_0
.end method

.method private copyOf([Lorg/apache/tools/zip/ZipExtraField;)[Lorg/apache/tools/zip/ZipExtraField;
    .registers 3

    .line 359
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/zip/ZipEntry;->copyOf([Lorg/apache/tools/zip/ZipExtraField;I)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method private copyOf([Lorg/apache/tools/zip/ZipExtraField;I)[Lorg/apache/tools/zip/ZipExtraField;
    .registers 6

    const/4 v2, 0x0

    .line 363
    new-array v0, p2, [Lorg/apache/tools/zip/ZipExtraField;

    .line 364
    array-length v1, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    return-object v0
.end method

.method private getAllExtraFields()[Lorg/apache/tools/zip/ZipExtraField;
    .registers 3

    .line 379
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->copyOf([Lorg/apache/tools/zip/ZipExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 381
    :cond_0
    return-object v0
.end method

.method private getAllExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;
    .registers 3

    .line 390
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-nez v0, :cond_1

    .line 391
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getUnparseableOnly()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 393
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getMergedFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    goto :goto_0
.end method

.method private getMergedFields()[Lorg/apache/tools/zip/ZipExtraField;
    .registers 4

    .line 369
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->copyOf([Lorg/apache/tools/zip/ZipExtraField;I)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length v1, v1

    iget-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    aput-object v2, v0, v1

    .line 371
    return-object v0
.end method

.method private getParseableExtraFields()[Lorg/apache/tools/zip/ZipExtraField;
    .registers 3

    .line 353
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getParseableExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->copyOf([Lorg/apache/tools/zip/ZipExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 355
    :cond_0
    return-object v0
.end method

.method private getParseableExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;
    .registers 2

    .line 346
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Lorg/apache/tools/zip/ZipEntry;->noExtraFields:[Lorg/apache/tools/zip/ZipExtraField;

    .line 349
    :cond_0
    return-object v0
.end method

.method private getUnparseableOnly()[Lorg/apache/tools/zip/ZipExtraField;
    .registers 4

    .line 375
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-nez v1, :cond_0

    sget-object v0, Lorg/apache/tools/zip/ZipEntry;->noExtraFields:[Lorg/apache/tools/zip/ZipExtraField;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/tools/zip/ZipExtraField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method private mergeExtraFields([Lorg/apache/tools/zip/ZipExtraField;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 734
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-nez v0, :cond_0

    .line 735
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 760
    :goto_0
    return-void

    .line 737
    :cond_0
    array-length v3, p1

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, p1, v1

    .line 739
    instance-of v0, v4, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    .line 744
    :goto_2
    if-nez v0, :cond_2

    .line 745
    invoke-virtual {p0, v4}, Lorg/apache/tools/zip/ZipEntry;->addExtraField(Lorg/apache/tools/zip/ZipExtraField;)V

    .line 751
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 742
    :cond_1
    invoke-interface {v4}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    goto :goto_2

    .line 747
    :cond_2
    if-nez p2, :cond_3

    instance-of v5, v0, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;

    if-nez v5, :cond_4

    .line 749
    :cond_3
    invoke-interface {v4}, Lorg/apache/tools/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v4

    .line 750
    array-length v5, v4

    invoke-interface {v0, v4, v2, v5}, Lorg/apache/tools/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    goto :goto_3

    .line 752
    :cond_4
    invoke-interface {v4}, Lorg/apache/tools/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v4

    .line 753
    check-cast v0, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;

    array-length v5, v4

    .line 754
    invoke-interface {v0, v4, v2, v5}, Lorg/apache/tools/zip/CentralDirectoryParsingZipExtraField;->parseFromCentralDirectoryData([BII)V

    goto :goto_3

    .line 758
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    goto :goto_0
.end method


# virtual methods
.method public addAsFirstExtraField(Lorg/apache/tools/zip/ZipExtraField;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 434
    instance-of v0, p1, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_1

    .line 435
    check-cast p1, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    .line 448
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 449
    return-void

    .line 437
    :cond_1
    invoke-interface {p1}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 438
    invoke-interface {p1}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->removeExtraField(Lorg/apache/tools/zip/ZipShort;)V

    .line 440
    :cond_2
    iget-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    .line 441
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-eqz v0, :cond_3

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 442
    :goto_1
    new-array v0, v0, [Lorg/apache/tools/zip/ZipExtraField;

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    .line 443
    aput-object p1, v0, v4

    .line 444
    if-eqz v2, :cond_0

    .line 445
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 441
    goto :goto_1
.end method

.method public addExtraField(Lorg/apache/tools/zip/ZipExtraField;)V
    .registers 4

    .line 407
    instance-of v0, p1, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 408
    check-cast p1, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    .line 421
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 422
    return-void

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-nez v0, :cond_1

    .line 411
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/tools/zip/ZipExtraField;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    goto :goto_0

    .line 413
    :cond_1
    invoke-interface {p1}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 414
    invoke-interface {p1}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->removeExtraField(Lorg/apache/tools/zip/ZipShort;)V

    .line 416
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->copyOf([Lorg/apache/tools/zip/ZipExtraField;I)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 418
    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .line 179
    invoke-super {p0}, Ljava/util/zip/ZipEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/ZipEntry;

    .line 181
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setInternalAttributes(I)V

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/zip/ZipEntry;->setExternalAttributes(J)V

    .line 183
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getAllExtraFieldsNoCopy()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V

    .line 184
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 772
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 796
    :cond_0
    :goto_0
    return v2

    .line 775
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 778
    check-cast p1, Lorg/apache/tools/zip/ZipEntry;

    .line 779
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 781
    if-nez v0, :cond_5

    .line 782
    if-nez v3, :cond_0

    .line 788
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v3

    .line 789
    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 790
    if-nez v3, :cond_3

    .line 791
    const-string v3, ""

    .line 793
    :cond_3
    if-nez v0, :cond_4

    .line 794
    const-string v0, ""

    .line 796
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 797
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 798
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getInternalAttributes()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 799
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getPlatform()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getPlatform()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 800
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    .line 801
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getMethod()I

    move-result v3

    if-ne v0, v3, :cond_6

    .line 802
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getSize()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    .line 803
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCrc()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    .line 804
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_6

    .line 805
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getCentralDirectoryExtra()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getCentralDirectoryExtra()[B

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 806
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getLocalFileDataExtra()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/zip/ZipEntry;->getLocalFileDataExtra()[B

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    iget-object v3, p1, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    .line 807
    invoke-virtual {v0, v3}, Lorg/apache/tools/zip/GeneralPurposeBit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    move v2, v0

    .line 796
    goto/16 :goto_0

    .line 785
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 807
    goto :goto_1
.end method

.method public getCentralDirectoryExtra()[B
    .registers 2

    .line 579
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields(Z)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->mergeCentralDirectoryData([Lorg/apache/tools/zip/ZipExtraField;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExternalAttributes()J
    .registers 3

    .line 239
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    return-wide v0
.end method

.method public getExtraField(Lorg/apache/tools/zip/ZipShort;)Lorg/apache/tools/zip/ZipExtraField;
    .registers 7

    .line 492
    iget-object v2, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-eqz v2, :cond_1

    .line 493
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 494
    invoke-interface {v0}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/tools/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 499
    :goto_1
    return-object v0

    .line 493
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 499
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getExtraFields()[Lorg/apache/tools/zip/ZipExtraField;
    .registers 2

    .line 329
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getParseableExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    return-object v0
.end method

.method public getExtraFields(Z)[Lorg/apache/tools/zip/ZipExtraField;
    .registers 3

    .line 342
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getAllExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/tools/zip/ZipEntry;->getParseableExtraFields()[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    goto :goto_0
.end method

.method public getGeneralPurposeBit()Lorg/apache/tools/zip/GeneralPurposeBit;
    .registers 2

    .line 711
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    return-object v0
.end method

.method public getInternalAttributes()I
    .registers 2

    .line 219
    iget v0, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .registers 5

    .line 764
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLocalFileDataExtra()[B
    .registers 2

    .line 568
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExtra()[B

    move-result-object v0

    .line 569
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/tools/zip/ZipEntry;->EMPTY:[B

    goto :goto_0
.end method

.method public getMethod()I
    .registers 2

    .line 195
    iget v0, p0, Lorg/apache/tools/zip/ZipEntry;->method:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 606
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPlatform()I
    .registers 2

    .line 291
    iget v0, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    return v0
.end method

.method public getRawName()[B
    .registers 5

    const/4 v3, 0x0

    .line 681
    iget-object v1, p0, Lorg/apache/tools/zip/ZipEntry;->rawName:[B

    if-eqz v1, :cond_0

    .line 682
    array-length v0, v1

    new-array v0, v0, [B

    .line 683
    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()J
    .registers 3

    .line 639
    iget-wide v0, p0, Lorg/apache/tools/zip/ZipEntry;->size:J

    return-wide v0
.end method

.method public getUnixMode()I
    .registers 5

    .line 277
    iget v0, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getExternalAttributes()J

    move-result-wide v0

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getUnparseableExtraFieldData()Lorg/apache/tools/zip/UnparseableExtraFieldData;
    .registers 2

    .line 508
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 702
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .registers 3

    .line 617
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeExtraField(Lorg/apache/tools/zip/ZipShort;)V
    .registers 9

    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    if-eqz v0, :cond_3

    .line 461
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 462
    iget-object v3, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 463
    invoke-interface {v5}, Lorg/apache/tools/zip/ZipExtraField;->getHeaderId()Lorg/apache/tools/zip/ZipShort;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/apache/tools/zip/ZipShort;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 464
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    array-length v0, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 470
    new-array v0, v1, [Lorg/apache/tools/zip/ZipExtraField;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/zip/ZipExtraField;

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    .line 471
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 472
    return-void

    .line 468
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 459
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeUnparseableExtraFieldData()V
    .registers 2

    .line 478
    iget-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v0, :cond_0

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 483
    return-void

    .line 479
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public setCentralDirectoryExtra([B)V
    .registers 5

    .line 553
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p1, v0, v1}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 555
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->mergeExtraFields([Lorg/apache/tools/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setComprSize(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/zip/ZipEntry;->setCompressedSize(J)V

    .line 596
    return-void
.end method

.method public setExternalAttributes(J)V
    .registers 4

    .line 249
    iput-wide p1, p0, Lorg/apache/tools/zip/ZipEntry;->externalAttributes:J

    .line 250
    return-void
.end method

.method protected setExtra()V
    .registers 2

    .line 543
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/zip/ZipEntry;->getExtraFields(Z)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/zip/ExtraFieldUtils;->mergeLocalFileDataData([Lorg/apache/tools/zip/ZipExtraField;)[B

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    .line 544
    return-void
.end method

.method public setExtra([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 524
    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;->READ:Lorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;

    invoke-static {p1, v0, v1}, Lorg/apache/tools/zip/ExtraFieldUtils;->parse([BZLorg/apache/tools/zip/ExtraFieldUtils$UnparseableExtraField;)[Lorg/apache/tools/zip/ZipExtraField;

    move-result-object v0

    .line 526
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->mergeExtraFields([Lorg/apache/tools/zip/ZipExtraField;Z)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing extra fields for entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setExtraFields([Lorg/apache/tools/zip/ZipExtraField;)V
    .registers 8

    const/4 v2, 0x0

    .line 311
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 312
    array-length v4, p1

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, p1, v1

    .line 313
    instance-of v5, v0, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    if-eqz v5, :cond_0

    .line 314
    check-cast v0, Lorg/apache/tools/zip/UnparseableExtraFieldData;

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->unparseableExtra:Lorg/apache/tools/zip/UnparseableExtraFieldData;

    .line 312
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 316
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 319
    :cond_1
    new-array v0, v2, [Lorg/apache/tools/zip/ZipExtraField;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/zip/ZipExtraField;

    iput-object v0, p0, Lorg/apache/tools/zip/ZipEntry;->extraFields:[Lorg/apache/tools/zip/ZipExtraField;

    .line 320
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->setExtra()V

    .line 321
    return-void
.end method

.method public setGeneralPurposeBit(Lorg/apache/tools/zip/GeneralPurposeBit;)V
    .registers 2

    .line 720
    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->gpb:Lorg/apache/tools/zip/GeneralPurposeBit;

    .line 721
    return-void
.end method

.method public setInternalAttributes(I)V
    .registers 2

    .line 229
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->internalAttributes:I

    .line 230
    return-void
.end method

.method public setMethod(I)V
    .registers 4

    .line 205
    if-ltz p1, :cond_0

    .line 209
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->method:I

    .line 210
    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZIP compression method can not be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected setName(Ljava/lang/String;)V
    .registers 4

    .line 626
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getPlatform()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 629
    :cond_0
    iput-object p1, p0, Lorg/apache/tools/zip/ZipEntry;->name:Ljava/lang/String;

    .line 630
    return-void
.end method

.method protected setName(Ljava/lang/String;[B)V
    .registers 3

    .line 667
    invoke-virtual {p0, p1}, Lorg/apache/tools/zip/ZipEntry;->setName(Ljava/lang/String;)V

    .line 668
    iput-object p2, p0, Lorg/apache/tools/zip/ZipEntry;->rawName:[B

    .line 669
    return-void
.end method

.method protected setPlatform(I)V
    .registers 2

    .line 301
    iput p1, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    .line 302
    return-void
.end method

.method public setSize(J)V
    .registers 6

    .line 651
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 654
    iput-wide p1, p0, Lorg/apache/tools/zip/ZipEntry;->size:J

    .line 655
    return-void

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid entry size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUnixMode(I)V
    .registers 5

    const/4 v1, 0x0

    .line 261
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 265
    :goto_0
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    :cond_0
    shl-int/lit8 v2, p1, 0x10

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-long v0, v0

    .line 261
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/zip/ZipEntry;->setExternalAttributes(J)V

    .line 267
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/tools/zip/ZipEntry;->platform:I

    .line 268
    return-void

    :cond_1
    move v0, v1

    .line 261
    goto :goto_0
.end method
