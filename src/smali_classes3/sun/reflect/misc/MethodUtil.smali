.class public final Lsun/reflect/misc/MethodUtil;
.super Ljava/security/SecureClassLoader;
.source "MethodUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/reflect/misc/MethodUtil$Signature;
    }
.end annotation


# static fields
.field private static MISC_PKG:Ljava/lang/String;

.field private static TRAMPOLINE:Ljava/lang/String;

.field private static bounce:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    const-string v0, "sun.reflect.misc."

    sput-object v0, Lsun/reflect/misc/MethodUtil;->MISC_PKG:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsun/reflect/misc/MethodUtil;->MISC_PKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Trampoline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/reflect/misc/MethodUtil;->TRAMPOLINE:Ljava/lang/String;

    .line 62
    invoke-static {}, Lsun/reflect/misc/MethodUtil;->getTrampoline()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lsun/reflect/misc/MethodUtil;->bounce:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    .line 66
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .registers 1

    .line 59
    invoke-static {}, Lsun/reflect/misc/MethodUtil;->getTrampolineClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static addMethod(Ljava/util/Map;Ljava/lang/reflect/Method;)V
    .registers 4

    .line 180
    new-instance v1, Lsun/reflect/misc/MethodUtil$Signature;

    invoke-direct {v1, p1}, Lsun/reflect/misc/MethodUtil$Signature;-><init>(Ljava/lang/reflect/Method;)V

    .line 181
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 188
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private defineClass(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Class;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 350
    invoke-static {p2}, Lsun/reflect/misc/MethodUtil;->getBytes(Ljava/net/URL;)[B

    move-result-object v2

    .line 351
    new-instance v5, Ljava/security/CodeSource;

    move-object v0, v1

    check-cast v0, [Ljava/security/cert/Certificate;

    invoke-direct {v5, v1, v0}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    .line 352
    sget-object v0, Lsun/reflect/misc/MethodUtil;->TRAMPOLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v3, 0x0

    array-length v4, v2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/reflect/misc/MethodUtil;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 353
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodUtil: bad name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getBytes(Ljava/net/URL;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 364
    instance-of v0, v1, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 365
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 366
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 367
    const/16 v2, 0x190

    if-ge v0, v2, :cond_1

    .line 371
    :cond_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    .line 372
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 376
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v2, v0, v1}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 378
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 379
    return-object v0

    .line 368
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "open HTTP connection failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 379
    throw v0
.end method

.method private static getInterfaceMethods(Ljava/lang/Class;Ljava/util/Map;)V
    .registers 6

    .line 107
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 108
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 109
    aget-object v2, v1, v0

    .line 110
    invoke-static {v2, p1}, Lsun/reflect/misc/MethodUtil;->getInternalPublicMethods(Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v3

    .line 111
    if-nez v3, :cond_0

    .line 112
    invoke-static {v2, p1}, Lsun/reflect/misc/MethodUtil;->getInterfaceMethods(Ljava/lang/Class;Ljava/util/Map;)V

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method private static getInternalPublicMethods(Ljava/lang/Class;Ljava/util/Map;)Z
    .registers 7

    const/4 v1, 0x0

    .line 122
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v1

    .line 132
    :cond_1
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->isPackageAccessible(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 139
    const/4 v2, 0x1

    move v0, v1

    .line 148
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_6

    .line 149
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 150
    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 156
    :goto_2
    if-eqz v0, :cond_3

    .line 161
    :goto_3
    array-length v2, v3

    if-ge v1, v2, :cond_5

    .line 162
    aget-object v2, v3, v1

    invoke-static {p1, v2}, Lsun/reflect/misc/MethodUtil;->addMethod(Ljava/util/Map;Ljava/lang/reflect/Method;)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 148
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_3
    :goto_4
    array-length v2, v3

    if-ge v1, v2, :cond_5

    .line 170
    aget-object v2, v3, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 171
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 172
    aget-object v2, v3, v1

    invoke-static {p1, v2}, Lsun/reflect/misc/MethodUtil;->addMethod(Ljava/util/Map;Ljava/lang/reflect/Method;)V

    .line 169
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v0

    .line 176
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 71
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 2

    .line 75
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .registers 3

    .line 87
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    :goto_1
    if-eqz p0, :cond_1

    .line 92
    invoke-static {p0, v0}, Lsun/reflect/misc/MethodUtil;->getInternalPublicMethods(Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 99
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {p0, v0}, Lsun/reflect/misc/MethodUtil;->getInterfaceMethods(Ljava/lang/Class;Ljava/util/Map;)V

    .line 97
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1
.end method

.method private static getTrampoline()Ljava/lang/reflect/Method;
    .registers 2

    .line 281
    :try_start_0
    new-instance v0, Lsun/reflect/misc/MethodUtil$1;

    invoke-direct {v0}, Lsun/reflect/misc/MethodUtil$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    return-object v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "bouncer cannot be found"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getTrampolineClass()Ljava/lang/Class;
    .registers 3

    .line 393
    :try_start_0
    sget-object v0, Lsun/reflect/misc/MethodUtil;->TRAMPOLINE:Ljava/lang/String;

    new-instance v1, Lsun/reflect/misc/MethodUtil;

    invoke-direct {v1}, Lsun/reflect/misc/MethodUtil;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    .line 394
    :catch_0
    move-exception v0

    .line 396
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/security/AccessController;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 255
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 259
    :try_start_0
    sget-object v0, Lsun/reflect/misc/MethodUtil;->bounce:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 274
    :catch_0
    move-exception v0

    .line 276
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Unexpected invocation error"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 260
    :catch_1
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 263
    instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;

    if-nez v1, :cond_3

    .line 265
    instance-of v1, v0, Ljava/lang/IllegalAccessException;

    if-nez v1, :cond_2

    .line 267
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_1

    .line 269
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 270
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Unexpected invocation error"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 268
    :cond_1
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 266
    :cond_2
    check-cast v0, Ljava/lang/IllegalAccessException;

    throw v0

    .line 264
    :cond_3
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    throw v0

    .line 256
    :cond_4
    new-instance v0, Ljava/lang/reflect/InvocationTargetException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "invocation not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 329
    sget-object v0, Lsun/reflect/misc/MethodUtil;->MISC_PKG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v0}, Lsun/reflect/misc/MethodUtil;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    .line 336
    :try_start_0
    invoke-direct {p0, p1, v0}, Lsun/reflect/misc/MethodUtil;->defineClass(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Ljava/lang/ClassNotFoundException;

    invoke-direct {v1, p1, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .registers 4

    .line 386
    invoke-super {p0, p1}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v0

    .line 387
    new-instance v1, Ljava/security/AllPermission;

    invoke-direct {v1}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v0, v1}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 388
    return-object v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 307
    :try_start_0
    invoke-static {p1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0, p1}, Lsun/reflect/misc/MethodUtil;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 309
    if-nez v0, :cond_0

    .line 311
    :try_start_1
    invoke-virtual {p0, p1}, Lsun/reflect/misc/MethodUtil;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 315
    :goto_0
    if-nez v0, :cond_0

    .line 316
    :try_start_2
    invoke-virtual {p0}, Lsun/reflect/misc/MethodUtil;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 319
    :cond_0
    if-eqz p2, :cond_1

    .line 320
    invoke-virtual {p0, v0}, Lsun/reflect/misc/MethodUtil;->resolveClass(Ljava/lang/Class;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    :cond_1
    monitor-exit p0

    return-object v0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 312
    :catch_0
    move-exception v1

    goto :goto_0
.end method
