.class public final synthetic Lokhttp3/ResponseBody$$ExternalSyntheticTwrCloseResource0;
.super Ljava/lang/Object;


# direct methods
.method public static synthetic m(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .registers 8

    :try_start_0
    instance-of v0, p1, Ljava/lang/AutoCloseable;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/AutoCloseable;

    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_3a

    :goto_9
    return-void

    :cond_a
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "close"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1d} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_1d} :catch_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_1d} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_1d} :catch_7e
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_a .. :try_end_1d} :catch_80
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_1d} :catch_57
    .catchall {:try_start_a .. :try_end_1d} :catchall_3a

    goto :goto_9

    :catch_1e
    move-exception v0

    :goto_1f
    :try_start_1f
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a close() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v0

    if-eqz p0, :cond_79

    :try_start_3d
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_56} :catch_7a

    :goto_56
    throw p0

    :catch_57
    move-exception v0

    :try_start_58
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :catch_5d
    move-exception v0

    :goto_5e
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to call close() on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_79
    .catchall {:try_start_58 .. :try_end_79} :catchall_3a

    :cond_79
    throw v0

    :catch_7a
    move-exception v0

    goto :goto_56

    :catch_7c
    move-exception v0

    goto :goto_1f

    :catch_7e
    move-exception v0

    goto :goto_5e

    :catch_80
    move-exception v0

    goto :goto_5e
.end method
