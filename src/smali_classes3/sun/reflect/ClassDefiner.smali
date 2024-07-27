.class Lsun/reflect/ClassDefiner;
.super Ljava/lang/Object;
.source "ClassDefiner.java"


# static fields
.field static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lsun/reflect/ClassDefiner;->unsafe:Lsun/misc/Unsafe;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static defineClass(Ljava/lang/String;[BIILjava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 12

    .line 57
    new-instance v0, Lsun/reflect/ClassDefiner$1;

    invoke-direct {v0, p4}, Lsun/reflect/ClassDefiner$1;-><init>(Ljava/lang/ClassLoader;)V

    .line 58
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ClassLoader;

    .line 63
    sget-object v0, Lsun/reflect/ClassDefiner;->unsafe:Lsun/misc/Unsafe;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lsun/misc/Unsafe;->defineClass(Ljava/lang/String;[BIILjava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
