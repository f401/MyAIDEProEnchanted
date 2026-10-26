.class public Lio/github/zeroaicy/util/reflect/HiddenApiBypass;
.super Ljava/lang/Object;
.source "HiddenApiBypass.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HiddenApiBypass"

.field private static sVmRuntime:Ljava/lang/Object;

.field private static setHiddenApiExemptionsMethod:Ljava/lang/reflect/Method;

.field private static final signaturePrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    :try_start_0
    invoke-static {}, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->initializedFromEirv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->initializedFromZeroAicy()Z

    move-result v0

    .line 27
    const-string v1, "HiddenApiBypass initializedFromZeroAicy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->signaturePrefixes:Ljava/util/Set;

    return-void

    .line 30
    :cond_0
    :try_start_1
    const-string v0, "HiddenApiBypass initializedFromEirv OK"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addHiddenApiExemptions([Ljava/lang/String;)Z
    .locals 2

    .line 134
    sget-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->signaturePrefixes:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 136
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    invoke-static {v1}, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static clearHiddenApiExemptions()Z
    .locals 1

    .line 141
    sget-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->signaturePrefixes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 142
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final initializedFromEirv()Z
    .locals 22

    .line 60
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_4

    .line 63
    :try_start_0
    invoke-static {}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getUnsafe()Lio/github/zeroaicy/util/reflect/UnsafeX;

    move-result-object v2

    .line 67
    const-class v3, Ljava/lang/Compiler;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 69
    const/4 v3, 0x0

    aget-object v3, v4, v3

    .line 70
    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 71
    const-wide/16 v6, 0x18

    :try_start_1
    invoke-virtual {v2, v4, v6, v7}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    const-wide/16 v4, 0x18

    invoke-virtual {v2, v3, v4, v5}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong(Ljava/lang/Object;J)J

    move-result-wide v16

    .line 73
    invoke-virtual {v2}, Lio/github/zeroaicy/util/reflect/UnsafeX;->addressSize()I

    move-result v6

    .line 75
    const-string v4, "dalvik.system.VMRuntime"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-wide/16 v8, 0x30

    invoke-virtual {v2, v4, v8, v9}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong(Ljava/lang/Object;J)J

    move-result-wide v18

    const/16 v4, 0x8

    if-ne v6, v4, :cond_1

    .line 77
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong(J)J

    move-result-wide v4

    move-wide v8, v4

    :goto_0
    int-to-long v0, v6

    move-wide/from16 v20, v0

    const-wide/16 v4, 0x0

    const-wide/16 v10, 0x0

    move-wide v12, v4

    .line 81
    :goto_1
    cmp-long v4, v8, v12

    if-lez v4, :cond_3

    sub-long v4, v14, v16

    mul-long/2addr v4, v12

    add-long v6, v18, v20

    add-long/2addr v6, v4

    .line 83
    const-wide/16 v4, 0x18

    invoke-virtual/range {v2 .. v7}, Lio/github/zeroaicy/util/reflect/UnsafeX;->putLong(Ljava/lang/Object;JJ)V

    .line 84
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 86
    const-string v5, "getRuntime"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "setHiddenApiExemptions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-wide v4, v10

    .line 93
    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v6, v12

    move-wide v10, v4

    move-wide v12, v6

    goto :goto_1

    .line 77
    :cond_1
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getInt(J)I

    move-result v4

    int-to-long v4, v4

    move-wide v8, v4

    goto :goto_0

    .line 86
    :cond_2
    const-wide/16 v4, 0x4

    add-long/2addr v4, v6

    .line 91
    invoke-virtual {v2, v4, v5}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getInt(J)I

    move-result v6

    .line 93
    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    invoke-virtual {v2, v4, v5, v6}, Lio/github/zeroaicy/util/reflect/UnsafeX;->putInt(JI)V

    const-wide/16 v4, 0x1

    add-long/2addr v4, v10

    const-wide/16 v6, 0x2

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 81
    :cond_3
    const-string v2, "dalvik.system.VMRuntime"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 101
    const-string v3, "getRuntime"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 103
    const-string v4, "setHiddenApiExemptions"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptionsMethod:Ljava/lang/reflect/Method;

    .line 104
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->sVmRuntime:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :cond_4
    :goto_2
    const/4 v2, 0x1

    return v2

    .line 104
    :catchall_0
    move-exception v2

    .line 107
    const-string v3, "HiddenApiBypass"

    const-string v4, "initializedFromEirv"

    invoke-static {v3, v4, v2}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static initializedFromZeroAicy()Z
    .locals 9

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    .line 41
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "forName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 42
    const-class v1, Ljava/lang/Class;

    const-string v3, "getDeclaredMethod"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 44
    const/4 v1, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "dalvik.system.VMRuntime"

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "getRuntime"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v1, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 46
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "setHiddenApiExemptions"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, [Ljava/lang/String;

    aput-object v8, v6, v7

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    sput-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptionsMethod:Ljava/lang/reflect/Method;

    .line 47
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->sVmRuntime:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 47
    :catchall_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v2

    goto :goto_0
.end method

.method public static varargs setHiddenApiExemptions([Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    sget-object v2, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->sVmRuntime:Ljava/lang/Object;

    if-eqz v2, :cond_0

    sget-object v2, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptionsMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 123
    :cond_1
    :goto_0
    return v0

    .line 118
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 120
    :try_start_0
    sget-object v2, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptionsMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->sVmRuntime:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 123
    const-string v2, "HiddenApiBypass"

    const-string v3, "setHiddenApiExemptions"

    invoke-static {v2, v3, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method
