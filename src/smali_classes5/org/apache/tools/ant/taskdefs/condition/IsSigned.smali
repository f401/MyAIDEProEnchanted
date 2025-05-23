.class public Lorg/apache/tools/ant/taskdefs/condition/IsSigned;
.super Lorg/apache/tools/ant/types/DataType;
.source "IsSigned.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# static fields
.field private static final SHORT_SIG_LIMIT:I = 0x8

.field private static final SIG_END:Ljava/lang/String; = ".SF"

.field private static final SIG_START:Ljava/lang/String; = "META-INF/"


# instance fields
.field private file:Ljava/io/File;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lorg/apache/tools/ant/types/DataType;-><init>()V

    return-void
.end method

.method public static isSigned(Ljava/io/File;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v4, Lorg/apache/tools/zip/ZipFile;

    invoke-direct {v4, p0}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 74
    if-nez p1, :cond_1d

    .line 75
    :try_start_b
    invoke-virtual {v4}, Lorg/apache/tools/zip/ZipFile;->getEntries()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/condition/IsSigned$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/taskdefs/condition/IsSigned$$ExternalSyntheticLambda0;

    .line 76
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_7e

    move-result v1

    .line 91
    invoke-virtual {v4}, Lorg/apache/tools/zip/ZipFile;->close()V

    .line 90
    :goto_1c
    return v1

    .line 78
    :cond_1d
    :try_start_1d
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->replaceInvalidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "META-INF/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".SF"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v4, v0}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_78

    move v0, v1

    .line 83
    :goto_42
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_85

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "META-INF/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".SF"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v4, v3}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;
    :try_end_6c
    .catchall {:try_start_1d .. :try_end_6c} :catchall_7e

    move-result-object v3

    if-eqz v3, :cond_7a

    move v3, v1

    .line 90
    :goto_70
    if-nez v0, :cond_74

    if-eqz v3, :cond_7c

    .line 91
    :cond_74
    :goto_74
    invoke-virtual {v4}, Lorg/apache/tools/zip/ZipFile;->close()V

    goto :goto_1c

    :cond_78
    move v0, v2

    .line 79
    goto :goto_42

    :cond_7a
    move v3, v2

    .line 84
    goto :goto_70

    :cond_7c
    move v1, v2

    .line 90
    goto :goto_74

    .line 73
    :catchall_7e
    move-exception v0

    :try_start_7f
    invoke-virtual {v4}, Lorg/apache/tools/zip/ZipFile;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    :goto_82
    throw v0

    :catchall_83
    move-exception v1

    goto :goto_82

    :cond_85
    move v3, v2

    goto :goto_70
.end method

.method static synthetic lambda$isSigned$0(Lorg/apache/tools/zip/ZipEntry;)Z
    .registers 3

    .line 76
    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "META-INF/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".SF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static replaceInvalidChars(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v0, v1

    move v2, v1

    :goto_d
    if-ge v2, v5, :cond_27

    aget-char v1, v4, v2

    .line 130
    const-string v6, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_23

    .line 131
    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/4 v0, 0x1

    .line 129
    :goto_1f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    .line 134
    :cond_23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 137
    :cond_27
    if-eqz v0, :cond_2d

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2d
    return-object p0
.end method


# virtual methods
.method public eval()Z
    .registers 6

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->file:Ljava/io/File;

    if-eqz v1, :cond_7b

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The file \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->log(Ljava/lang/String;I)V

    .line 123
    :cond_2b
    :goto_2b
    return v0

    .line 113
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->file:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->isSigned(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_56

    move-result v0

    .line 119
    :goto_34
    if-eqz v0, :cond_2b

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is signed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->log(Ljava/lang/String;I)V

    goto :goto_2b

    .line 114
    :catch_56
    move-exception v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got IOException reading file \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->log(Ljava/lang/String;I)V

    goto :goto_34

    .line 103
    :cond_7b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "The file attribute must be set."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->file:Ljava/io/File;

    .line 52
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/IsSigned;->name:Ljava/lang/String;

    .line 60
    return-void
.end method
