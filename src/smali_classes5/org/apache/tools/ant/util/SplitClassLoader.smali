.class public final Lorg/apache/tools/ant/util/SplitClassLoader;
.super Lorg/apache/tools/ant/AntClassLoader;
.source "SplitClassLoader.java"


# instance fields
.field private final splitClasses:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/types/Path;Lorg/apache/tools/ant/Project;[Ljava/lang/String;)V
    .registers 6

    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p2, v0}, Lorg/apache/tools/ant/AntClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Path;Z)V

    .line 43
    iput-object p4, p0, Lorg/apache/tools/ant/util/SplitClassLoader;->splitClasses:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method private isSplit(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    .line 66
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lorg/apache/tools/ant/util/SplitClassLoader;->splitClasses:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_11
    if-ge v1, v4, :cond_33

    aget-object v5, v3, v1

    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x24

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 70
    :cond_32
    const/4 v0, 0x1

    .line 73
    :cond_33
    return v0

    .line 67
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 51
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/SplitClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result-object v0

    .line 52
    if-eqz v0, :cond_9

    .line 53
    monitor-exit p0

    .line 62
    :goto_8
    return-object v0

    .line 55
    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/util/SplitClassLoader;->isSplit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 56
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/SplitClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    if-eqz p2, :cond_18

    .line 58
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/SplitClassLoader;->resolveClass(Ljava/lang/Class;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_20

    .line 60
    :cond_18
    monitor-exit p0

    goto :goto_8

    .line 62
    :cond_1a
    :try_start_1a
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/AntClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_20

    move-result-object v0

    monitor-exit p0

    goto :goto_8

    .line 50
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
