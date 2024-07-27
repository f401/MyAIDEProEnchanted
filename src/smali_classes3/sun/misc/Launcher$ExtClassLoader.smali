.class Lsun/misc/Launcher$ExtClassLoader;
.super Ljava/net/URLClassLoader;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtClassLoader"
.end annotation


# instance fields
.field private dirs:[Ljava/io/File;


# direct methods
.method public constructor <init>([Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-static {p1}, Lsun/misc/Launcher$ExtClassLoader;->getExtURLs([Ljava/io/File;)[Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lsun/misc/Launcher;->access$100()Ljava/net/URLStreamHandlerFactory;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/net/URLStreamHandlerFactory;)V

    .line 163
    iput-object p1, p0, Lsun/misc/Launcher$ExtClassLoader;->dirs:[Ljava/io/File;

    .line 164
    return-void
.end method

.method private static getContext([Ljava/io/File;)Ljava/security/AccessControlContext;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    new-instance v1, Lsun/misc/PathPermissions;

    invoke-direct {v1, p0}, Lsun/misc/PathPermissions;-><init>([Ljava/io/File;)V

    .line 234
    new-instance v2, Ljava/security/ProtectionDomain;

    new-instance v3, Ljava/security/CodeSource;

    invoke-virtual {v1}, Lsun/misc/PathPermissions;->getCodeBase()Ljava/net/URL;

    move-result-object v4

    const/4 v0, 0x0

    check-cast v0, [Ljava/security/cert/Certificate;

    invoke-direct {v3, v4, v0}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    invoke-direct {v2, v3, v1}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    .line 239
    new-instance v0, Ljava/security/AccessControlContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/security/ProtectionDomain;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    .line 242
    return-object v0
.end method

.method public static getExtClassLoader()Lsun/misc/Launcher$ExtClassLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-static {}, Lsun/misc/Launcher$ExtClassLoader;->getExtDirs()[Ljava/io/File;

    move-result-object v0

    .line 139
    :try_start_0
    new-instance v1, Lsun/misc/Launcher$ExtClassLoader$1;

    invoke-direct {v1, v0}, Lsun/misc/Launcher$ExtClassLoader$1;-><init>([Ljava/io/File;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Launcher$ExtClassLoader;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private static getExtDirs()[Ljava/io/File;
    .registers 6

    const/4 v1, 0x0

    .line 167
    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    new-instance v2, Ljava/util/StringTokenizer;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    .line 173
    new-array v0, v3, [Ljava/io/File;

    .line 174
    :goto_0
    if-ge v1, v3, :cond_1

    .line 175
    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    new-array v0, v1, [Ljava/io/File;

    .line 180
    :cond_1
    return-object v0
.end method

.method private static getExtURLs([Ljava/io/File;)[Ljava/net/URL;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 184
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v1

    .line 185
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 186
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 187
    if-eqz v4, :cond_1

    move v2, v1

    .line 188
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 189
    aget-object v5, v4, v2

    const-string v6, "meta-index"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    new-instance v5, Ljava/io/File;

    aget-object v6, p0, v0

    aget-object v7, v4, v2

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    invoke-static {v5}, Lsun/misc/Launcher;->getFileURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/net/URL;

    .line 197
    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 198
    return-object v0
.end method


# virtual methods
.method addExtURL(Ljava/net/URL;)V
    .registers 2

    .line 155
    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->addURL(Ljava/net/URL;)V

    .line 156
    return-void
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 209
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/misc/Launcher$ExtClassLoader;->dirs:[Ljava/io/File;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 212
    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    if-eqz v2, :cond_0

    .line 214
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lsun/misc/Launcher$ExtClassLoader;->dirs:[Ljava/io/File;

    aget-object v5, v5, v0

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 225
    :goto_1
    return-object v0

    .line 220
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lsun/misc/Launcher$ExtClassLoader;->dirs:[Ljava/io/File;

    aget-object v3, v3, v0

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 210
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
