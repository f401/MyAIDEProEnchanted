.class public Lcom/sun/tools/javac/file/ZipFileIndex;
.super Ljava/lang/Object;
.source "ZipFileIndex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;,
        Lcom/sun/tools/javac/file/ZipFileIndex$Entry;,
        Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;,
        Lcom/sun/tools/javac/file/ZipFileIndex$ZipFormatException;
    }
.end annotation


# static fields
.field private static final MAX_CHAR:Ljava/lang/String;

.field private static final MIN_CHAR:Ljava/lang/String;

.field private static NON_BATCH_MODE:Z = false

.field public static final NOT_MODIFIED:J = -0x8000000000000000L


# instance fields
.field private absFileRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private allDirs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            ">;"
        }
    .end annotation
.end field

.field private directories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            "Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private entries:[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

.field private hasPopulatedData:Z

.field private inflaterRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/zip/Inflater;",
            ">;"
        }
    .end annotation
.end field

.field lastReferenceTimeStamp:J

.field private final preindexedCacheLocation:Ljava/lang/String;

.field private readFromIndex:Z

.field private relativeDirectoryCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            ">;>;"
        }
    .end annotation
.end field

.field final symbolFilePrefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

.field private final symbolFilePrefixLength:I

.field private triedToReadIndex:Z

.field private final usePreindexedCache:Z

.field private writeIndex:Z

.field final zipFile:Ljava/io/File;

.field zipFileLastModified:J

.field private zipIndexFile:Ljava/io/File;

.field private zipRandomFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 80
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/tools/javac/file/ZipFileIndex;->MIN_CHAR:Ljava/lang/String;

    .line 81
    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/tools/javac/file/ZipFileIndex;->MAX_CHAR:Ljava/lang/String;

    .line 86
    const-string v1, "nonBatchMode"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    sput-boolean v0, Lcom/sun/tools/javac/file/ZipFileIndex;->NON_BATCH_MODE:Z

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;ZZLjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->allDirs:Ljava/util/Set;

    .line 96
    iput-wide v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFileLastModified:J

    .line 100
    iput-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->readFromIndex:Z

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipIndexFile:Ljava/io/File;

    .line 102
    iput-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->triedToReadIndex:Z

    .line 105
    iput-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->hasPopulatedData:Z

    .line 106
    iput-wide v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->lastReferenceTimeStamp:J

    .line 111
    iput-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->writeIndex:Z

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->relativeDirectoryCache:Ljava/util/Map;

    .line 123
    iput-object p1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFile:Ljava/io/File;

    .line 124
    iput-object p2, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->symbolFilePrefix:Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    .line 125
    if-nez p2, :cond_42

    .line 126
    :goto_2e
    iput v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->symbolFilePrefixLength:I

    .line 127
    iput-boolean p3, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->writeIndex:Z

    .line 128
    iput-boolean p4, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->usePreindexedCache:Z

    .line 129
    iput-object p5, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->preindexedCacheLocation:Ljava/lang/String;

    .line 131
    if-eqz p1, :cond_3e

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFileLastModified:J

    .line 136
    :cond_3e
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->checkIndex()V

    .line 137
    return-void

    .line 126
    :cond_42
    invoke-virtual {p2}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    goto :goto_2e
.end method

.method static synthetic access$1000(Lcom/sun/tools/javac/file/ZipFileIndex;)I
    .registers 2

    .line 79
    iget v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->symbolFilePrefixLength:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sun/tools/javac/file/ZipFileIndex;)Z
    .registers 2

    .line 79
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->readFromIndex:Z

    return v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    .line 79
    sget-object v0, Lcom/sun/tools/javac/file/ZipFileIndex;->MIN_CHAR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    .line 79
    sget-object v0, Lcom/sun/tools/javac/file/ZipFileIndex;->MAX_CHAR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sun/tools/javac/file/ZipFileIndex;)Ljava/io/File;
    .registers 2

    .line 79
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->getIndexFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400([BI)I
    .registers 3

    .line 79
    invoke-static {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->get2ByteLittleEndian([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$500([BI)I
    .registers 3

    .line 79
    invoke-static {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->get4ByteLittleEndian([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sun/tools/javac/file/ZipFileIndex;)Ljava/util/Map;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sun/tools/javac/file/ZipFileIndex;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sun/tools/javac/file/ZipFileIndex;Ljava/lang/String;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;
    .registers 3

    .line 79
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->getRelativeDirectory(Ljava/lang/String;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/tools/javac/file/ZipFileIndex;)[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->entries:[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sun/tools/javac/file/ZipFileIndex;[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->entries:[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sun/tools/javac/file/ZipFileIndex;)V
    .registers 1

    .line 79
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->cleanupState()V

    return-void
.end method

.method private checkIndex()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    .line 166
    .line 167
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->isUpToDate()Z

    move-result v0

    if-nez v0, :cond_61

    .line 168
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->closeFile()V

    .line 169
    const/4 v0, 0x0

    .line 172
    :goto_b
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_11

    if-eqz v0, :cond_18

    .line 173
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->lastReferenceTimeStamp:J

    .line 199
    :goto_17
    return-void

    .line 177
    :cond_18
    iput-boolean v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->hasPopulatedData:Z

    .line 179
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->readIndex()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->lastReferenceTimeStamp:J

    goto :goto_17

    .line 184
    :cond_27
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->allDirs:Ljava/util/Set;

    .line 188
    :try_start_33
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->openFile()V

    .line 189
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    .line 190
    new-instance v1, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;

    iget-object v3, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;-><init>(Lcom/sun/tools/javac/file/ZipFileIndex;Ljava/io/RandomAccessFile;JJLcom/sun/tools/javac/file/ZipFileIndex;)V

    .line 191
    invoke-static {v1}, Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;->access$000(Lcom/sun/tools/javac/file/ZipFileIndex$ZipDirectory;)V
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_58

    .line 193
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_51

    .line 194
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->closeFile()V

    .line 198
    :cond_51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->lastReferenceTimeStamp:J

    goto :goto_17

    .line 193
    :catchall_58
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_60

    .line 194
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->closeFile()V

    .line 196
    :cond_60
    throw v0

    :cond_61
    move v0, v1

    goto :goto_b
.end method

.method private cleanupState()V
    .registers 3

    .line 209
    sget-object v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->EMPTY_ARRAY:[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->entries:[Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    .line 211
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFileLastModified:J

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->allDirs:Ljava/util/Set;

    .line 213
    return-void
.end method

.method private closeFile()V
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_a

    .line 223
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_b

    .line 226
    :goto_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    .line 228
    :cond_a
    return-void

    .line 224
    :catch_b
    move-exception v0

    goto :goto_7
.end method

.method private static get2ByteLittleEndian([BI)I
    .registers 4

    .line 468
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method private static get4ByteLittleEndian([BI)I
    .registers 4

    .line 475
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method private getHeader(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    iget v1, p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->offset:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 434
    const/16 v0, 0x1e

    new-array v0, v0, [B

    .line 435
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 436
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/tools/javac/file/ZipFileIndex;->get4ByteLittleEndian([BI)I

    move-result v1

    const v2, 0x4034b50

    if-ne v1, v2, :cond_2d

    .line 438
    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/sun/tools/javac/file/ZipFileIndex;->get2ByteLittleEndian([BI)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_25

    .line 440
    return-object v0

    .line 439
    :cond_25
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "encrypted zip file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_2d
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "corrupted zip file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getIndexFile()Ljava/io/File;
    .registers 3

    .line 1024
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipIndexFile:Ljava/io/File;

    if-nez v0, :cond_31

    .line 1025
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFile:Ljava/io/File;

    if-nez v0, :cond_a

    .line 1026
    const/4 v0, 0x0

    .line 1033
    :goto_9
    return-object v0

    .line 1029
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->preindexedCacheLocation:Ljava/lang/String;

    if-nez v0, :cond_15

    const-string v0, ""

    :cond_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFile:Ljava/io/File;

    .line 1030
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".index"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipIndexFile:Ljava/io/File;

    .line 1033
    :cond_31
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipIndexFile:Ljava/io/File;

    goto :goto_9
.end method

.method private getRelativeDirectory(Ljava/lang/String;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;
    .registers 5

    .line 1051
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->relativeDirectoryCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 1052
    if-eqz v0, :cond_13

    .line 1053
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    .line 1054
    if-eqz v0, :cond_13

    .line 1059
    :goto_12
    return-object v0

    .line 1057
    :cond_13
    new-instance v0, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    invoke-direct {v0, p1}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;-><init>(Ljava/lang/String;)V

    .line 1058
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->relativeDirectoryCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12
.end method

.method private inflate([B[B)I
    .registers 5

    .line 448
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->inflaterRef:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    .line 451
    :goto_5
    if-nez v0, :cond_14

    .line 452
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->inflaterRef:Ljava/lang/ref/SoftReference;

    .line 454
    :cond_14
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 455
    invoke-virtual {v0, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 457
    :try_start_1a
    invoke-virtual {v0, p2}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_1d
    .catch Ljava/util/zip/DataFormatException; {:try_start_1a .. :try_end_1d} :catch_26

    move-result v0

    .line 459
    :goto_1e
    return v0

    .line 448
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Inflater;

    goto :goto_5

    .line 458
    :catch_26
    move-exception v0

    .line 459
    const/4 v0, -0x1

    goto :goto_1e
.end method

.method private isUpToDate()Z
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFile:Ljava/io/File;

    if-eqz v0, :cond_18

    sget-boolean v1, Lcom/sun/tools/javac/file/ZipFileIndex;->NON_BATCH_MODE:Z

    if-eqz v1, :cond_12

    iget-wide v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFileLastModified:J

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_18

    :cond_12
    iget-boolean v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->hasPopulatedData:Z

    if-eqz v0, :cond_18

    .line 155
    const/4 v0, 0x1

    .line 158
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private openFile()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFile:Ljava/io/File;

    if-eqz v0, :cond_13

    .line 203
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFile:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    .line 205
    :cond_13
    return-void
.end method

.method private readBytes(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;[B)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x1c

    const/16 v5, 0x1a

    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 400
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->getHeader(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[B

    move-result-object v1

    .line 403
    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->get2ByteLittleEndian([BI)I

    move-result v2

    if-nez v2, :cond_32

    .line 404
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-static {v1, v5}, Lcom/sun/tools/javac/file/ZipFileIndex;->get2ByteLittleEndian([BI)I

    move-result v3

    invoke-static {v1, v7}, Lcom/sun/tools/javac/file/ZipFileIndex;->get2ByteLittleEndian([BI)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 406
    array-length v1, p2

    .line 407
    :goto_21
    if-ge v0, v1, :cond_2d

    .line 408
    iget-object v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    sub-int v3, v1, v0

    invoke-virtual {v2, p2, v0, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 409
    if-ne v2, v6, :cond_30

    .line 413
    :cond_2d
    iget v0, p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->size:I

    .line 425
    :goto_2f
    return v0

    .line 411
    :cond_30
    add-int/2addr v0, v2

    .line 412
    goto :goto_21

    .line 416
    :cond_32
    iget v2, p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->compressedSize:I

    .line 417
    new-array v3, v2, [B

    .line 418
    iget-object v4, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-static {v1, v5}, Lcom/sun/tools/javac/file/ZipFileIndex;->get2ByteLittleEndian([BI)I

    move-result v5

    invoke-static {v1, v7}, Lcom/sun/tools/javac/file/ZipFileIndex;->get2ByteLittleEndian([BI)I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 419
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v3, v0, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 421
    invoke-direct {p0, v3, p2}, Lcom/sun/tools/javac/file/ZipFileIndex;->inflate([B[B)I

    move-result v0

    .line 422
    if-eq v0, v6, :cond_52

    .line 425
    iget v0, p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->size:I

    goto :goto_2f

    .line 423
    :cond_52
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "corrupted zip file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readBytes(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 378
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->getHeader(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[B

    move-result-object v1

    .line 379
    iget v2, p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->compressedSize:I

    .line 380
    new-array v0, v2, [B

    .line 381
    iget-object v3, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    const/16 v4, 0x1a

    invoke-static {v1, v4}, Lcom/sun/tools/javac/file/ZipFileIndex;->get2ByteLittleEndian([BI)I

    move-result v4

    const/16 v5, 0x1c

    invoke-static {v1, v5}, Lcom/sun/tools/javac/file/ZipFileIndex;->get2ByteLittleEndian([BI)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 382
    iget-object v3, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 385
    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->get2ByteLittleEndian([BI)I

    move-result v1

    if-nez v1, :cond_29

    .line 393
    :goto_28
    return-object v0

    .line 388
    :cond_29
    iget v2, p1, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->size:I

    .line 389
    new-array v1, v2, [B

    .line 390
    invoke-direct {p0, v0, v1}, Lcom/sun/tools/javac/file/ZipFileIndex;->inflate([B[B)I

    move-result v0

    if-ne v0, v2, :cond_35

    move-object v0, v1

    .line 393
    goto :goto_28

    .line 391
    :cond_35
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "corrupted zip file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readIndex()Z
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 854
    iget-boolean v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->triedToReadIndex:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->usePreindexedCache:Z

    if-nez v2, :cond_b

    .line 902
    :cond_a
    :goto_a
    return v0

    .line 859
    :cond_b
    monitor-enter p0

    .line 860
    const/4 v2, 0x1

    :try_start_d
    iput-boolean v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->triedToReadIndex:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_33

    .line 861
    const/4 v3, 0x0

    .line 863
    :try_start_10
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->getIndexFile()Ljava/io/File;

    move-result-object v4

    .line 864
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_77

    .line 866
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4

    .line 867
    iget-object v3, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_81

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_36

    .line 889
    :goto_29
    :try_start_29
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_7f

    .line 897
    :cond_2c
    :goto_2c
    if-ne v0, v1, :cond_31

    .line 898
    const/4 v1, 0x1

    :try_start_2f
    iput-boolean v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->readFromIndex:Z

    .line 900
    :cond_31
    monitor-exit p0

    goto :goto_a

    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_33

    throw v0

    .line 870
    :cond_36
    :try_start_36
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    .line 871
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    move v3, v0

    .line 872
    :goto_42
    if-ge v3, v6, :cond_73

    .line 873
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .line 874
    new-array v7, v7, [B

    .line 875
    invoke-virtual {v2, v7}, Ljava/io/RandomAccessFile;->read([B)I

    .line 877
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/sun/tools/javac/file/ZipFileIndex;->getRelativeDirectory(Ljava/lang/String;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v7

    .line 878
    new-instance v8, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;

    invoke-direct {v8, v7, p0}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;-><init>(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;Lcom/sun/tools/javac/file/ZipFileIndex;)V

    .line 879
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    invoke-static {v8, v9}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->access$1502(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;I)I

    .line 880
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->access$1602(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;J)J

    .line 881
    iget-object v9, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_36 .. :try_end_70} :catchall_81

    .line 872
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 884
    :cond_73
    :try_start_73
    iput-wide v4, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFileLastModified:J
    :try_end_75
    .catchall {:try_start_73 .. :try_end_75} :catchall_83

    move v0, v1

    goto :goto_29

    .line 886
    :catchall_77
    move-exception v2

    move-object v2, v3

    .line 889
    :goto_79
    if-eqz v2, :cond_2c

    .line 891
    :try_start_7b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_2c

    .line 892
    :catchall_7f
    move-exception v2

    goto :goto_2c

    .line 886
    :catchall_81
    move-exception v3

    goto :goto_79

    :catchall_83
    move-exception v0

    move v0, v1

    goto :goto_79
.end method

.method private writeIndex()Z
    .registers 17

    .line 906
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/tools/javac/file/ZipFileIndex;->readFromIndex:Z

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/tools/javac/file/ZipFileIndex;->usePreindexedCache:Z

    if-nez v2, :cond_e

    .line 908
    :cond_c
    const/4 v2, 0x1

    .line 1014
    :goto_d
    return v2

    .line 911
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sun/tools/javac/file/ZipFileIndex;->writeIndex:Z

    if-nez v2, :cond_16

    .line 912
    const/4 v2, 0x1

    goto :goto_d

    .line 915
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->getIndexFile()Ljava/io/File;

    move-result-object v3

    .line 916
    if-nez v3, :cond_1e

    .line 917
    const/4 v2, 0x0

    goto :goto_d

    .line 920
    :cond_1e
    const/4 v2, 0x0

    .line 921
    :try_start_1f
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v6, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_13b

    .line 925
    :try_start_26
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFileLastModified:J

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 926
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 929
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 931
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    .line 933
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v4, v2

    :goto_5b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_5e
    .catchall {:try_start_26 .. :try_end_5e} :catchall_145

    move-result v2

    const-string v10, "UTF-8"

    if-eqz v2, :cond_b1

    :try_start_63
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    .line 934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;

    .line 936
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    invoke-virtual {v2}, Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;->getPath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 940
    array-length v11, v10

    .line 941
    invoke-virtual {v6, v11}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 942
    invoke-virtual {v6, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 945
    int-to-long v10, v11

    .line 948
    invoke-virtual {v3}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->getEntriesAsCollection()Ljava/util/List;

    move-result-object v12

    .line 949
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 950
    const-wide/16 v12, 0x4

    add-long/2addr v4, v12

    add-long/2addr v4, v10

    const-wide/16 v10, 0x4

    add-long/2addr v4, v10

    .line 952
    new-instance v10, Ljava/lang/Long;

    invoke-direct {v10, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v8, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-wide/16 v10, 0x0

    invoke-static {v3, v10, v11}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->access$1602(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;J)J

    .line 956
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_ac
    .catchall {:try_start_63 .. :try_end_ac} :catchall_14a

    .line 957
    const-wide/16 v2, 0x8

    add-long/2addr v2, v4

    move-wide v4, v2

    .line 958
    goto :goto_5b

    .line 960
    :cond_b1
    :try_start_b1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_135

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;

    move-object v3, v0

    .line 962
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    .line 964
    invoke-static {v3}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->access$1700(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;)Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 965
    invoke-virtual {v6, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 966
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 968
    invoke-virtual {v6, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 971
    invoke-virtual {v3}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->getEntriesAsCollection()Ljava/util/List;

    move-result-object v2

    .line 972
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_e6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    .line 974
    iget-object v3, v2, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->name:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 975
    array-length v11, v3

    .line 976
    invoke-virtual {v6, v11}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 977
    invoke-virtual {v6, v3}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_ff
    .catchall {:try_start_b1 .. :try_end_ff} :catchall_145

    .line 979
    int-to-long v12, v11

    .line 982
    :try_start_100
    iget-boolean v3, v2, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->isDir:Z

    if-eqz v3, :cond_133

    const/4 v3, 0x1

    :goto_105
    invoke-virtual {v6, v3}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 983
    iget v3, v2, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->offset:I

    invoke-virtual {v6, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 987
    iget v3, v2, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->size:I

    invoke-virtual {v6, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 991
    iget v3, v2, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->compressedSize:I

    invoke-virtual {v6, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 995
    invoke-virtual {v2}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->getLastModified()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_11e
    .catchall {:try_start_100 .. :try_end_11e} :catchall_148

    .line 999
    const-wide/16 v2, 0x4

    add-long/2addr v2, v4

    add-long/2addr v2, v12

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    move-wide v4, v2

    .line 1000
    goto :goto_e6

    .line 982
    :cond_133
    const/4 v3, 0x0

    goto :goto_105

    .line 960
    :cond_135
    :try_start_135
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 1014
    :cond_138
    :goto_138
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 1002
    :catchall_13b
    move-exception v3

    :goto_13c
    move-object v6, v2

    .line 1006
    :goto_13d
    if-eqz v6, :cond_138

    .line 1007
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_142} :catch_143

    goto :goto_138

    .line 1009
    :catch_143
    move-exception v2

    goto :goto_138

    .line 1002
    :catchall_145
    move-exception v2

    move-object v2, v6

    goto :goto_13c

    :catchall_148
    move-exception v2

    goto :goto_13d

    :catchall_14a
    move-exception v2

    goto :goto_13d
.end method


# virtual methods
.method public close()V
    .registers 2

    monitor-enter p0

    .line 216
    :try_start_1
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->writeIndex()Z

    .line 217
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->closeFile()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 218
    monitor-exit p0

    return-void

    .line 215
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Lcom/sun/tools/javac/file/RelativePath;)Z
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    .line 306
    :try_start_2
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->checkIndex()V

    .line 307
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->getZipIndexEntry(Lcom/sun/tools/javac/file/RelativePath;)Lcom/sun/tools/javac/file/ZipFileIndex$Entry;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_11
    .catchall {:try_start_2 .. :try_end_8} :catchall_e

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    monitor-exit p0

    .line 310
    :goto_d
    return v0

    .line 305
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 309
    :catch_11
    move-exception v1

    .line 310
    monitor-exit p0

    goto :goto_d
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->closeFile()V

    .line 148
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 149
    return-void
.end method

.method getAbsoluteFile()Ljava/io/File;
    .registers 3

    .line 1041
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->absFileRef:Ljava/lang/ref/Reference;

    if-nez v0, :cond_15

    const/4 v0, 0x0

    .line 1042
    :goto_5
    if-nez v0, :cond_14

    .line 1043
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 1044
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->absFileRef:Ljava/lang/ref/Reference;

    .line 1046
    :cond_14
    return-object v0

    .line 1041
    :cond_15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_5
.end method

.method public getAllDirectories()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 285
    :try_start_1
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->checkIndex()V

    .line 286
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->allDirs:Ljava/util/Set;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne v0, v1, :cond_17

    .line 287
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->allDirs:Ljava/util/Set;

    .line 290
    :cond_17
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->allDirs:Ljava/util/Set;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_1b
    .catchall {:try_start_1 .. :try_end_19} :catchall_22

    monitor-exit p0

    .line 293
    :goto_1a
    return-object v0

    .line 292
    :catch_1b
    move-exception v0

    .line 293
    :try_start_1c
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_22

    move-result-object v0

    monitor-exit p0

    goto :goto_1a

    .line 284
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirectories(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 267
    :try_start_1
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->checkIndex()V

    .line 269
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;

    .line 270
    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 272
    :goto_f
    if-nez v0, :cond_1c

    .line 273
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_1e
    .catchall {:try_start_1 .. :try_end_14} :catchall_25

    move-result-object v0

    monitor-exit p0

    .line 279
    :goto_16
    return-object v0

    .line 270
    :cond_17
    :try_start_17
    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->access$300(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;)Lcom/sun/tools/javac/util/List;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1e
    .catchall {:try_start_17 .. :try_end_1a} :catchall_25

    move-result-object v0

    goto :goto_f

    .line 276
    :cond_1c
    monitor-exit p0

    goto :goto_16

    .line 278
    :catch_1e
    move-exception v0

    .line 279
    :try_start_1f
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_25

    move-result-object v0

    monitor-exit p0

    goto :goto_16

    .line 266
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFiles(Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;",
            ")",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 250
    :try_start_1
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->checkIndex()V

    .line 252
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;

    .line 253
    if-nez v0, :cond_17

    const/4 v0, 0x0

    .line 255
    :goto_f
    if-nez v0, :cond_1c

    .line 256
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_1e
    .catchall {:try_start_1 .. :try_end_14} :catchall_25

    move-result-object v0

    monitor-exit p0

    .line 261
    :goto_16
    return-object v0

    .line 253
    :cond_17
    :try_start_17
    invoke-static {v0}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->access$200(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;)Lcom/sun/tools/javac/util/List;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1e
    .catchall {:try_start_17 .. :try_end_1a} :catchall_25

    move-result-object v0

    goto :goto_f

    .line 258
    :cond_1c
    monitor-exit p0

    goto :goto_16

    .line 260
    :catch_1e
    move-exception v0

    .line 261
    :try_start_1f
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_25

    move-result-object v0

    monitor-exit p0

    goto :goto_16

    .line 249
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastModified(Lcom/sun/tools/javac/file/RelativePath$RelativeFile;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 326
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->getZipIndexEntry(Lcom/sun/tools/javac/file/RelativePath;)Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_d

    .line 329
    invoke-virtual {v0}, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->getLastModified()J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 328
    :cond_d
    :try_start_d
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_13

    .line 325
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZipFile()Ljava/io/File;
    .registers 2

    .line 1037
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFile:Ljava/io/File;

    return-object v0
.end method

.method public getZipFileLastModified()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    monitor-enter p0

    .line 691
    :try_start_1
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->checkIndex()V

    .line 692
    iget-wide v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFileLastModified:J

    monitor-exit p0

    return-wide v0

    .line 693
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method getZipIndexEntry(Lcom/sun/tools/javac/file/RelativePath;)Lcom/sun/tools/javac/file/ZipFileIndex$Entry;
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    .line 235
    :try_start_2
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->checkIndex()V

    .line 236
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sun/tools/javac/file/RelativePath;->dirname()Lcom/sun/tools/javac/file/RelativePath$RelativeDirectory;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;

    .line 237
    invoke-virtual {p1}, Lcom/sun/tools/javac/file/RelativePath;->basename()Ljava/lang/String;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_14} :catch_22
    .catchall {:try_start_2 .. :try_end_14} :catchall_1f

    move-result-object v2

    .line 238
    if-nez v0, :cond_1a

    move-object v0, v1

    :goto_18
    monitor-exit p0

    .line 241
    :goto_19
    return-object v0

    .line 238
    :cond_1a
    :try_start_1a
    invoke-static {v0, v2}, Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;->access$100(Lcom/sun/tools/javac/file/ZipFileIndex$DirectoryEntry;Ljava/lang/String;)Lcom/sun/tools/javac/file/ZipFileIndex$Entry;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_22
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1f

    move-result-object v0

    goto :goto_18

    .line 234
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 240
    :catch_22
    move-exception v0

    .line 241
    monitor-exit p0

    move-object v0, v1

    goto :goto_19
.end method

.method public isDirectory(Lcom/sun/tools/javac/file/RelativePath;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    monitor-enter p0

    .line 316
    :try_start_2
    invoke-virtual {p1}, Lcom/sun/tools/javac/file/RelativePath;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->lastReferenceTimeStamp:J
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_23

    .line 318
    monitor-exit p0

    .line 322
    :goto_13
    return v0

    .line 321
    :cond_14
    :try_start_14
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->checkIndex()V

    .line 322
    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->directories:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_23

    move-result-object v1

    if-eqz v1, :cond_21

    :goto_1f
    monitor-exit p0

    goto :goto_13

    :cond_21
    const/4 v0, 0x0

    goto :goto_1f

    .line 315
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpen()Z
    .registers 2

    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipRandomFile:Ljava/io/RandomAccessFile;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public length(Lcom/sun/tools/javac/file/RelativePath$RelativeFile;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 333
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->getZipIndexEntry(Lcom/sun/tools/javac/file/RelativePath;)Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_22

    .line 337
    iget-boolean v1, v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->isDir:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_28

    if-eqz v1, :cond_e

    .line 338
    monitor-exit p0

    const/4 v0, 0x0

    .line 346
    :goto_d
    return v0

    .line 341
    :cond_e
    :try_start_e
    invoke-direct {p0, v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->getHeader(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[B

    move-result-object v1

    .line 343
    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/sun/tools/javac/file/ZipFileIndex;->get2ByteLittleEndian([BI)I

    move-result v1

    if-nez v1, :cond_1e

    .line 344
    iget v0, v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->compressedSize:I
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_28

    monitor-exit p0

    goto :goto_d

    .line 346
    :cond_1e
    :try_start_1e
    iget v0, v0, Lcom/sun/tools/javac/file/ZipFileIndex$Entry;->size:I
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_28

    monitor-exit p0

    goto :goto_d

    .line 335
    :cond_22
    :try_start_22
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_28

    .line 332
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read(Lcom/sun/tools/javac/file/RelativePath$RelativeFile;[B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 365
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->getZipIndexEntry(Lcom/sun/tools/javac/file/RelativePath;)Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_d

    .line 368
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/file/ZipFileIndex;->read(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;[B)I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    move-result v0

    monitor-exit p0

    return v0

    .line 367
    :cond_d
    :try_start_d
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_13

    .line 364
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method read(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;[B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 373
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/file/ZipFileIndex;->readBytes(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;[B)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    .line 374
    monitor-exit p0

    return v0

    .line 372
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read(Lcom/sun/tools/javac/file/RelativePath$RelativeFile;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 351
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->getZipIndexEntry(Lcom/sun/tools/javac/file/RelativePath;)Lcom/sun/tools/javac/file/ZipFileIndex$Entry;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_d

    .line 354
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/file/ZipFileIndex;->read(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[B
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_26

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 353
    :cond_d
    :try_start_d
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path not found in ZIP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sun/tools/javac/file/RelativePath$RelativeFile;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_26

    .line 350
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method read(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 358
    :try_start_1
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->openFile()V

    .line 359
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/file/ZipFileIndex;->readBytes(Lcom/sun/tools/javac/file/ZipFileIndex$Entry;)[B

    move-result-object v0

    .line 360
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->closeFile()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 361
    monitor-exit p0

    return-object v0

    .line 357
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipFileIndex["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/file/ZipFileIndex;->zipFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeZipIndex()Z
    .registers 2

    .line 1018
    monitor-enter p0

    .line 1019
    :try_start_1
    invoke-direct {p0}, Lcom/sun/tools/javac/file/ZipFileIndex;->writeIndex()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 1020
    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method
