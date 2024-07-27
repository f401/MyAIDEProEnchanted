.class public Lorg/apache/tools/ant/types/selectors/OwnedBySelector;
.super Ljava/lang/Object;
.source "OwnedBySelector.java"

# interfaces
.implements Lorg/apache/tools/ant/types/selectors/FileSelector;


# instance fields
.field private followSymlinks:Z

.field private owner:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->followSymlinks:Z

    return-void
.end method


# virtual methods
.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->owner:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 67
    if-eqz p3, :cond_1

    .line 69
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->followSymlinks:Z

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v2

    .line 71
    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->owner:Ljava/lang/String;

    invoke-interface {v2}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    :goto_1
    return v0

    .line 70
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/LinkOption;

    const/4 v4, 0x0

    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    :cond_1
    :goto_2
    move v0, v1

    .line 76
    goto :goto_1

    .line 65
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the owner attribute is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    move v0, v1

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
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->followSymlinks:Z

    .line 60
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/OwnedBySelector;->owner:Ljava/lang/String;

    .line 52
    return-void
.end method
