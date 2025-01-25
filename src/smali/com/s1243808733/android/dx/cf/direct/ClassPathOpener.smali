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
.method static bridge synthetic -$$Nest$smcompareClassNames(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->compareClassNames(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$1;

    invoke-direct {v0}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$1;-><init>()V

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

.method private static compareClassNames(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 189
    const/16 v0, 0x24

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 196
    const-string v0, "package-info"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 197
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private processArchive(Ljava/io/File;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 247
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 249
    iget-boolean v2, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->sort:Z

    if-eqz v2, :cond_19

    .line 250
    new-instance v2, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$3;

    invoke-direct {v2, p0}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$3;-><init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    :cond_19
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-interface {v2, p1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;->onProcessArchiveStart(Ljava/io/File;)V

    .line 260
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const v2, 0x9c40

    invoke-direct {p1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 261
    const/16 v2, 0x4e20

    new-array v2, v2, [B

    .line 264
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 265
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    .line 267
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 268
    iget-object v8, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->filter:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    invoke-interface {v8, v7}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;->accept(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_30

    if-nez v6, :cond_68

    .line 271
    invoke-virtual {v0, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 273
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 275
    :goto_55
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_60

    .line 276
    invoke-virtual {p1, v2, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_55

    .line 279
    :cond_60
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 280
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_6a

    .line 282
    :cond_68
    new-array v6, v3, [B

    .line 285
    :goto_6a
    iget-object v8, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v9

    invoke-interface {v8, v7, v9, v10, v6}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;->processFileBytes(Ljava/lang/String;J[B)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_30

    .line 289
    :cond_76
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return v4
.end method

.method private processDirectory(Ljava/io/File;Z)Z
    .registers 7

    if-eqz p2, :cond_a

    .line 212
    new-instance p2, Ljava/io/File;

    const-string v0, "."

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, p2

    .line 215
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 216
    array-length p2, p1

    .line 219
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->sort:Z

    if-eqz v0, :cond_1b

    .line 220
    new-instance v0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$2;

    invoke-direct {v0, p0}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$2;-><init>(Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1b
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    if-ge v1, p2, :cond_2a

    .line 229
    aget-object v3, p1, v1

    invoke-direct {p0, v3, v0}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->processOne(Ljava/io/File;Z)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2a
    return v2
.end method

.method private processOne(Ljava/io/File;Z)Z
    .registers 8

    .line 156
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->processDirectory(Ljava/io/File;Z)Z

    move-result p1

    return p1

    .line 160
    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 162
    const-string v1, ".zip"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 163
    const-string v1, ".jar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 164
    const-string v1, ".apk"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_41

    .line 167
    :cond_29
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->filter:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;

    invoke-interface {v1, p2}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$FileNameFilter;->accept(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 168
    invoke-static {p1}, Lcom/s1243808733/android/dex/util/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-interface {v2, p2, v3, v4, v1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;->processFileBytes(Ljava/lang/String;J[B)Z

    move-result p1

    return p1

    :cond_40
    return v0

    .line 165
    :cond_41
    :goto_41
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->processArchive(Ljava/io/File;)Z

    move-result p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_46

    return p1

    :catch_46
    move-exception p1

    .line 174
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener;->consumer:Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;

    invoke-interface {p2, p1}, Lcom/s1243808733/android/dx/cf/direct/ClassPathOpener$Consumer;->onException(Ljava/lang/Exception;)V

    return v0
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
