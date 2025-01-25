.class public Lio/github/zeroaicy/aide/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# static fields
.field private static final DefaultMethodAllowedListClass:Ljava/lang/String; = "io.github.zeroaicy.readclass.classInfo.DefaultMethodAllowedList"

.field private static ModifyADRTMethod:Ljava/lang/reflect/Method; = null

.field private static final TAG:Ljava/lang/String; = "ZeroAicyClassReader"

.field private static final TestReadClass:Ljava/lang/String; = "io.github.zeroaicy.readclass.classInfo.ClassInfoTest3"

.field private static TestReadClassMethod:Ljava/lang/reflect/Method;

.field private static disableDefaultMethod:Z

.field private static disableDefaultMethodKey:Ljava/lang/String;

.field private static dynamicDexClassLoader:Ljava/lang/ClassLoader;

.field private static hasDefaultMethod:Ljava/lang/reflect/Method;

.field public static final isDirect:Z

.field public static final isDynamic:Z

.field private static isLoadDexError:Z

.field private static isPrintlned:Z

.field private static onSharedPreferenceChanged:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static useReaderClassFromZeroAicy:Z

.field private static useReaderClassKey:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 8

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->isDirect()Z

    move-result v0

    sput-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->isDynamic()Z

    move-result v1

    sput-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    const/4 v2, 0x0

    sput-boolean v2, Lio/github/zeroaicy/aide/ClassReader;->isLoadDexError:Z

    const/4 v3, 0x1

    sput-boolean v3, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    sput-boolean v2, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    const-string v4, "useReaderClass"

    sput-object v4, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    const-string v4, "disableDefaultMethod"

    sput-object v4, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    .line 87
    const-string v4, "ZeroAicyClassReader"

    if-eqz v1, :cond_29

    .line 88
    const-string v5, "动态调用"

    invoke-static {v4, v5}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->loadDynamicDex()V

    goto :goto_38

    :cond_29
    if-eqz v0, :cond_31

    .line 92
    const-string v5, "合并模式, Direct调用"

    invoke-static {v4, v5}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 95
    :cond_31
    sput-boolean v2, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    .line 96
    const-string v5, "错误模式，解析库禁用"

    invoke-static {v4, v5}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_38
    :try_start_38
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 103
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "context is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 105
    new-instance v6, Lio/github/zeroaicy/aide/ClassReader$100000000;

    invoke-direct {v6}, Lio/github/zeroaicy/aide/ClassReader$100000000;-><init>()V

    sput-object v6, Lio/github/zeroaicy/aide/ClassReader;->onSharedPreferenceChanged:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 120
    sget-object v6, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    .line 122
    sget-object v6, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z
    :try_end_70
    .catchall {:try_start_38 .. :try_end_70} :catchall_a2

    .line 124
    const-string v5, "setDisableDefaultMethod"

    const-string v6, "io.github.zeroaicy.readclass.classInfo.DefaultMethodAllowedList"

    if-eqz v1, :cond_8d

    :try_start_76
    sget-object v1, Lio/github/zeroaicy/aide/ClassReader;->dynamicDexClassLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_8d

    .line 125
    invoke-static {v6, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    sget-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v1}, Ljava/lang/Boolean;-><init>(Z)V

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v6, v1, v2

    invoke-virtual {v0, v5, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    goto :goto_a8

    :cond_8d
    if-eqz v0, :cond_a8

    .line 128
    invoke-static {v6}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    sget-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v1}, Ljava/lang/Boolean;-><init>(Z)V

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v6, v1, v2

    invoke-virtual {v0, v5, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    :try_end_a1
    .catchall {:try_start_76 .. :try_end_a1} :catchall_a2

    goto :goto_a8

    :catchall_a2
    move-exception v0

    .line 132
    const-string v1, "开关错误"

    invoke-static {v4, v1, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a8
    :goto_a8
    sput-boolean v3, Lio/github/zeroaicy/aide/ClassReader;->isPrintlned:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dc_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 4

    .line 164
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 166
    move-object p0, v1

    check-cast p0, Ljava/io/Reader;

    return-object v1

    .line 169
    :cond_9
    :try_start_9
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-eqz v0, :cond_12

    .line 170
    invoke-static {p0, p1}, Lio/github/zeroaicy/aide/ClassReader;->dynamic_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p0

    return-object p0

    .line 172
    :cond_12
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-eqz v0, :cond_1f

    .line 173
    invoke-static {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->TestReadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_1b

    return-object p0

    .line 176
    :catchall_1b
    move-exception p0

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->notReadClassFileLib()V

    .line 178
    :cond_1f
    move-object p0, v1

    check-cast p0, Ljava/io/Reader;

    return-object v1
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000008()Z
    .registers 1

    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    return v0
.end method

.method static synthetic access$L1000009()Z
    .registers 1

    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    return v0
.end method

.method static synthetic access$L1000010()Ljava/lang/String;
    .registers 1

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000011()Ljava/lang/String;
    .registers 1

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lio/github/zeroaicy/aide/ClassReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000008(Z)V
    .registers 1

    sput-boolean p0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    return-void
.end method

.method static synthetic access$S1000009(Z)V
    .registers 1

    sput-boolean p0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    return-void
.end method

.method static synthetic access$S1000010(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000011(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    return-void
.end method

.method private static dynamic_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 6

    .line 192
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lio/github/zeroaicy/aide/ClassReader;->TestReadClassMethod:Ljava/lang/reflect/Method;

    move-object v2, v0

    check-cast v2, Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/Reader;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_16

    return-object p0

    .line 196
    :catchall_16
    move-exception p0

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->notReadClassFileLib()V

    .line 197
    move-object p0, v0

    check-cast p0, Ljava/io/Reader;

    return-object v0
.end method

.method public static hasDefaultMethod(Ljava/lang/String;)Z
    .registers 1

    .line 216
    invoke-static {p0}, Lio/github/zeroaicy/aide/ClassReader;->hasDefaultMethod2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static hasDefaultMethod2(Ljava/lang/String;)Z
    .registers 6

    .line 226
    const/4 v0, 0x1

    :try_start_1
    sget-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-eqz v1, :cond_1b

    .line 227
    sget-object v1, Lio/github/zeroaicy/aide/ClassReader;->hasDefaultMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/Object;

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 229
    :cond_1b
    sget-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-eqz v1, :cond_2c

    .line 230
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->hasDefaultMethod(Ljava/lang/String;)Z

    move-result p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    return p0

    :catchall_24
    move-exception p0

    .line 233
    const-string v1, "ZeroAicyClassReader"

    const-string v2, "hasDefaultMethod2"

    invoke-static {v1, v2, p0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    return v0
.end method

.method private static isDirect()Z
    .registers 7

    .line 138
    const-string v0, "java.lang.String"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "io.github.zeroaicy.readclass.classInfo.ClassInfoTest3"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_53

    :try_start_9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_d} :catch_48
    .catchall {:try_start_9 .. :try_end_d} :catchall_53

    :try_start_d
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_11} :catch_3d
    .catchall {:try_start_d .. :try_end_11} :catchall_53

    :try_start_11
    const-string v5, "TestReadClass"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v3, v6, v1

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 139
    const-string v2, "io.github.zeroaicy.readclass.classInfo.DefaultMethodAllowedList"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_53

    :try_start_24
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_28} :catch_32
    .catchall {:try_start_24 .. :try_end_28} :catchall_53

    :try_start_28
    const-string v4, "hasDefaultMethod"

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v0, v5, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    return v3

    :catch_32
    move-exception v0

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_3d
    move-exception v0

    .line 138
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    goto :goto_52

    :catch_48
    move-exception v0

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    :goto_52
    throw v2
    :try_end_53
    .catchall {:try_start_28 .. :try_end_53} :catchall_53

    .line 141
    :catchall_53
    move-exception v0

    const-string v0, "ZeroAicyClassReader"

    const-string v2, "isDirect false"

    invoke-static {v0, v2}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isDynamic()Z
    .registers 1

    .line 147
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isLoadDexError:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method

.method private static loadDynamicDex()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 256
    const-string v0, "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/ReaderClassFile/bin/release/dex/classes.dex.zip"

    const-string v1, "java.lang.String"

    sget-boolean v2, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-nez v2, :cond_d

    sget-object v2, Lio/github/zeroaicy/aide/ClassReader;->dynamicDexClassLoader:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_d

    return-void

    .line 260
    :cond_d
    const/4 v2, 0x1

    :try_start_e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 262
    sput-boolean v2, Lio/github/zeroaicy/aide/ClassReader;->isLoadDexError:Z

    return-void

    .line 265
    :cond_1c
    new-instance v3, Ldalvik/system/DexClassLoader;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    move-object v5, v4

    check-cast v5, Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_b4

    :try_start_25
    const-string v5, "io.github.zeroaicy.aide.ClassReader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_2b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_2b} :catch_a9
    .catchall {:try_start_25 .. :try_end_2b} :catchall_b4

    :try_start_2b
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v0, v4, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v3, Lio/github/zeroaicy/aide/ClassReader;->dynamicDexClassLoader:Ljava/lang/ClassLoader;

    .line 266
    const-string v0, "io.github.zeroaicy.readclass.classInfo.DefaultMethodAllowedList"

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_b4

    .line 268
    :try_start_3a
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_3e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3a .. :try_end_3e} :catch_9e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_b4

    :try_start_3e
    const-string v4, "hasDefaultMethod"

    new-array v5, v2, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/aide/ClassReader;->hasDefaultMethod:Ljava/lang/reflect/Method;

    .line 271
    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->dynamicDexClassLoader:Ljava/lang/ClassLoader;

    const-string v3, "io.github.zeroaicy.readclass.classInfo.ClassInfoTest3"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_b4

    .line 272
    :try_start_53
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_53 .. :try_end_57} :catch_93
    .catchall {:try_start_53 .. :try_end_57} :catchall_b4

    :try_start_57
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_57 .. :try_end_5b} :catch_88
    .catchall {:try_start_57 .. :try_end_5b} :catchall_b4

    :try_start_5b
    const-string v4, "TestReadClass"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v3, v5, v6

    aput-object v1, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lio/github/zeroaicy/aide/ClassReader;->TestReadClassMethod:Ljava/lang/reflect/Method;
    :try_end_6a
    .catchall {:try_start_5b .. :try_end_6a} :catchall_b4

    .line 273
    :try_start_6a
    const-string v1, "java.io.InputStream"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_70
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6a .. :try_end_70} :catch_7d
    .catchall {:try_start_6a .. :try_end_70} :catchall_b4

    :try_start_70
    const-string v3, "modifyADRT"

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/aide/ClassReader;->ModifyADRTMethod:Ljava/lang/reflect/Method;

    goto :goto_ba

    :catch_7d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_88
    move-exception v0

    .line 272
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    goto :goto_9d

    :catch_93
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    :goto_9d
    throw v1

    :catch_9e
    move-exception v0

    .line 268
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_a9
    move-exception v0

    .line 265
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b4
    .catchall {:try_start_70 .. :try_end_b4} :catchall_b4

    .line 278
    :catchall_b4
    move-exception v0

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->notReadClassFileLib()V

    .line 279
    sput-boolean v2, Lio/github/zeroaicy/aide/ClassReader;->isLoadDexError:Z

    :goto_ba
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "/storage/emulated/0/AppProjects1/.project/fat-aar-android-master/GroovyToJava/libs/gradle-api-8.0-milestone-3.jar"

    const-string v1, "org/gradle/api/Task.class"

    invoke-static {v0, v1}, Lio/github/zeroaicy/aide/ClassReader;->Dc_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-static {v0}, Lio/github/zeroaicy/aide/ClassReader;->readerToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Hello World!"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "The product of both numbers is: %f"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public static modifyADRT(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5

    .line 243
    :try_start_0
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-eqz v0, :cond_17

    .line 244
    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->ModifyADRTMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0

    .line 246
    :cond_17
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-eqz v0, :cond_21

    .line 247
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->modifyADRT(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-object p0

    .line 252
    :catchall_20
    move-exception v0

    :cond_21
    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->notReadClassFileLib()V

    return-object p0
.end method

.method private static notReadClassFileLib()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isPrintlned:Z

    if-eqz v0, :cond_5

    return-void

    .line 186
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isPrintlned:Z

    .line 187
    const-string v0, "ZeroAicyClassReader"

    const-string v1, "没有发现ReadClassFile库，请向AIDE+中添加class解析库"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static readerToString(Ljava/io/Reader;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_7

    .line 38
    move-object p0, v0

    check-cast p0, Ljava/lang/String;

    return-object v0

    .line 39
    :cond_7
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    check-cast v0, Ljava/lang/String;

    const-string p0, ""

    .line 43
    :goto_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    return-object p0

    .line 44
    :cond_17
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_10
.end method
