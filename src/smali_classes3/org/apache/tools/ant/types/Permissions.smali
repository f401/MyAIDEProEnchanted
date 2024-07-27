.class public Lorg/apache/tools/ant/types/Permissions;
.super Ljava/lang/Object;
.source "Permissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/Permissions$MySM;,
        Lorg/apache/tools/ant/types/Permissions$Permission;
    }
.end annotation


# static fields
.field private static final PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private active:Z

.field private final delegateToOldSM:Z

.field private granted:Ljava/security/Permissions;

.field private final grantedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/Permissions$Permission;",
            ">;"
        }
    .end annotation
.end field

.field private origSm:Ljava/lang/SecurityManager;

.field private final revokedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/Permissions$Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/tools/ant/types/Permissions;->PARAMS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/Permissions;-><init>(Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->grantedPermissions:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->revokedPermissions:Ljava/util/List;

    .line 51
    iput-object v1, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    .line 52
    iput-object v1, p0, Lorg/apache/tools/ant/types/Permissions;->origSm:Ljava/lang/SecurityManager;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/Permissions;->active:Z

    .line 74
    iput-boolean p1, p0, Lorg/apache/tools/ant/types/Permissions;->delegateToOldSM:Z

    .line 75
    return-void
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/types/Permissions;)Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/Permissions;->active:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/tools/ant/types/Permissions;)Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/Permissions;->delegateToOldSM:Z

    return v0
.end method

.method static synthetic access$300(Lorg/apache/tools/ant/types/Permissions;)Ljava/security/Permissions;
    .registers 2

    .line 47
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/tools/ant/types/Permissions;)Ljava/lang/SecurityManager;
    .registers 2

    .line 47
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->origSm:Ljava/lang/SecurityManager;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/tools/ant/types/Permissions;)Ljava/util/List;
    .registers 2

    .line 47
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->revokedPermissions:Ljava/util/List;

    return-object v0
.end method

.method private createPermission(Lorg/apache/tools/ant/types/Permissions$Permission;)Ljava/security/Permission;
    .registers 7

    .line 155
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 156
    const-class v1, Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 157
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getName()Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getActions()Ljava/lang/String;

    move-result-object v2

    .line 159
    sget-object v3, Lorg/apache/tools/ant/types/Permissions;->PARAMS:[Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 160
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Permission;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 164
    new-instance v0, Ljava/security/UnresolvedPermission;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Permissions$Permission;->getActions()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/UnresolvedPermission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/Certificate;)V

    goto :goto_0
.end method

.method private init()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    .line 112
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->revokedPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Permissions$Permission;

    .line 113
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Permissions$Permission;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoked permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not contain a class."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->grantedPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Permissions$Permission;

    .line 118
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Permissions$Permission;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 122
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/types/Permissions;->createPermission(Lorg/apache/tools/ant/types/Permissions$Permission;)Ljava/security/Permission;

    move-result-object v0

    .line 123
    iget-object v2, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    invoke-virtual {v2, v0}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    goto :goto_0

    .line 119
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Granted permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " does not contain a class."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/net/SocketPermission;

    const-string v2, "localhost:1024-"

    const-string v3, "listen"

    invoke-direct {v1, v2, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 128
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.version"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 129
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vendor"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vendor.url"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 131
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.class.version"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 132
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "os.name"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 133
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "os.version"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "os.arch"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 135
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "file.encoding"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 136
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "file.separator"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 137
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "path.separator"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 138
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "line.separator"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.specification.version"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 140
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.specification.vendor"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 141
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.specification.name"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 142
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.specification.version"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 143
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.specification.vendor"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 144
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.specification.name"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 145
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.version"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 146
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.vendor"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 147
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->granted:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.vm.name"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 148
    return-void
.end method


# virtual methods
.method public addConfiguredGrant(Lorg/apache/tools/ant/types/Permissions$Permission;)V
    .registers 3

    .line 82
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->grantedPermissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public addConfiguredRevoke(Lorg/apache/tools/ant/types/Permissions$Permission;)V
    .registers 3

    .line 90
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->revokedPermissions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public restoreSecurityManager()V
    .registers 2

    monitor-enter p0

    .line 172
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/Permissions;->active:Z

    .line 173
    iget-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->origSm:Ljava/lang/SecurityManager;

    invoke-static {v0}, Ljava/lang/System;->setSecurityManager(Ljava/lang/SecurityManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSecurityManager()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/Permissions;->origSm:Ljava/lang/SecurityManager;

    .line 102
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Permissions;->init()V

    .line 103
    new-instance v0, Lorg/apache/tools/ant/types/Permissions$MySM;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/Permissions$MySM;-><init>(Lorg/apache/tools/ant/types/Permissions;Lorg/apache/tools/ant/types/Permissions$1;)V

    invoke-static {v0}, Ljava/lang/System;->setSecurityManager(Ljava/lang/SecurityManager;)V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/Permissions;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
