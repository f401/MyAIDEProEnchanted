.class Lsun/reflect/ReflectionFactory$1;
.super Ljava/lang/Object;
.source "ReflectionFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/reflect/ReflectionFactory;->checkInitted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 380
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 402
    :goto_0
    return-object v3

    .line 385
    :cond_0
    const-string v0, "sun.reflect.noInflation"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    invoke-static {v2}, Lsun/reflect/ReflectionFactory;->access$002(Z)Z

    .line 390
    :cond_1
    const-string v0, "sun.reflect.inflationThreshold"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_2

    .line 393
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lsun/reflect/ReflectionFactory;->access$102(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_2
    invoke-static {v2}, Lsun/reflect/ReflectionFactory;->access$202(Z)Z

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to parse property sun.reflect.inflationThreshold"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method
