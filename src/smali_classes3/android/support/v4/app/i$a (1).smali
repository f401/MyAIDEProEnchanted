.class Landroid/support/v4/app/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static DW:Z

.field private static FH:Ljava/lang/reflect/Method;

.field private static Hw:Z

.field private static j6:Ljava/lang/reflect/Method;


# direct methods
.method public static j6(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 9

    sget-boolean v0, Landroid/support/v4/app/i$a;->DW:Z

    const-string v1, "BundleCompatBaseImpl"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_24

    :try_start_8
    const-class v0, Landroid/os/Bundle;

    const-string v4, "getIBinder"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/i$a;->j6:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v0

    const-string v4, "Failed to retrieve getIBinder method"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    sput-boolean v3, Landroid/support/v4/app/i$a;->DW:Z

    :cond_24
    sget-object v0, Landroid/support/v4/app/i$a;->j6:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    if-eqz v0, :cond_40

    :try_start_29
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_33} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_33} :catch_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_33} :catch_34

    return-object p0

    :catch_34
    move-exception p0

    goto :goto_39

    :catch_36
    move-exception p0

    goto :goto_39

    :catch_38
    move-exception p0

    :goto_39
    const-string p1, "Failed to invoke getIBinder via reflection"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v4, Landroid/support/v4/app/i$a;->j6:Ljava/lang/reflect/Method;

    :cond_40
    return-object v4
.end method

.method public static j6(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 11

    sget-boolean v0, Landroid/support/v4/app/i$a;->Hw:Z

    const-string v1, "BundleCompatBaseImpl"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_29

    :try_start_9
    const-class v0, Landroid/os/Bundle;

    const-string v5, "putIBinder"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/i$a;->FH:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v0

    const-string v5, "Failed to retrieve putIBinder method"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    sput-boolean v4, Landroid/support/v4/app/i$a;->Hw:Z

    :cond_29
    sget-object v0, Landroid/support/v4/app/i$a;->FH:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_44

    :try_start_2d
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_36} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_36} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_36} :catch_37

    goto :goto_44

    :catch_37
    move-exception p0

    goto :goto_3c

    :catch_39
    move-exception p0

    goto :goto_3c

    :catch_3b
    move-exception p0

    :goto_3c
    const-string p1, "Failed to invoke putIBinder via reflection"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    sput-object p0, Landroid/support/v4/app/i$a;->FH:Ljava/lang/reflect/Method;

    :cond_44
    :goto_44
    return-void
.end method
