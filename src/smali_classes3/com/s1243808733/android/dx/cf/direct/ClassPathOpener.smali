.class public Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;
.super Ljava/lang/Object;
.source "ClassPathOpener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;,
        Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;
    }
.end annotation


# static fields
.field public static final acceptAll:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;


# instance fields
.field private final consumer:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;

.field private filter:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

.field private final pathname:Ljava/lang/String;

.field private final sort:Z


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$100000000;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$100000000;-><init>()V

    sput-object v0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->acceptAll:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;)V
    .registers 5

    .line 114
    sget-object v0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->acceptAll:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;-><init>(Ljava/lang/String;ZLcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;)V
    .registers 5

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->pathname:Ljava/lang/String;

    .line 129
    iput-boolean p2, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->sort:Z

    .line 130
    iput-object p4, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;

    .line 131
    iput-object p3, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->filter:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    return-void
.end method

.method static synthetic access$1000006(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->compareClassNames(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static compareClassNames(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const/16 v2, 0x30

    const/16 v1, 0x24

    .line 189
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string v2, "package-info"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v2, "package-info"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private processArchive(Ljava/io/File;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 244
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 246
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 249
    iget-boolean v1, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->sort:Z

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$100000002;

    invoke-direct {v1, p0}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$100000002;-><init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-interface {v1, p1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;->onProcessArchiveStart(Ljava/io/File;)V

    .line 260
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const v1, 0x9c40

    invoke-direct {v5, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 261
    const/16 v1, 0x4e20

    new-array v6, v1, [B

    .line 264
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    .line 285
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 290
    return v1

    .line 264
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 265
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    .line 267
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 268
    iget-object v9, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->filter:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    invoke-interface {v9, v8}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;->accept(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 269
    if-nez v3, :cond_4

    .line 271
    invoke-virtual {v4, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 273
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 275
    :goto_1
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 279
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 280
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 285
    :goto_2
    iget-object v9, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v10

    invoke-interface {v9, v8, v10, v11, v3}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;->processFileBytes(Ljava/lang/String;J[B)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {v5, v6, v2, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 282
    :cond_4
    new-array v3, v2, [B

    goto :goto_2
.end method

.method private processDirectory(Ljava/io/File;Z)Z
    .registers 9

    const/4 v1, 0x0

    .line 211
    if-eqz p2, :cond_0

    .line 212
    new-instance v0, Ljava/io/File;

    const-string v2, "."

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v0

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 216
    array-length v4, v3

    .line 219
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->sort:Z

    if-eqz v0, :cond_1

    .line 220
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$100000001;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$100000001;-><init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;)V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    move v0, v1

    move v2, v1

    .line 228
    :goto_0
    if-lt v0, v4, :cond_2

    .line 232
    return v2

    .line 229
    :cond_2
    aget-object v5, v3, v0

    invoke-direct {p0, v5, v1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->processOne(Ljava/io/File;Z)Z

    move-result v5

    or-int/2addr v2, v5

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private processOne(Ljava/io/File;Z)Z
    .registers 9

    const/4 v0, 0x0

    .line 156
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->processDirectory(Ljava/io/File;Z)Z

    move-result v0

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".jar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    :cond_2
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->processArchive(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_3
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->filter:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    invoke-interface {v2, v1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;->accept(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    invoke-static {p1}, Lcom/s1243808733/android/dex/util/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v2

    .line 169
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-interface {v3, v1, v4, v5, v2}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;->processFileBytes(Ljava/lang/String;J[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 174
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-interface {v2, v1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;->onException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public process()Z
    .registers 3

    .line 141
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->pathname:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->processOne(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method
