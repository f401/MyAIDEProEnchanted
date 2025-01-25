.class public final Lsun/reflect/misc/ReflectUtil;
.super Ljava/lang/Object;
.source "ReflectUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static checkPackageAccess(Ljava/lang/Class;)V
    .registers 2

    .line 119
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static checkPackageAccess(Ljava/lang/String;)V
    .registers 6

    const/16 v4, 0x2e

    .line 123
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_3a

    .line 125
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 127
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    .line 128
    const/4 v3, 0x1

    if-le v2, v3, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    :cond_2b
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 133
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    .line 137
    :cond_3a
    return-void
.end method

.method public static ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 59
    if-nez p2, :cond_1d

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 60
    and-int/lit8 v0, p3, -0x5

    or-int/lit8 v0, v0, 0x1

    .line 67
    invoke-static {p0, p1, p2, v0}, Lsun/reflect/Reflection;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V

    .line 76
    and-int/lit8 v0, v0, -0x2

    :try_start_11
    invoke-static {p0, p1, p2, v0}, Lsun/reflect/Reflection;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_14} :catch_15

    .line 103
    :cond_14
    :goto_14
    return-void

    .line 86
    :catch_15
    move-exception v0

    .line 91
    invoke-static {p0, p1}, Lsun/reflect/misc/ReflectUtil;->isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 94
    throw v0

    .line 98
    :cond_1d
    invoke-static {p0, p1, p2, p3}, Lsun/reflect/Reflection;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V

    goto :goto_14
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static isPackageAccessible(Ljava/lang/Class;)Z
    .registers 2

    .line 141
    :try_start_0
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    .line 144
    const/4 v0, 0x1

    :goto_4
    return v0

    .line 142
    :catch_5
    move-exception v0

    .line 143
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static isSubclassOf(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 3

    .line 108
    :goto_0
    if-eqz p0, :cond_b

    .line 109
    if-ne p0, p1, :cond_6

    .line 110
    const/4 v0, 0x1

    .line 114
    :goto_5
    return v0

    .line 112
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 114
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
