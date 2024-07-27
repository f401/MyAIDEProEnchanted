.class public Lio/github/zeroaicy/aide/ClassReader;
.super Ljava/lang/Object;
.source "ClassReader.java"


# static fields
.field private static final DefaultMethodWhiteListClass:Ljava/lang/String; = "io.github.zeroaicy.readclass.classInfo.DefaultMethodWhiteList"

.field private static ModifyADRTMethod:Ljava/lang/reflect/Method; = null

.field private static final TAG:Ljava/lang/String; = "ZeroAicyClassReader"

.field private static final TestReadClass:Ljava/lang/String; = "io.github.zeroaicy.readclass.classInfo.ClassInfoTest3"

.field private static TestReadClassMethod:Ljava/lang/reflect/Method;

.field public static dex:Ljava/lang/ClassLoader;

.field private static disableDefaultMethod:Z

.field private static disableDefaultMethodKey:Ljava/lang/String;

.field private static hasDefaultMethod:Ljava/lang/reflect/Method;

.field public static final isDirect:Z

.field public static final isDynamic:Z

.field private static isLoadDexError:Z

.field private static onSharedPreferenceChanged:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private static useReaderClassFromZeroAicy:Z

.field private static useReaderClassKey:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->isDirect()Z

    move-result v0

    sput-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->isDynamic()Z

    move-result v0

    sput-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    sput-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->isLoadDexError:Z

    sput-boolean v2, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    sput-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    const-string v0, "useReaderClass"

    sput-object v0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    const-string v0, "disableDefaultMethod"

    sput-object v0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    .line 77
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "ZeroAicyClassReader"

    const-string v1, "\u52a8\u6001\u8c03\u7528"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lio/github/zeroaicy/aide/ClassReader;->loadDynamicDex()V

    .line 90
    :goto_0
    :try_start_0
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ZeroAicyClassReader"

    const-string v3, "context is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    new-instance v1, Lio/github/zeroaicy/aide/ClassReader$100000000;

    invoke-direct {v1}, Lio/github/zeroaicy/aide/ClassReader$100000000;-><init>()V

    sput-object v1, Lio/github/zeroaicy/aide/ClassReader;->onSharedPreferenceChanged:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 108
    sget-object v1, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    .line 110
    sget-object v1, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    .line 112
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-eqz v0, :cond_3

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->dex:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_3

    .line 113
    const-string v0, "io.github.zeroaicy.readclass.classInfo.DefaultMethodWhiteList"

    sget-object v1, Lio/github/zeroaicy/aide/ClassReader;->dex:Ljava/lang/ClassLoader;

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
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_1
    return-void

    .line 81
    :cond_1
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-eqz v0, :cond_2

    .line 82
    const-string v0, "ZeroAicyClassReader"

    const-string v1, "\u5408\u5e76\u6a21\u5f0f, Direct\u8c03\u7528"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_2
    const-string v0, "ZeroAicyClassReader"

    const-string/jumbo v1, "\u9519\u8bef\u6a21\u5f0f"

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_3
    :try_start_1
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "io.github.zeroaicy.readclass.classInfo.DefaultMethodWhiteList"

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
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 120
    const-string v1, "ZeroAicyClassReader"

    const-string v2, "\u5f00\u5173\u9519\u8bef"

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public constructor <init>()V
    .registers 1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dc_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 4

    const/4 v0, 0x0

    .line 151
    sget-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    if-nez v1, :cond_0

    .line 153
    check-cast v0, Ljava/io/Reader;

    .line 165
    :goto_0
    return-object v0

    .line 156
    :cond_0
    :try_start_0
    sget-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-eqz v1, :cond_1

    .line 157
    invoke-static {p0, p1}, Lio/github/zeroaicy/aide/ClassReader;->dynamic_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_1
    sget-boolean v1, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-eqz v1, :cond_2

    .line 160
    invoke-static {p0, p1}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->TestReadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    :cond_2
    check-cast v0, Ljava/io/Reader;

    goto :goto_0
.end method

.method static synthetic access$L1000000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000007()Z
    .registers 1

    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    return v0
.end method

.method static synthetic access$L1000008()Z
    .registers 1

    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    return v0
.end method

.method static synthetic access$L1000009()Ljava/lang/String;
    .registers 1

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$L1000010()Ljava/lang/String;
    .registers 1

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$S1000000(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lio/github/zeroaicy/aide/ClassReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000007(Z)V
    .registers 1

    sput-boolean p0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassFromZeroAicy:Z

    return-void
.end method

.method static synthetic access$S1000008(Z)V
    .registers 1

    sput-boolean p0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethod:Z

    return-void
.end method

.method static synthetic access$S1000009(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lio/github/zeroaicy/aide/ClassReader;->useReaderClassKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$S1000010(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lio/github/zeroaicy/aide/ClassReader;->disableDefaultMethodKey:Ljava/lang/String;

    return-void
.end method

.method private static dynamic_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;
    .registers 7

    const/4 v1, 0x0

    .line 170
    :try_start_0
    sget-object v2, Lio/github/zeroaicy/aide/ClassReader;->TestReadClassMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

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
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-object v0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 174
    check-cast v0, Ljava/io/Reader;

    goto :goto_0
.end method

.method public static hasDefaultMethod(Ljava/lang/String;)Z
    .registers 2

    .line 190
    invoke-static {p0}, Lio/github/zeroaicy/aide/ClassReader;->hasDefaultMethod2(Ljava/lang/String;)Z

    move-result v0

    .line 192
    return v0
.end method

.method private static hasDefaultMethod2(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    .line 196
    :try_start_0
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-eqz v0, :cond_0

    .line 197
    sget-object v2, Lio/github/zeroaicy/aide/ClassReader;->hasDefaultMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 205
    :goto_0
    return v0

    .line 199
    :cond_0
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-eqz v0, :cond_1

    .line 200
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/DefaultMethodWhiteList;->hasDefaultMethod(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 203
    const-string v2, "ZeroAicyClassReader"

    const-string v3, "hasDefaultMethod2"

    invoke-static {v2, v3, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v1

    .line 205
    goto :goto_0
.end method

.method private static isDirect()Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 127
    :try_start_0
    const-string v2, "io.github.zeroaicy.readclass.classInfo.ClassInfoTest3"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    const-string v3, "java.lang.String"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    const-string v4, "java.lang.String"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

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

    .line 128
    const-string v2, "io.github.zeroaicy.readclass.classInfo.DefaultMethodWhiteList"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    :try_start_4
    const-string v3, "java.lang.String"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    :try_start_5
    const-string v4, "hasDefaultMethod"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 134
    :goto_0
    return v0

    .line 127
    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 128
    :catch_1
    move-exception v0

    .line 131
    const-string v0, "ZeroAicyClassReader"

    const-string v2, "isDirect false"

    invoke-static {v0, v2}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 132
    goto :goto_0

    .line 127
    :catch_2
    move-exception v0

    :try_start_6
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method private static isDynamic()Z
    .registers 1

    .line 137
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isLoadDexError:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static loadDynamicDex()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v6, 0x1

    .line 222
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-nez v0, :cond_0

    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->dex:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 224
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/ReaderClassFile/bin/release/dex/classes.dex.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "resource/ClassReaderLibrary.dex.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 234
    :goto_1
    new-instance v3, Ldalvik/system/DexClassLoader;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "io.github.zeroaicy.aide.ClassReader"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v2, v0, v1, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v3, Lio/github/zeroaicy/aide/ClassReader;->dex:Ljava/lang/ClassLoader;

    .line 235
    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->dex:Ljava/lang/ClassLoader;

    const-string v1, "io.github.zeroaicy.readclass.classInfo.DefaultMethodWhiteList"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :try_start_3
    const-string v1, "java.lang.String"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    :try_start_4
    const-string v2, "hasDefaultMethod"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/aide/ClassReader;->hasDefaultMethod:Ljava/lang/reflect/Method;

    .line 237
    sget-object v0, Lio/github/zeroaicy/aide/ClassReader;->dex:Ljava/lang/ClassLoader;

    const-string v1, "io.github.zeroaicy.readclass.classInfo.ClassInfoTest3"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    .line 238
    :try_start_5
    const-string v1, "java.lang.String"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v1

    :try_start_6
    const-string v2, "java.lang.String"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v2

    :try_start_7
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
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    .line 239
    :try_start_8
    const-string v1, "java.io.InputStream"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v1

    :try_start_9
    const-string v2, "modifyADRT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lio/github/zeroaicy/aide/ClassReader;->ModifyADRTMethod:Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 242
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 243
    sput-boolean v6, Lio/github/zeroaicy/aide/ClassReader;->isLoadDexError:Z

    goto/16 :goto_0

    .line 234
    :catch_1
    move-exception v0

    :try_start_a
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    :cond_1
    const-string v0, "/storage/emulated/0/AppProjects1/.project/ZeroAicy-WearOs/ReaderClassFile/bin/release/dex/classes.dex.zip"

    move-object v2, v0

    goto/16 :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .registers 9
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

    .line 26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "/storage/emulated/0/.MyAicy/.aide/android-32.jar"

    const-string v2, "java/util/List.java"

    invoke-static {v1, v2}, Lio/github/zeroaicy/aide/ClassReader;->Dc_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/aide/ClassReader;->readerToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "/storage/emulated/0/.MyAicy/.aide/android-32.jar"

    const-string v2, "java/util/List.class"

    invoke-static {v1, v2}, Lio/github/zeroaicy/aide/ClassReader;->Dc_ReadClassFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    invoke-static {v1}, Lio/github/zeroaicy/aide/ClassReader;->readerToString(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Hello World!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
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
    .registers 5

    .line 209
    :try_start_0
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDynamic:Z

    if-eqz v0, :cond_0

    .line 210
    sget-object v1, Lio/github/zeroaicy/aide/ClassReader;->ModifyADRTMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 219
    :goto_0
    return-object v0

    .line 212
    :cond_0
    sget-boolean v0, Lio/github/zeroaicy/aide/ClassReader;->isDirect:Z

    if-eqz v0, :cond_1

    .line 213
    invoke-static {p0}, Lio/github/zeroaicy/readclass/classInfo/ClassInfoTest3;->modifyADRT(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "call modifyADRTMethod"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 217
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1
    move-object v0, p0

    .line 219
    goto :goto_0
.end method

.method public static readerToString(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    if-nez p0, :cond_1

    check-cast v0, Ljava/lang/String;

    .line 44
    :cond_0
    return-object v0

    .line 37
    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 39
    check-cast v0, Ljava/lang/String;

    const-string v0, ""

    .line 41
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 42
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
