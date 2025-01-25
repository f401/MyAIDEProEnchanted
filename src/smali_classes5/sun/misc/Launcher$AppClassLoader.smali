.class Lsun/misc/Launcher$AppClassLoader;
.super Ljava/net/URLClassLoader;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppClassLoader"
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 250
    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V
    .registers 4

    .line 279
    invoke-static {}, Lsun/misc/Launcher;->access$100()Ljava/net/URLStreamHandlerFactory;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    .line 280
    return-void
.end method

.method private appendToClassPathForInstrumentation(Ljava/lang/String;)V
    .registers 3

    .line 315
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lsun/misc/Launcher;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/net/URLClassLoader;->addURL(Ljava/net/URL;)V

    .line 319
    return-void
.end method

.method public static getAppClassLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const-string v0, "java.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    if-nez v1, :cond_17

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    .line 265
    :goto_b
    new-instance v2, Lsun/misc/Launcher$AppClassLoader$1;

    invoke-direct {v2, v1, v0, p0}, Lsun/misc/Launcher$AppClassLoader$1;-><init>(Ljava/lang/String;[Ljava/io/File;Ljava/lang/ClassLoader;)V

    .line 266
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Launcher$AppClassLoader;

    .line 265
    return-object v0

    .line 256
    :cond_17
    invoke-static {v1}, Lsun/misc/Launcher;->access$200(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    goto :goto_b
.end method

.method private static getContext([Ljava/io/File;)Ljava/security/AccessControlContext;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 331
    new-instance v1, Lsun/misc/PathPermissions;

    invoke-direct {v1, p0}, Lsun/misc/PathPermissions;-><init>([Ljava/io/File;)V

    .line 334
    new-instance v2, Ljava/security/ProtectionDomain;

    new-instance v3, Ljava/security/CodeSource;

    invoke-virtual {v1}, Lsun/misc/PathPermissions;->getCodeBase()Ljava/net/URL;

    move-result-object v4

    const/4 v0, 0x0

    check-cast v0, [Ljava/security/cert/Certificate;

    invoke-direct {v3, v4, v0}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    invoke-direct {v2, v3, v1}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    .line 339
    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 342
    return-object v0
.end method


# virtual methods
.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 5

    .line 303
    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "exitVM"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 305
    return-object v0
.end method

.method public loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 288
    const/16 v0, 0x2e

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 289
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    .line 290
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_18

    .line 292
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 295
    :cond_18
    invoke-super {p0, p1, p2}, Ljava/net/URLClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 287
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
