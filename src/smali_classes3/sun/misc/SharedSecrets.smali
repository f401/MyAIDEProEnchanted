.class public Lsun/misc/SharedSecrets;
.super Ljava/lang/Object;
.source "SharedSecrets.java"


# static fields
.field private static javaIOAccess:Lsun/misc/JavaIOAccess;

.field private static javaIODeleteOnExitAccess:Lsun/misc/JavaIODeleteOnExitAccess;

.field private static javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

.field private static javaLangAccess:Lsun/misc/JavaLangAccess;

.field private static javaNetAccess:Lsun/misc/JavaNetAccess;

.field private static javaSecurityProtectionDomainAccess:Lsun/misc/JavaSecurityProtectionDomainAccess;

.field private static javaUtilJarAccess:Lsun/misc/JavaUtilJarAccess;

.field private static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/misc/SharedSecrets;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJavaIOAccess()Lsun/misc/JavaIOAccess;
    .registers 1

    .line 89
    sget-object v0, Lsun/misc/SharedSecrets;->javaIOAccess:Lsun/misc/JavaIOAccess;

    .line 92
    return-object v0
.end method

.method public static getJavaIODeleteOnExitAccess()Lsun/misc/JavaIODeleteOnExitAccess;
    .registers 2

    .line 100
    sget-object v0, Lsun/misc/SharedSecrets;->javaIODeleteOnExitAccess:Lsun/misc/JavaIODeleteOnExitAccess;

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lsun/misc/SharedSecrets;->unsafe:Lsun/misc/Unsafe;

    const-class v1, Ljava/io/File;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 103
    :cond_0
    sget-object v0, Lsun/misc/SharedSecrets;->javaIODeleteOnExitAccess:Lsun/misc/JavaIODeleteOnExitAccess;

    return-object v0
.end method

.method public static getJavaIOFileDescriptorAccess()Lsun/misc/JavaIOFileDescriptorAccess;
    .registers 2

    .line 111
    sget-object v0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lsun/misc/SharedSecrets;->unsafe:Lsun/misc/Unsafe;

    const-class v1, Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 114
    :cond_0
    sget-object v0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    return-object v0
.end method

.method public static getJavaLangAccess()Lsun/misc/JavaLangAccess;
    .registers 1

    .line 72
    sget-object v0, Lsun/misc/SharedSecrets;->javaLangAccess:Lsun/misc/JavaLangAccess;

    return-object v0
.end method

.method public static getJavaNetAccess()Lsun/misc/JavaNetAccess;
    .registers 1

    .line 80
    sget-object v0, Lsun/misc/SharedSecrets;->javaNetAccess:Lsun/misc/JavaNetAccess;

    return-object v0
.end method

.method public static getJavaSecurityProtectionDomainAccess()Lsun/misc/JavaSecurityProtectionDomainAccess;
    .registers 2

    .line 124
    sget-object v0, Lsun/misc/SharedSecrets;->javaSecurityProtectionDomainAccess:Lsun/misc/JavaSecurityProtectionDomainAccess;

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lsun/misc/SharedSecrets;->unsafe:Lsun/misc/Unsafe;

    const-class v1, Ljava/security/ProtectionDomain;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 127
    :cond_0
    sget-object v0, Lsun/misc/SharedSecrets;->javaSecurityProtectionDomainAccess:Lsun/misc/JavaSecurityProtectionDomainAccess;

    return-object v0
.end method

.method public static javaUtilJarAccess()Lsun/misc/JavaUtilJarAccess;
    .registers 2

    .line 55
    sget-object v0, Lsun/misc/SharedSecrets;->javaUtilJarAccess:Lsun/misc/JavaUtilJarAccess;

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lsun/misc/SharedSecrets;->unsafe:Lsun/misc/Unsafe;

    const-class v1, Ljava/util/jar/JarFile;

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->ensureClassInitialized(Ljava/lang/Class;)V

    .line 60
    :cond_0
    sget-object v0, Lsun/misc/SharedSecrets;->javaUtilJarAccess:Lsun/misc/JavaUtilJarAccess;

    return-object v0
.end method

.method public static setJavaIOAccess(Lsun/misc/JavaIOAccess;)V
    .registers 1

    .line 84
    sput-object p0, Lsun/misc/SharedSecrets;->javaIOAccess:Lsun/misc/JavaIOAccess;

    .line 85
    return-void
.end method

.method public static setJavaIODeleteOnExitAccess(Lsun/misc/JavaIODeleteOnExitAccess;)V
    .registers 1

    .line 96
    sput-object p0, Lsun/misc/SharedSecrets;->javaIODeleteOnExitAccess:Lsun/misc/JavaIODeleteOnExitAccess;

    .line 97
    return-void
.end method

.method public static setJavaIOFileDescriptorAccess(Lsun/misc/JavaIOFileDescriptorAccess;)V
    .registers 1

    .line 107
    sput-object p0, Lsun/misc/SharedSecrets;->javaIOFileDescriptorAccess:Lsun/misc/JavaIOFileDescriptorAccess;

    .line 108
    return-void
.end method

.method public static setJavaLangAccess(Lsun/misc/JavaLangAccess;)V
    .registers 1

    .line 68
    sput-object p0, Lsun/misc/SharedSecrets;->javaLangAccess:Lsun/misc/JavaLangAccess;

    .line 69
    return-void
.end method

.method public static setJavaNetAccess(Lsun/misc/JavaNetAccess;)V
    .registers 1

    .line 76
    sput-object p0, Lsun/misc/SharedSecrets;->javaNetAccess:Lsun/misc/JavaNetAccess;

    .line 77
    return-void
.end method

.method public static setJavaSecurityProtectionDomainAccess(Lsun/misc/JavaSecurityProtectionDomainAccess;)V
    .registers 1

    .line 119
    sput-object p0, Lsun/misc/SharedSecrets;->javaSecurityProtectionDomainAccess:Lsun/misc/JavaSecurityProtectionDomainAccess;

    .line 120
    return-void
.end method

.method public static setJavaUtilJarAccess(Lsun/misc/JavaUtilJarAccess;)V
    .registers 1

    .line 64
    sput-object p0, Lsun/misc/SharedSecrets;->javaUtilJarAccess:Lsun/misc/JavaUtilJarAccess;

    .line 65
    return-void
.end method
