.class Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/BundleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BundleCompatBaseImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatBaseImpl"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 9

    const/4 v1, 0x0

    const/4 v6, 0x1

    sget-boolean v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    if-nez v0, :cond_1e

    :try_start_6
    const-class v0, Landroid/os/Bundle;

    const-string v2, "getIBinder"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1c} :catch_2f

    :goto_1c
    sput-boolean v6, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    :cond_1e
    sget-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_42

    const/4 v2, 0x1

    :try_start_23
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_2e} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_2e} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_2e} :catch_46

    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    const-string v2, "BundleCompatBaseImpl"

    const-string v3, "Failed to retrieve getIBinder method"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catch_38
    move-exception v0

    :goto_39
    const-string v2, "BundleCompatBaseImpl"

    const-string v3, "Failed to invoke getIBinder via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v1, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    :cond_42
    move-object v0, v1

    goto :goto_2e

    :catch_44
    move-exception v0

    goto :goto_39

    :catch_46
    move-exception v0

    goto :goto_39
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 9

    const/4 v5, 0x1

    sget-boolean v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    if-nez v0, :cond_22

    :try_start_5
    const-class v0, Landroid/os/Bundle;

    const-string v1, "putIBinder"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_20} :catch_33

    :goto_20
    sput-boolean v5, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    :cond_22
    sget-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_32

    const/4 v1, 0x2

    :try_start_27
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_32} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_32} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_32} :catch_4a

    :cond_32
    :goto_32
    return-void

    :catch_33
    move-exception v0

    const-string v1, "BundleCompatBaseImpl"

    const-string v2, "Failed to retrieve putIBinder method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :catch_3c
    move-exception v0

    :goto_3d
    const-string v1, "BundleCompatBaseImpl"

    const-string v2, "Failed to invoke putIBinder via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    sput-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_32

    :catch_48
    move-exception v0

    goto :goto_3d

    :catch_4a
    move-exception v0

    goto :goto_3d
.end method
