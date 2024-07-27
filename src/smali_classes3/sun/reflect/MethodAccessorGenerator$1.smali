.class Lsun/reflect/MethodAccessorGenerator$1;
.super Ljava/lang/Object;
.source "MethodAccessorGenerator.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/reflect/MethodAccessorGenerator;->generate(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;IZZLjava/lang/Class;)Lsun/reflect/MagicAccessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lsun/reflect/MethodAccessorGenerator;

.field final val$bytes:[B

.field final val$declaringClass:Ljava/lang/Class;

.field final val$generatedName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsun/reflect/MethodAccessorGenerator;Ljava/lang/String;[BLjava/lang/Class;)V
    .registers 5

    .line 396
    iput-object p1, p0, Lsun/reflect/MethodAccessorGenerator$1;->this$0:Lsun/reflect/MethodAccessorGenerator;

    iput-object p2, p0, Lsun/reflect/MethodAccessorGenerator$1;->val$generatedName:Ljava/lang/String;

    iput-object p3, p0, Lsun/reflect/MethodAccessorGenerator$1;->val$bytes:[B

    iput-object p4, p0, Lsun/reflect/MethodAccessorGenerator$1;->val$declaringClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 6

    .line 399
    :try_start_0
    iget-object v0, p0, Lsun/reflect/MethodAccessorGenerator$1;->val$generatedName:Ljava/lang/String;

    iget-object v1, p0, Lsun/reflect/MethodAccessorGenerator$1;->val$bytes:[B

    iget-object v2, p0, Lsun/reflect/MethodAccessorGenerator$1;->val$bytes:[B

    array-length v2, v2

    iget-object v3, p0, Lsun/reflect/MethodAccessorGenerator$1;->val$declaringClass:Ljava/lang/Class;

    .line 404
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 400
    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lsun/reflect/ClassDefiner;->defineClass(Ljava/lang/String;[BIILjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 399
    return-object v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    .line 410
    invoke-virtual {v1, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InternalError;

    throw v0

    .line 405
    :catch_1
    move-exception v0

    .line 406
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    .line 407
    invoke-virtual {v1, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/InternalError;

    throw v0
.end method
