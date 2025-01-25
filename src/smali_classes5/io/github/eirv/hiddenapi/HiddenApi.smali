.class public Lio/github/eirv/hiddenapi/HiddenApi;
.super Ljava/lang/Object;
.source "HiddenApi.java"


# static fields
.field private static $assertionsDisabled:Z


# direct methods
.method static final constructor <clinit>()V
    .registers 22

    :try_start_0
    const-string v2, "io.github.eirv.hiddenapi.HiddenApi"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_43

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v2

    if-nez v2, :cond_4e

    const/4 v2, 0x1

    :goto_d
    sput-boolean v2, Lio/github/eirv/hiddenapi/HiddenApi;->$assertionsDisabled:Z

    .line 26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_a1

    .line 28
    :try_start_15
    const-string v2, "sun.misc.Unsafe"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_1a} :catch_50
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_3c

    move-result-object v2

    :try_start_1b
    const-string v3, "getUnsafe"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/misc/Unsafe;

    sget-boolean v3, Lio/github/eirv/hiddenapi/HiddenApi;->$assertionsDisabled:Z

    if-nez v3, :cond_5b

    .line 29
    if-nez v2, :cond_5b

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3c} :catch_3c

    .line 38
    :catch_3c
    move-exception v2

    .line 51
    new-instance v3, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v3, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_43
    move-exception v2

    new-instance v3, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4e
    const/4 v2, 0x0

    goto :goto_d

    .line 28
    :catch_50
    move-exception v2

    :try_start_51
    new-instance v3, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5b} :catch_3c

    .line 30
    :cond_5b
    :try_start_5b
    const-string v3, "java.lang.Compiler"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_60
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_60} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_3c

    move-result-object v3

    :try_start_61
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_3c

    move-result-object v4

    .line 31
    const/4 v3, 0x0

    aget-object v3, v4, v3

    .line 32
    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 33
    const/16 v5, 0x18

    int-to-long v6, v5

    :try_start_6e
    invoke-virtual {v2, v4, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v14

    const/16 v4, 0x18

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v16

    .line 34
    invoke-virtual {v2}, Lsun/misc/Unsafe;->addressSize()I

    move-result v6

    .line 35
    const-string v4, "dalvik.system.VMRuntime"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x30

    int-to-long v8, v5

    invoke-virtual {v2, v4, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v18

    .line 36
    const/16 v4, 0x8

    if-ne v6, v4, :cond_ad

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v4

    move-wide v8, v4

    .line 37
    :goto_95
    int-to-long v0, v6

    move-wide/from16 v20, v0

    .line 38
    const/4 v4, 0x0

    int-to-long v4, v4

    const/4 v6, 0x0

    int-to-long v10, v6

    move-wide v12, v4

    :goto_9d
    cmp-long v4, v8, v12

    if-gtz v4, :cond_b6

    .line 51
    :cond_a1
    :goto_a1
    return-void

    .line 30
    :catch_a2
    move-exception v2

    new-instance v3, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    :cond_ad
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v4

    int-to-long v4, v4

    move-wide v8, v4

    goto :goto_95

    .line 39
    :cond_b6
    sub-long v4, v14, v16

    mul-long/2addr v4, v12

    add-long v6, v18, v20

    add-long/2addr v6, v4

    .line 40
    const/16 v4, 0x18

    int-to-long v4, v4

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 41
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 42
    const-string v5, "getRuntime"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dd

    const-string v5, "setHiddenApiExemptions"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_dd

    move-wide v4, v10

    .line 38
    :cond_d7
    const-wide/16 v6, 0x1

    add-long/2addr v6, v12

    move-wide v12, v6

    move-wide v10, v4

    goto :goto_9d

    .line 45
    :cond_dd
    const/4 v4, 0x4

    int-to-long v4, v4

    add-long/2addr v4, v6

    .line 46
    invoke-virtual {v2, v4, v5}, Lsun/misc/Unsafe;->getInt(J)I

    move-result v6

    .line 47
    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    invoke-virtual {v2, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(JI)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_ea} :catch_3c

    .line 48
    const-wide/16 v4, 0x1

    add-long/2addr v4, v10

    const/4 v6, 0x2

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_d7

    goto :goto_a1
.end method

.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs setExemptions([Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 58
    :try_start_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/VMRuntime;->setHiddenApiExemptions([Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method
