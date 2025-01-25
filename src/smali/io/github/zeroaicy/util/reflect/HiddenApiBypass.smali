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
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 25
    :try_start_0
    invoke-static {}, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->initializedFromEirv()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 26
    invoke-static {}, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->initializedFromZeroAicy()Z

    move-result v0

    .line 27
    const-string v2, "HiddenApiBypass initializedFromZeroAicy"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_26

    .line 30
    :cond_1a
    const-string v0, "HiddenApiBypass initializedFromEirv OK"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    :goto_26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->signaturePrefixes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addHiddenApiExemptions([Ljava/lang/String;)Z
    .registers 2

    .line 134
    sget-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->signaturePrefixes:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 136
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    invoke-static {p0}, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptions([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static clearHiddenApiExemptions()Z
    .registers 1

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
    .registers 28

    .line 60
    const-string v0, "dalvik.system.VMRuntime"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v1, v2, :cond_bf

    .line 63
    :try_start_9
    invoke-static {}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getUnsafe()Lio/github/zeroaicy/util/reflect/UnsafeX;

    move-result-object v1

    .line 67
    const-class v2, Ljava/lang/Compiler;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_b7

    .line 69
    const/4 v10, 0x0

    aget-object v11, v2, v10

    .line 70
    aget-object v2, v2, v3

    .line 71
    const-wide/16 v4, 0x18

    :try_start_1a
    invoke-virtual {v1, v2, v4, v5}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-virtual {v1, v11, v4, v5}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    .line 73
    invoke-virtual {v1}, Lio/github/zeroaicy/util/reflect/UnsafeX;->addressSize()I

    move-result v2

    .line 75
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-wide/16 v5, 0x30

    invoke-virtual {v1, v4, v5, v6}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_39

    .line 77
    invoke-virtual {v1, v8, v9}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getLong(J)J

    move-result-wide v4

    goto :goto_3e

    :cond_39
    invoke-virtual {v1, v8, v9}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getInt(J)I

    move-result v4
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_b7

    int-to-long v4, v4

    :goto_3e
    move-wide/from16 v16, v4

    int-to-long v6, v2

    const-wide/16 v4, 0x0

    move-wide/from16 v18, v4

    move-wide/from16 v20, v18

    .line 81
    :goto_47
    const-string v2, "setHiddenApiExemptions"

    const-string v5, "getRuntime"

    cmp-long v4, v16, v18

    if-lez v4, :cond_99

    sub-long v22, v12, v14

    mul-long v22, v22, v18

    add-long v24, v8, v6

    add-long v22, v22, v24

    .line 83
    const-wide/16 v24, 0x18

    move-object v4, v1

    move-object v10, v5

    move-object v5, v11

    move-wide/from16 v26, v6

    move-wide/from16 v6, v24

    move-wide/from16 v24, v8

    move-wide/from16 v8, v22

    :try_start_64
    invoke-virtual/range {v4 .. v9}, Lio/github/zeroaicy/util/reflect/UnsafeX;->putLong(Ljava/lang/Object;JJ)V

    .line 84
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x1

    if-nez v5, :cond_7a

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    goto :goto_91

    :cond_7a
    const-wide/16 v4, 0x4

    add-long v4, v22, v4

    .line 91
    invoke-virtual {v1, v4, v5}, Lio/github/zeroaicy/util/reflect/UnsafeX;->getInt(J)I

    move-result v8

    .line 93
    const/high16 v9, 0x10000000

    or-int/2addr v8, v9

    invoke-virtual {v1, v4, v5, v8}, Lio/github/zeroaicy/util/reflect/UnsafeX;->putInt(JI)V

    add-long v20, v20, v6

    const-wide/16 v4, 0x2

    cmp-long v8, v20, v4

    if-nez v8, :cond_91

    goto :goto_9a

    :cond_91
    :goto_91
    add-long v18, v18, v6

    move-wide/from16 v8, v24

    move-wide/from16 v6, v26

    const/4 v10, 0x0

    goto :goto_47

    .line 81
    :cond_99
    move-object v10, v5

    .line 99
    :goto_9a
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 103
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptionsMethod:Ljava/lang/reflect/Method;

    .line 104
    invoke-virtual {v4, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->sVmRuntime:Ljava/lang/Object;
    :try_end_b6
    .catchall {:try_start_64 .. :try_end_b6} :catchall_b7

    goto :goto_bf

    :catchall_b7
    move-exception v0

    .line 107
    const-string v1, "HiddenApiBypass"

    const-string v2, "initializedFromEirv"

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_bf
    :goto_bf
    return v3
.end method

.method private static initializedFromZeroAicy()Z
    .registers 9

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/4 v2, 0x1

    if-lt v0, v1, :cond_66

    .line 41
    const/4 v0, 0x0

    :try_start_8
    const-class v1, Ljava/lang/Class;

    const-string v3, "forName"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 42
    const-class v3, Ljava/lang/Class;

    const-string v4, "getDeclaredMethod"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v0

    const-class v7, [Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 44
    new-array v4, v2, [Ljava/lang/Object;

    const-string v6, "dalvik.system.VMRuntime"

    aput-object v6, v4, v0

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 45
    new-array v4, v5, [Ljava/lang/Object;

    const-string v7, "getRuntime"

    aput-object v7, v4, v0

    aput-object v6, v4, v2

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 46
    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "setHiddenApiExemptions"

    aput-object v7, v5, v0

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, [Ljava/lang/String;

    aput-object v8, v7, v0

    aput-object v7, v5, v2

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    sput-object v1, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptionsMethod:Ljava/lang/reflect/Method;

    .line 47
    invoke-virtual {v4, v6, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->sVmRuntime:Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_8 .. :try_end_60} :catchall_61

    return v0

    :catchall_61
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0

    :cond_66
    return v2
.end method

.method public static varargs setHiddenApiExemptions([Ljava/lang/String;)Z
    .registers 6

    .line 115
    sget-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->sVmRuntime:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    sget-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptionsMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    goto :goto_27

    .line 118
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-lt v0, v2, :cond_26

    .line 120
    :try_start_11
    sget-object v0, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->setHiddenApiExemptionsMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lio/github/zeroaicy/util/reflect/HiddenApiBypass;->sVmRuntime:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1d

    return v3

    :catchall_1d
    move-exception p0

    .line 123
    const-string v0, "HiddenApiBypass"

    const-string v2, "setHiddenApiExemptions"

    invoke-static {v0, v2, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_26
    return v3

    :cond_27
    :goto_27
    return v1
.end method
