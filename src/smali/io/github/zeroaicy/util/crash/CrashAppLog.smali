.class public abstract Lio/github/zeroaicy/util/crash/CrashAppLog;
.super Ljava/lang/Object;
.source "CrashAppLog.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/zeroaicy/util/crash/CrashAppLog$CrashLogFliter;,
        Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashAppLog.class"

.field private static curtTimer:I

.field private static final formate:Ljava/text/SimpleDateFormat;


# instance fields
.field private CAHCE_CRASH_LOG:Ljava/lang/String;

.field private LIMIT_LOG_COUNT:I

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final crashAppLog:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public onCrashListener:Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/github/zeroaicy/util/crash/CrashAppLog;->formate:Ljava/text/SimpleDateFormat;

    .line 377
    const/4 v0, 0x0

    sput v0, Lio/github/zeroaicy/util/crash/CrashAppLog;->curtTimer:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0xa

    iput v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->LIMIT_LOG_COUNT:I

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/.Log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->CAHCE_CRASH_LOG:Ljava/lang/String;

    .line 303
    new-instance v0, Lio/github/zeroaicy/util/crash/CrashAppLog$1;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/util/crash/CrashAppLog$1;-><init>(Lio/github/zeroaicy/util/crash/CrashAppLog;)V

    iput-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method private collectAppInfo(Landroid/content/Context;)V
    .registers 6

    .line 134
    :try_start_0
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    .line 137
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 140
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 145
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    const-string v3, "versionName"

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    const-string v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    const-string v1, "packName"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_0 .. :try_end_44} :catchall_45

    goto :goto_4d

    :catchall_45
    move-exception p1

    .line 158
    const-string v0, "CrashAppLog.class"

    const-string v1, "collectAppInfo - "

    invoke-static {v0, v1, p1}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4d
    :goto_4d
    return-void
.end method

.method public static collectDeviceInfo(Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 170
    :try_start_0
    const-string v0, "手机型号:"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "系统版本"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "Android版本"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 176
    array-length v1, v0

    if-lez v1, :cond_77

    .line 177
    array-length v1, v0
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_6f

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v1, :cond_77

    aget-object v4, v0, v3

    if-eqz v4, :cond_6c

    .line 179
    const/4 v5, 0x1

    :try_start_38
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 181
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 182
    instance-of v6, v5, [Ljava/lang/String;

    if-eqz v6, :cond_61

    .line 183
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    check-cast v5, [Ljava/lang/String;

    .line 185
    array-length v7, v5
    :try_end_4c
    .catchall {:try_start_38 .. :try_end_4c} :catchall_6f

    const/4 v8, 0x0

    :goto_4d
    if-ge v8, v7, :cond_5c

    aget-object v9, v5, v8

    .line 186
    :try_start_51
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    .line 188
    :cond_5c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_65

    .line 190
    :cond_61
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 192
    :goto_65
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catchall {:try_start_51 .. :try_end_6c} :catchall_6f

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :catchall_6f
    move-exception p0

    .line 199
    const-string v0, "CrashAppLog.class"

    const-string v1, "collectDeviceInfo"

    invoke-static {v0, v1, p0}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_77
    return-void
.end method

.method private hanlderException(Ljava/lang/Throwable;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 239
    :cond_4
    :try_start_4
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->collectAppInfo(Landroid/content/Context;)V

    .line 241
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->collectDeviceInfo(Ljava/util/Map;)V

    .line 246
    invoke-direct {p0, p1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->writerCrashLogToFile(Ljava/lang/Throwable;)V

    .line 250
    iget p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->LIMIT_LOG_COUNT:I

    invoke-direct {p0, p1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->limitAppLogCount(I)V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_18

    const/4 p1, 0x1

    return p1

    :catchall_18
    move-exception p1

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hanlderThrowable - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CrashAppLog.class"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private limitAppLogCount(I)V
    .registers 5

    .line 269
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->CAHCE_CRASH_LOG:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 271
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 274
    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 276
    new-instance v0, Lio/github/zeroaicy/util/crash/CrashAppLog$CrashLogFliter;

    invoke-direct {v0, p0}, Lio/github/zeroaicy/util/crash/CrashAppLog$CrashLogFliter;-><init>(Lio/github/zeroaicy/util/crash/CrashAppLog;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 278
    array-length v0, p1

    if-lez v0, :cond_55

    .line 280
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 282
    array-length v0, p1

    iget v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->LIMIT_LOG_COUNT:I

    if-le v0, v1, :cond_55

    const/4 v0, 0x0

    .line 284
    :goto_2f
    array-length v1, p1

    iget v2, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->LIMIT_LOG_COUNT:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_55

    .line 286
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3d

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :catchall_3d
    move-exception p1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "limitAppLogCount - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CrashAppLog.class"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    return-void
.end method

.method private writerCrashLogToFile(Ljava/lang/Throwable;)V
    .registers 7

    .line 338
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_4e

    .line 341
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    .line 345
    :cond_4e
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 346
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 347
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 348
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_5f
    if-eqz p1, :cond_69

    .line 351
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 352
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_5f

    .line 355
    :cond_69
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 356
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 358
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 360
    const-string v1, "Exception:+\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 365
    invoke-direct {p0, p1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->writerToFile(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->onCrashListener:Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;

    if-eqz v0, :cond_a2

    .line 368
    invoke-interface {v0, p1}, Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;->onCrash(Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_0 .. :try_end_89} :catchall_8a

    goto :goto_a2

    :catchall_8a
    move-exception p1

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writerCrashLogToFile - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CrashAppLog.class"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    :goto_a2
    return-void
.end method

.method private writerToFile(Ljava/lang/String;)V
    .registers 7

    .line 391
    :try_start_0
    sget v0, Lio/github/zeroaicy/util/crash/CrashAppLog;->curtTimer:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/github/zeroaicy/util/crash/CrashAppLog;->curtTimer:I

    .line 392
    sget-object v0, Lio/github/zeroaicy/util/crash/CrashAppLog;->formate:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "crash-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lio/github/zeroaicy/util/crash/CrashAppLog;->curtTimer:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->CAHCE_CRASH_LOG:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 401
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 406
    :cond_3e
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_64

    .line 409
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 411
    :cond_64
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 412
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 414
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 416
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 418
    invoke-virtual {p0, v1, v2}, Lio/github/zeroaicy/util/crash/CrashAppLog;->sendCrashLogToServer(Ljava/io/File;Ljava/io/File;)V
    :try_end_7a
    .catchall {:try_start_0 .. :try_end_7a} :catchall_7b

    goto :goto_93

    :catchall_7b
    move-exception p1

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writerToFile - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CrashAppLog.class"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_93
    return-void
.end method


# virtual methods
.method public getCAHCE_CRASH_LOG()Ljava/lang/String;
    .registers 2

    .line 437
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->CAHCE_CRASH_LOG:Ljava/lang/String;

    return-object v0
.end method

.method public getLIMIT_LOG_COUNT()I
    .registers 2

    .line 429
    iget v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->LIMIT_LOG_COUNT:I

    return v0
.end method

.method public init()V
    .registers 3

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/github/zeroaicy/util/crash/CrashAppLog;->init(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "context = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "CrashAppLog.class"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/github/zeroaicy/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    if-nez p1, :cond_6

    .line 91
    :try_start_2
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 94
    :cond_6
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_d

    .line 96
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    goto :goto_11

    :cond_d
    if-eqz p1, :cond_11

    .line 98
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    .line 104
    :cond_11
    :goto_11
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    if-eq p1, p0, :cond_1c

    .line 112
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 114
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 116
    :cond_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eq v0, p0, :cond_42

    .line 118
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_29
    .catchall {:try_start_2 .. :try_end_29} :catchall_2a

    goto :goto_42

    :catchall_2a
    move-exception p1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CrashAppLog.class"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    :goto_42
    return-void
.end method

.method public abstract sendCrashLogToServer(Ljava/io/File;Ljava/io/File;)V
.end method

.method public setCAHCE_CRASH_LOG(Ljava/lang/String;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->CAHCE_CRASH_LOG:Ljava/lang/String;

    return-void
.end method

.method public setLIMIT_LOG_COUNT(I)V
    .registers 2

    .line 433
    iput p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->LIMIT_LOG_COUNT:I

    return-void
.end method

.method public setOnCrashListener(Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->onCrashListener:Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .line 211
    :try_start_0
    invoke-direct {p0, p2}, Lio/github/zeroaicy/util/crash/CrashAppLog;->hanlderException(Ljava/lang/Throwable;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_12

    .line 215
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 217
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_2e

    .line 220
    :cond_12
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    goto :goto_2e

    :catchall_16
    move-exception p1

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "uncaughtThrowable - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CrashAppLog.class"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void
.end method

.method protected writerToFile_Test(Ljava/lang/String;)V
    .registers 2

    .line 380
    invoke-direct {p0, p1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->writerToFile(Ljava/lang/String;)V

    return-void
.end method
