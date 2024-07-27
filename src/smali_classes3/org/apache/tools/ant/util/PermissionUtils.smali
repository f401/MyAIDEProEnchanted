.class public Lorg/apache/tools/ant/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/util/PermissionUtils$FileType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPermissions(Ljava/util/Set;Ljava/lang/String;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-wide/16 v6, 0x4

    const-wide/16 v4, 0x2

    const-wide/16 v2, 0x1

    .line 188
    and-long v0, p2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_EXECUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    and-long v0, p2, v4

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_WRITE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_1
    and-long v0, p2, v6

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_READ"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_2
    return-void
.end method

.method public static getPermissions(Lorg/apache/tools/ant/types/Resource;Ljava/util/function/Function;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/util/function/Function",
            "<",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 158
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0, v2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributeView;->readAttributes()Ljava/nio/file/attribute/PosixFileAttributes;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 162
    :cond_0
    if-eqz p1, :cond_2

    .line 163
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    .line 165
    :cond_1
    instance-of v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    if-eqz v0, :cond_2

    .line 166
    check-cast p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getMode()I

    move-result v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/PermissionUtils;->permissionsFromMode(I)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_2
    const-class v0, Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static modeFromPermissions(Ljava/util/Set;Lorg/apache/tools/ant/util/PermissionUtils$FileType;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Lorg/apache/tools/ant/util/PermissionUtils$FileType;",
            ")I"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/apache/tools/ant/util/PermissionUtils$1;->$SwitchMap$org$apache$tools$ant$util$PermissionUtils$FileType:[I

    invoke-virtual {p1}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    const/4 v0, 0x0

    .line 59
    :goto_0
    shl-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    const-string v2, "OWNER"

    invoke-static {p0, v2}, Lorg/apache/tools/ant/util/PermissionUtils;->modeFromPermissions(Ljava/util/Set;Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    long-to-int v0, v0

    .line 74
    shl-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    const-string v2, "GROUP"

    invoke-static {p0, v2}, Lorg/apache/tools/ant/util/PermissionUtils;->modeFromPermissions(Ljava/util/Set;Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    long-to-int v0, v0

    .line 76
    shl-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    const-string v2, "OTHERS"

    invoke-static {p0, v2}, Lorg/apache/tools/ant/util/PermissionUtils;->modeFromPermissions(Ljava/util/Set;Ljava/lang/String;)J

    move-result-wide v2

    or-long/2addr v0, v2

    long-to-int v0, v0

    .line 78
    return v0

    .line 64
    :pswitch_0
    const/4 v0, 0x4

    .line 65
    goto :goto_0

    .line 61
    :pswitch_1
    const/16 v0, 0x8

    .line 62
    goto :goto_0

    .line 58
    :pswitch_2
    const/16 v0, 0xa

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static modeFromPermissions(Ljava/util/Set;Ljava/lang/String;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 173
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_READ"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    .line 177
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_WRITE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 180
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_EXECUTE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/attribute/PosixFilePermission;->valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 181
    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    .line 183
    :cond_2
    return-wide v0
.end method

.method public static permissionsFromMode(I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation

    .line 88
    const-class v0, Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 89
    const-string v1, "OTHERS"

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Lorg/apache/tools/ant/util/PermissionUtils;->addPermissions(Ljava/util/Set;Ljava/lang/String;J)V

    .line 90
    const-string v1, "GROUP"

    shr-int/lit8 v2, p0, 0x3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/tools/ant/util/PermissionUtils;->addPermissions(Ljava/util/Set;Ljava/lang/String;J)V

    .line 91
    const-string v1, "OWNER"

    shr-int/lit8 v2, p0, 0x6

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/tools/ant/util/PermissionUtils;->addPermissions(Ljava/util/Set;Ljava/lang/String;J)V

    .line 92
    return-object v0
.end method

.method public static setPermissions(Lorg/apache/tools/ant/types/Resource;Ljava/util/Set;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/Resource;",
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    .line 117
    if-eqz v0, :cond_2

    .line 118
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 119
    const-class v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0, v2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFileAttributeView;

    .line 121
    if-eqz v0, :cond_1

    .line 122
    invoke-interface {v0, p1}, Ljava/nio/file/attribute/PosixFileAttributeView;->setPermissions(Ljava/util/Set;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    if-eqz p2, :cond_0

    .line 124
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_2
    instance-of v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 127
    check-cast v0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    .line 128
    invoke-static {p0}, Lorg/apache/tools/ant/util/PermissionUtils$FileType;->of(Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/util/PermissionUtils$FileType;

    move-result-object v1

    .line 127
    invoke-static {p1, v1}, Lorg/apache/tools/ant/util/PermissionUtils;->modeFromPermissions(Ljava/util/Set;Lorg/apache/tools/ant/util/PermissionUtils$FileType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->setMode(I)V

    goto :goto_0
.end method
