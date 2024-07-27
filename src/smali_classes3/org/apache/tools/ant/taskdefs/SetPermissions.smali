.class public Lorg/apache/tools/ant/taskdefs/SetPermissions;
.super Lorg/apache/tools/ant/Task;
.source "SetPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;
    }
.end annotation


# instance fields
.field private failonerror:Z

.field private nonPosixMode:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

.field private final permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;"
        }
    .end annotation
.end field

.field private resources:Lorg/apache/tools/ant/types/resources/Resources;


# direct methods
.method public static synthetic $r8$lambda$X14yI0DKSIkku-nNGcfd2Se_NAM(Lorg/apache/tools/ant/taskdefs/SetPermissions;Ljava/nio/file/Path;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->posixPermissionsNotSupported(Ljava/nio/file/Path;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 55
    const-class v0, Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->failonerror:Z

    .line 59
    sget-object v0, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->fail:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->nonPosixMode:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    return-void
.end method

.method private isWritable()Z
    .registers 3

    .line 226
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 227
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    .line 228
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$setPermissions$0(Ljava/lang/String;)Z
    .registers 2

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$setPermissions$1(Ljava/lang/String;)Ljava/nio/file/attribute/PosixFilePermission;
    .registers 2

    .line 91
    const-class v0, Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/PosixFilePermission;

    return-object v0
.end method

.method private varargs maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7

    .line 170
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->failonerror:Z

    if-eqz v1, :cond_1

    .line 172
    instance-of v1, p1, Lorg/apache/tools/ant/BuildException;

    if-eqz v1, :cond_0

    .line 173
    check-cast p1, Lorg/apache/tools/ant/BuildException;

    throw p1

    .line 175
    :cond_0
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 177
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->log(Ljava/lang/String;I)V

    .line 178
    return-void
.end method

.method private posixPermissionsNotSupported(Ljava/nio/file/Path;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    const-string v0, "the associated path \'%s\' does not support the PosixFileAttributeView"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 184
    sget-object v1, Lorg/apache/tools/ant/taskdefs/SetPermissions$1;->$SwitchMap$org$apache$tools$ant$taskdefs$SetPermissions$NonPosixMode:[I

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->nonPosixMode:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 194
    :pswitch_0
    invoke-direct {p0, p1, v3}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->tryDos(Ljava/nio/file/Path;Z)V

    goto :goto_0

    .line 191
    :pswitch_1
    invoke-direct {p0, p1, v4}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->tryDos(Ljava/nio/file/Path;Z)V

    goto :goto_0

    .line 188
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 186
    :pswitch_3
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private tryDos(Ljava/nio/file/Path;Z)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 200
    const-string v0, "Falling back to DosFileAttributeView"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->log(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->isWritable()Z

    move-result v1

    .line 202
    const-class v0, Ljava/nio/file/attribute/DosFileAttributeView;

    new-array v2, v4, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0, v2}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 203
    if-eqz v0, :cond_0

    .line 205
    xor-int/lit8 v1, v1, 0x1

    :try_start_0
    invoke-interface {v0, v1}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const/4 v0, 0x0

    const-string v1, "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :catch_1
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to set permissions on \'%s\' due to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v1, v3, v5

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_0
    const-string v0, "the associated path \'%s\' does not support the DosFileAttributeView"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-nez p2, :cond_1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 219
    :cond_1
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 3

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lorg/apache/tools/ant/types/resources/Resources;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/resources/Resources;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/Resources;->add(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 138
    return-void
.end method

.method public execute()V
    .registers 11

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->resources:Lorg/apache/tools/ant/types/resources/Resources;

    if-eqz v0, :cond_1

    .line 147
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/Resources;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    move-object v1, v2

    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_1 .. :try_end_1} :catch_2

    .line 150
    :try_start_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    new-instance v4, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/SetPermissions;)V

    invoke-static {v0, v1, v4}, Lorg/apache/tools/ant/util/PermissionUtils;->setPermissions(Lorg/apache/tools/ant/types/Resource;Ljava/util/Set;Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v1, v0

    .line 154
    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    :try_start_3
    const-string v4, "Failed to set permissions on \'%s\' due to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {p0, v1, v4, v5}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    .line 158
    const-string v1, ", "

    invoke-static {v0, v1}, Lorg/apache/tools/ant/util/StringUtils;->join(Ljava/util/Collection;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v1, "some specified permissions are not of type PosixFilePermission: %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_0
    :goto_2
    return-void

    .line 163
    :catch_2
    move-exception v0

    .line 165
    invoke-virtual {v0}, Lorg/apache/tools/ant/BuildException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 159
    :catch_3
    move-exception v0

    move-object v0, v2

    .line 160
    :goto_3
    const-string v1, "the SecurityManager denies role accessUserInformation or write access for SecurityManager.checkWrite for resource \'%s\'"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-direct {p0, v2, v1, v3}, Lorg/apache/tools/ant/taskdefs/SetPermissions;->maybeThrowException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 143
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "At least one resource-collection is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method

.method public setFailOnError(Z)V
    .registers 2

    .line 115
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->failonerror:Z

    .line 116
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .registers 4

    .line 102
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 103
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/tools/ant/util/PermissionUtils;->permissionsFromMode(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 104
    return-void
.end method

.method public setNonPosixMode(Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->nonPosixMode:Lorg/apache/tools/ant/taskdefs/SetPermissions$NonPosixMode;

    .line 127
    return-void
.end method

.method public setPermissions(Ljava/lang/String;)V
    .registers 5

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/BindTargets$$ExternalSyntheticLambda1;

    .line 89
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda3;

    .line 90
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda2;

    .line 91
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SetPermissions;->permissions:Ljava/util/Set;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/taskdefs/SetPermissions$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 94
    :cond_0
    return-void
.end method
