.class public Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;
.super Ljava/lang/Object;
.source "DirectoryIterator.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;


# instance fields
.field private currentIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private enumStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/util/Iterator",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->enumStack:Ljava/util/Deque;

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->getDirectoryEntries(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    .line 72
    return-void
.end method

.method private getDirectoryEntries(Ljava/io/File;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 84
    if-nez v0, :cond_b

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 87
    :goto_a
    return-object v0

    :cond_b
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public getNextClassFile()Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;
    .registers 6

    const/4 v2, 0x0

    .line 106
    move-object v1, v2

    .line 109
    :goto_2
    if-nez v1, :cond_55

    .line 110
    :try_start_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 111
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 117
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->enumStack:Ljava/util/Deque;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v3, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->getDirectoryEntries(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;

    move-object v0, v1

    :cond_2c
    :goto_2c
    move-object v1, v0

    .line 138
    goto :goto_2

    .line 124
    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_38} :catch_53

    move-result-object v3

    .line 126
    :try_start_39
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, ".class"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 130
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;-><init>()V

    .line 132
    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->read(Ljava/io/InputStream;)V
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_56

    .line 134
    :goto_4d
    if-eqz v3, :cond_2c

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_2c

    .line 145
    :catch_53
    move-exception v0

    move-object v1, v2

    .line 147
    :cond_55
    return-object v1

    .line 124
    :catchall_56
    move-exception v0

    if-eqz v3, :cond_5c

    :try_start_59
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_70

    :cond_5c
    :goto_5c
    :try_start_5c
    throw v0

    .line 139
    :cond_5d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->enumStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_55

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->enumStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/DirectoryIterator;->currentIterator:Ljava/util/Iterator;
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_6f} :catch_53

    goto :goto_2

    .line 124
    :catchall_70
    move-exception v1

    goto :goto_5c

    :cond_72
    move-object v0, v1

    goto :goto_4d
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator$_CC;->$default$iterator(Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileIterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
