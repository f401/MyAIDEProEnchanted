.class public Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;
.super Ljava/lang/Object;
.source "PosixGroupSelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/FileSelector;


# instance fields
.field private followSymlinks:Z

.field private group:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->followSymlinks:Z

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->group:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->followSymlinks:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const-class v3, Ljava/nio/file/attribute/PosixFileAttributes;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v3, v4}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->group()Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object v0

    .line 71
    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/nio/file/attribute/GroupPrincipal;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->group:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 75
    :goto_1
    return v0

    .line 70
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const-class v3, Ljava/nio/file/attribute/PosixFileAttributes;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    const/4 v5, 0x0

    sget-object v6, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v6, v4, v5

    invoke-static {v0, v3, v4}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributes;

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->group()Ljava/nio/file/attribute/GroupPrincipal;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    move v0, v2

    .line 75
    goto :goto_1

    .line 65
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the group attribute is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public synthetic isSelected(Lorg/apache/tools/ant/types/Resource;)Z
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/tools/ant/types/selectors/FileSelector$_CC;->$default$isSelected(Lorg/apache/tools/ant/types/selectors/FileSelector;Lorg/apache/tools/ant/types/Resource;)Z

    move-result v0

    return v0
.end method

.method public setFollowSymlinks(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->followSymlinks:Z

    .line 60
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/PosixGroupSelector;->group:Ljava/lang/String;

    .line 52
    return-void
.end method
