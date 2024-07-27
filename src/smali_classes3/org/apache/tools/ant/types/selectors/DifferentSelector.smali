.class public Lorg/apache/tools/ant/types/selectors/DifferentSelector;
.super Lorg/apache/tools/ant/types/selectors/MappingSelector;
.source "DifferentSelector.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private ignoreContents:Z

.field private ignoreFileTimes:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreFileTimes:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreContents:Z

    return-void
.end method


# virtual methods
.method protected selectionTest(Ljava/io/File;Ljava/io/File;)Z
    .registers 11

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eq v2, v3, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 93
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreFileTimes:Z

    if-nez v2, :cond_2

    .line 96
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget v6, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->granularity:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 97
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget v6, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->granularity:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    move v2, v0

    .line 100
    :goto_1
    if-eqz v2, :cond_0

    .line 104
    :cond_2
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreContents:Z

    if-eqz v0, :cond_4

    move v0, v1

    .line 105
    goto :goto_0

    :cond_3
    move v2, v1

    .line 97
    goto :goto_1

    .line 109
    :cond_4
    :try_start_0
    sget-object v0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->contentEquals(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "while comparing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setIgnoreContents(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreContents:Z

    .line 73
    return-void
.end method

.method public setIgnoreFileTimes(Z)V
    .registers 2

    .line 63
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/DifferentSelector;->ignoreFileTimes:Z

    .line 64
    return-void
.end method
