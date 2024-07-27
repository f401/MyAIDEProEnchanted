.class Lsun/misc/PathPermissions;
.super Ljava/security/PermissionCollection;
.source "Launcher.java"


# static fields
.field private static final serialVersionUID:J = 0x70df3dab90f2e99dL


# instance fields
.field codeBase:Ljava/net/URL;

.field private path:[Ljava/io/File;

.field private perms:Ljava/security/Permissions;


# direct methods
.method constructor <init>([Ljava/io/File;)V
    .registers 3

    const/4 v0, 0x0

    .line 485
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 486
    iput-object p1, p0, Lsun/misc/PathPermissions;->path:[Ljava/io/File;

    .line 487
    iput-object v0, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;

    .line 488
    iput-object v0, p0, Lsun/misc/PathPermissions;->codeBase:Ljava/net/URL;

    .line 489
    return-void
.end method

.method static synthetic access$000(Lsun/misc/PathPermissions;)[Ljava/io/File;
    .registers 2

    .line 475
    iget-object v0, p0, Lsun/misc/PathPermissions;->path:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lsun/misc/PathPermissions;)Ljava/security/Permissions;
    .registers 2

    .line 475
    iget-object v0, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;

    return-object v0
.end method

.method private init()V
    .registers 5

    monitor-enter p0

    .line 502
    :try_start_0
    iget-object v0, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 503
    monitor-exit p0

    .line 550
    :goto_0
    return-void

    .line 505
    :cond_0
    :try_start_1
    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    iput-object v0, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;

    .line 508
    sget-object v1, Lsun/security/util/SecurityConstants;->CREATE_CLASSLOADER_PERMISSION:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 511
    iget-object v0, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;

    new-instance v1, Ljava/util/PropertyPermission;

    const-string v2, "java.*"

    const-string v3, "read"

    invoke-direct {v1, v2, v3}, Ljava/util/PropertyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 514
    new-instance v0, Lsun/misc/PathPermissions$1;

    invoke-direct {v0, p0}, Lsun/misc/PathPermissions$1;-><init>(Lsun/misc/PathPermissions;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    monitor-exit p0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .registers 4

    .line 497
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "attempt to add a permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 3

    .line 559
    iget-object v0, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;

    if-nez v0, :cond_0

    .line 560
    invoke-direct {p0}, Lsun/misc/PathPermissions;->init()V

    .line 561
    :cond_0
    iget-object v1, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;

    monitor-enter v1

    .line 562
    :try_start_0
    iget-object v0, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;

    invoke-virtual {v0}, Ljava/security/Permissions;->elements()Ljava/util/Enumeration;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCodeBase()Ljava/net/URL;
    .registers 2

    .line 493
    iget-object v0, p0, Lsun/misc/PathPermissions;->codeBase:Ljava/net/URL;

    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .registers 3

    .line 553
    iget-object v0, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;

    if-nez v0, :cond_0

    .line 554
    invoke-direct {p0}, Lsun/misc/PathPermissions;->init()V

    .line 555
    :cond_0
    iget-object v0, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;

    invoke-virtual {v0, p1}, Ljava/security/Permissions;->implies(Ljava/security/Permission;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 567
    iget-object v0, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;

    if-nez v0, :cond_0

    .line 568
    invoke-direct {p0}, Lsun/misc/PathPermissions;->init()V

    .line 569
    :cond_0
    iget-object v0, p0, Lsun/misc/PathPermissions;->perms:Ljava/security/Permissions;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
