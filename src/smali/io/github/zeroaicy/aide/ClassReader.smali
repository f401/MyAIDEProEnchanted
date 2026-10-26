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
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->isDirect()Z

    move-result v0

    sput-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->isDynamic()Z

    move-result v1

    sput-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    sput-boolean v3, Lio/github/zeroaicy/aide/ClassReader;->isLoadDexError:Z

    sput-boolean v6, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    sput-boolean v3, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    const-string v2, "useReaderClass"

    sput-object v2, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    const-string v2, "disableDefaultMethod"

    sput-object v2, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    .line 87
    if-eqz v1, :cond_1

    .line 88
    const-string v2, "ZeroAicyClassReader"

    const-string v3, "\u52a8\u6001\u8c03\u7528"

    invoke-static {v2, v3}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->loadDynamicDex()V

    .line 102
    :goto_0
    :try_start_0
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 103
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "context is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "ZeroAicyClassReader"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 105
    new-instance v3, Lio/github/zeroaicy/aide/ClassReader$100000000;

    invoke-direct {v3}, Lio/github/zeroaicy/aide/ClassReader$100000000;-><init>()V

    sput-object v3, Lio/github/zeroaicy/aide/ClassReader;->onSharedPreferenceChanged:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 120
    sget-object v3, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    .line 122
    sget-object v3, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    .line 124
    if-eqz v1, :cond_3

    sget-object v1, Lio/github/zeroaicy/aide/ClassReader;->dynamicDexClassLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_3

    .line 125
    const-string v0, "io.github.zeroaicy.readclass.classInfo.DefaultMethodAllowedList"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    sget-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v1, "setDisableDefaultMethod"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    :goto_1
    sput-boolean v6, Lio/github/zeroaicy/aide/ClassReader;->isPrintlned:Z

    return-void

    .line 89
    :cond_1
    if-eqz v0, :cond_2

    .line 92
    const-string v2, "ZeroAicyClassReader"

    const-string v3, "\u5408\u5e76\u6a21\u5f0f, Direct\u8c03\u7528"

    invoke-static {v2, v3}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_2
    sput-boolean v3, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    .line 96
    const-string v2, "ZeroAicyClassReader"

    const-string v3, "\u9519\u8bef\u6a21\u5f0f\uff0c\u89e3\u6790\u5e93\u7981\u7528"

    invoke-static {v2, v3}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 125
    :cond_3
    if-eqz v0, :cond_0

    .line 128
    :try_start_1
    const-string v0, "io.github.zeroaicy.readclass.classInfo.DefaultMethodAllowedList"

    invoke-static {v0}, Lio/github/zeroaicy/util/reflect/ReflectPie;->onClass(Ljava/lang/String;)Lio/github/zeroaicy/util/reflect/ReflectPie;

    move-result-object v0

    sget-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v1, "setDisableDefaultMethod"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Lio/github/zeroaicy/util/reflect/ReflectPie;->call(Ljava/lang/String;[Ljava/lang/Object;)Lio/github/zeroaicy/util/reflect/ReflectPie;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 132
    const-string v1, "ZeroAicyClassReader"

    const-string v2, "\u5f00\u5173\u9519\u8bef"

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dc_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 2

    const/4 v1, 0x0

    .line 164
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    if-nez v0, :cond_0

    move-object v0, v1

    .line 166
    check-cast v0, Ljava/io/Reader;

    .line 178
    :goto_0
    return-object v1

    .line 169
    :cond_0
    :try_start_0
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-eqz v0, :cond_1

    .line 170
    invoke-static {p0, p1}, Lio/github/zeroaicy/aide/ClassReader;->dynamic_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    goto :goto_0

    .line 172
    :cond_1
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-eqz v0, :cond_2

    .line 173
    invoke-static {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->TestReadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->notReadClassFileLib()V

    :cond_2
    move-object v0, v1

    .line 178
    check-cast v0, Ljava/io/Reader;

    goto :goto_0
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000008()Z
    .locals 1

    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    return v0
.end method

.method static synthetic access$L1000009()Z
    .locals 1

    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    return v0
.end method

.method static synthetic access$L1000010()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000011()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lio/github/zeroaicy/aide/ClassReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000008(Z)V
    .locals 0

    sput-boolean p0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    return-void
.end method

.method static synthetic access$S1000009(Z)V
    .locals 0

    sput-boolean p0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    return-void
.end method

.method static synthetic access$S1000010(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000011(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    return-void
.end method

.method private static dynamic_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .locals 5

    const/4 v1, 0x0

    .line 192
    :try_start_0
    sget-object v2, Lio/github/zeroaicy/aide/ClassReader;->TestReadClassMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->notReadClassFileLib()V

    move-object v0, v1

    .line 197
    check-cast v0, Ljava/io/Reader;

    move-object v0, v1

    goto :goto_0
.end method

.method public static hasDefaultMethod(Ljava/lang/String;)Z
    .locals 1

    .line 216
    invoke-static {p0}, Lio/github/zeroaicy/aide/ClassReader;->hasDefaultMethod2(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasDefaultMethod2(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    .line 226
    :try_start_0
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-eqz v0, :cond_0

    .line 227
    sget-object v2, Lio/github/zeroaicy/aide/ClassReader;->hasDefaultMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 233
    :goto_0
    return v0

    .line 229
    :cond_0
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-eqz v0, :cond_1

    .line 230
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodAllowedList;->hasDefaultMethod(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 233
    const-string v2, "ZeroAicyClassReader"

    const-string v3, "hasDefaultMethod2"

    invoke-static {v2, v3, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static isDirect()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 138
    :try_start_0
    const-string v2, "io.github.zeroaicy.readclass.classInfo.ClassInfoTest3"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    const-string v3, "java.lang.String"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    const-string v4, "java.lang.String"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    :try_start_3
    const-string v5, "TestReadClass"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 139
    const-string v2, "io.github.zeroaicy.readclass.classInfo.DefaultMethodAllowedList"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :try_start_4
    const-string v3, "java.lang.String"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    :try_start_5
    const-string v4, "hasDefaultMethod"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 141
    :goto_0
    return v0

    .line 139
    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    :catchall_0
    move-exception v0

    const-string v0, "ZeroAicyClassReader"

    const-string v2, "isDirect false"

    invoke-static {v0, v2}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 138
    :try_start_6
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    :goto_1
    throw v0

    :catch_2
    move-exception v0

    move-object v2, v0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private static isDynamic()Z
    .locals 1

    .line 147
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isLoadDexError:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static loadDynamicDex()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v6, 0x1

    .line 256
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-nez v0, :cond_0

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->dynamicDexClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 260
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/ReaderClassFile/bin/release/dex/classes.dex.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    const/4 v0, 0x1

    sput-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isLoadDexError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->notReadClassFileLib()V

    .line 279
    sput-boolean v6, Lio/github/zeroaicy/aide/ClassReader;->isLoadDexError:Z

    goto :goto_0

    .line 265
    :cond_1
    :try_start_1
    new-instance v1, Ldalvik/system/DexClassLoader;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "io.github.zeroaicy.aide.ClassReader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    const-string v2, "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/ReaderClassFile/bin/release/dex/classes.dex.zip"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v1, Lio/github/zeroaicy/aide/ClassReader;->dynamicDexClassLoader:Ljava/lang/ClassLoader;

    .line 266
    const-string v0, "io.github.zeroaicy.readclass.classInfo.DefaultMethodAllowedList"

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 268
    :try_start_4
    const-string v1, "java.lang.String"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    :try_start_5
    const-string v2, "hasDefaultMethod"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/aide/ClassReader;->hasDefaultMethod:Ljava/lang/reflect/Method;

    .line 271
    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->dynamicDexClassLoader:Ljava/lang/ClassLoader;

    const-string v1, "io.github.zeroaicy.readclass.classInfo.ClassInfoTest3"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 272
    :try_start_6
    const-string v1, "java.lang.String"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v1

    :try_start_7
    const-string v2, "java.lang.String"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v2

    :try_start_8
    const-string v3, "TestReadClass"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lio/github/zeroaicy/aide/ClassReader;->TestReadClassMethod:Ljava/lang/reflect/Method;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 273
    :try_start_9
    const-string v1, "java.io.InputStream"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v1

    :try_start_a
    const-string v2, "modifyADRT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/aide/ClassReader;->ModifyADRTMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 272
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    :goto_1
    throw v0

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 268
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4
    move-exception v0

    .line 265
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
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
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "/storage/emulated/0/AppProjects1/.project/fat-aar-android-master/GroovyToJava/libs/gradle-api-8.0-milestone-3.jar"

    const-string v2, "org/gradle/api/Task.class"

    invoke-static {v1, v2}, Lio/github/zeroaicy/aide/ClassReader;->Dc_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/aide/ClassReader;->readerToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Hello World!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "The product of both numbers is: %f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Double;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Ljava/lang/Double;-><init>(D)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public static modifyADRT(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 4

    .line 243
    :try_start_0
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-eqz v0, :cond_0

    .line 244
    sget-object v1, Lio/github/zeroaicy/aide/ClassReader;->ModifyADRTMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 252
    :goto_0
    return-object v0

    .line 246
    :cond_0
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-eqz v0, :cond_1

    .line 247
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->modifyADRT(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    :cond_1
    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->notReadClassFileLib()V

    move-object v0, p0

    goto :goto_0
.end method

.method private static notReadClassFileLib()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isPrintlned:Z

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isPrintlned:Z

    .line 187
    const-string v0, "ZeroAicyClassReader"

    const-string v1, "\u6ca1\u6709\u53d1\u73b0ReadClassFile\u5e93\uff0c\u8bf7\u5411AIDE+\u4e2d\u6dfb\u52a0class\u89e3\u6790\u5e93"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readerToString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    .line 38
    check-cast v0, Ljava/lang/String;

    .line 43
    :goto_0
    return-object v1

    .line 39
    :cond_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 42
    check-cast v1, Ljava/lang/String;

    const-string v0, ""

    .line 43
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 44
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
