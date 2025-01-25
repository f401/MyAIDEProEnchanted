.class Lsun/reflect/ClassDefiner$1;
.super Ljava/lang/Object;
.source "ClassDefiner.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/reflect/ClassDefiner;->defineClass(Ljava/lang/String;[BIILjava/lang/ClassLoader;)Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$parentClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lsun/reflect/ClassDefiner$1;->val$parentClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    .line 60
    new-instance v0, Lsun/reflect/DelegatingClassLoader;

    iget-object v1, p0, Lsun/reflect/ClassDefiner$1;->val$parentClassLoader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Lsun/reflect/DelegatingClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method
