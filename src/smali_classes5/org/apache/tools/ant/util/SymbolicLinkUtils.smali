.class public Lorg/apache/tools/ant/util/SymbolicLinkUtils;
.super Ljava/lang/Object;
.source "SymbolicLinkUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final PRIMARY_INSTANCE:Lorg/apache/tools/ant/util/SymbolicLinkUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 45
    new-instance v0, Lorg/apache/tools/ant/util/SymbolicLinkUtils;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/SymbolicLinkUtils;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->PRIMARY_INSTANCE:Lorg/apache/tools/ant/util/SymbolicLinkUtils;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getSymbolicLinkUtils()Lorg/apache/tools/ant/util/SymbolicLinkUtils;
    .registers 1

    .line 55
    sget-object v0, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->PRIMARY_INSTANCE:Lorg/apache/tools/ant/util/SymbolicLinkUtils;

    return-object v0
.end method

.method static synthetic lambda$isDanglingSymbolicLink$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 182
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deleteSymbolicLink(Ljava/io/File;Lorg/apache/tools/ant/Task;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 217
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->isDanglingSymbolicLink(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 296
    :cond_e
    :goto_e
    return-void

    .line 219
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to remove dangling symbolic link "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_26
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 230
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v8

    .line 241
    if-eqz p2, :cond_42

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 244
    :cond_42
    if-nez p2, :cond_b8

    const/4 v1, 0x0

    .line 245
    :goto_45
    sget-object v0, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    .line 246
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 245
    const-string v2, "symlink"

    const-string v3, ".tmp"

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/tools/ant/util/FileUtils;->createTempFile(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;ZZ)Ljava/io/File;

    move-result-object v2

    .line 248
    invoke-virtual {v0, v8, p1}, Lorg/apache/tools/ant/util/FileUtils;->isLeadingPath(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 251
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0, v8, p1}, Lorg/apache/tools/ant/util/FileUtils;->removeLeadingPath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v1

    .line 256
    :cond_64
    :try_start_64
    invoke-virtual {v0, v8, v2}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_e3
    .catchall {:try_start_64 .. :try_end_67} :catchall_107

    .line 265
    :try_start_67
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_d9

    move-result v1

    if-eqz v1, :cond_bd

    .line 278
    :try_start_6d
    invoke-virtual {v0, v2, v8}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_e

    .line 279
    :catch_71
    move-exception v0

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t return resource "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to its original name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n THE RESOURCE\'S NAME ON DISK HAS BEEN CHANGED BY THIS ERROR!\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_a6
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rm"

    aput-object v1, v0, v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p2, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->runCommand(Lorg/apache/tools/ant/Task;[Ljava/lang/String;)V

    goto/16 :goto_e

    .line 244
    :cond_b8
    invoke-virtual {p2}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    goto :goto_45

    .line 268
    :cond_bd
    :try_start_bd
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t delete symlink: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (was it a real file? is this not a UNIX system?)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d9
    .catchall {:try_start_bd .. :try_end_d9} :catchall_d9

    .line 275
    :catchall_d9
    move-exception v0

    move v5, v7

    :goto_db
    if-eqz v5, :cond_e2

    .line 278
    :try_start_dd
    sget-object v1, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v1, v2, v8}, Lorg/apache/tools/ant/util/FileUtils;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e2} :catch_109

    .line 295
    :cond_e2
    :goto_e2
    throw v0

    .line 261
    :catch_e3
    move-exception v0

    .line 262
    :try_start_e4
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t rename resource when attempting to delete \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'.  Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_107
    .catchall {:try_start_e4 .. :try_end_107} :catchall_107

    .line 275
    :catchall_107
    move-exception v0

    goto :goto_db

    .line 279
    :catch_109
    move-exception v1

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t return resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to its original name: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Reason: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n THE RESOURCE\'S NAME ON DISK HAS BEEN CHANGED BY THIS ERROR!\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_e2

    .line 231
    :cond_13e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such symbolic link: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isDanglingSymbolicLink(Ljava/io/File;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->isDanglingSymbolicLink(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDanglingSymbolicLink(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 179
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 182
    new-instance v2, Lorg/apache/tools/ant/util/SymbolicLinkUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/util/SymbolicLinkUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_1f

    array-length v1, v1

    if-lez v1, :cond_1f

    const/4 v0, 0x1

    .line 185
    :cond_1f
    return v0
.end method

.method public isDanglingSymbolicLink(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->isDanglingSymbolicLink(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public isSymbolicLink(Ljava/io/File;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->isSymbolicLink(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSymbolicLink(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    if-eqz p1, :cond_1a

    .line 112
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_b
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 113
    :cond_1a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public isSymbolicLink(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/util/SymbolicLinkUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
