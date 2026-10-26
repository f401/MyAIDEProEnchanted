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
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final crashAppLog:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
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
    .locals 2

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
    .locals 2

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
    .locals 5

    .line 134
    :try_start_0
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 149
    iget-object v3, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    const-string v4, "versionName"

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    const-string v3, "versionCode"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    const-string v2, "packName"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 158
    const-string v1, "CrashAppLog.class"

    const-string v2, "collectAppInfo - "

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static collectDeviceInfo(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 170
    :try_start_0
    const-string v0, "\u624b\u673a\u578b\u53f7:"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u7cfb\u7edf\u7248\u672c"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "Android\u7248\u672c"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 176
    array-length v0, v4

    if-lez v0, :cond_3

    .line 177
    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    if-eqz v6, :cond_1

    .line 179
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 181
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 182
    instance-of v3, v0, [Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    check-cast v0, [Ljava/lang/String;

    .line 185
    array-length v8, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    :goto_1
    if-ge v3, v8, :cond_0

    aget-object v9, v0, v3

    .line 186
    :try_start_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_2
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 192
    :catchall_0
    move-exception v0

    .line 199
    const-string v1, "CrashAppLog.class"

    const-string v2, "collectDeviceInfo"

    invoke-static {v1, v2, v0}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method private hanlderException(Ljava/lang/Throwable;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 255
    :goto_0
    return v0

    .line 239
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->collectAppInfo(Landroid/content/Context;)V

    .line 241
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->collectDeviceInfo(Ljava/util/Map;)V

    .line 246
    invoke-direct {p0, p1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->writerCrashLogToFile(Ljava/lang/Throwable;)V

    .line 250
    iget v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->LIMIT_LOG_COUNT:I

    invoke-direct {p0, v1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->limitAppLogCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hanlderThrowable - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CrashAppLog.class"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private limitAppLogCount(I)V
    .locals 4

    .line 269
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->CAHCE_CRASH_LOG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 274
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    new-instance v1, Lio/github/zeroaicy/util/crash/CrashAppLog$CrashLogFliter;

    invoke-direct {v1, p0}, Lio/github/zeroaicy/util/crash/CrashAppLog$CrashLogFliter;-><init>(Lio/github/zeroaicy/util/crash/CrashAppLog;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    array-length v0, v1

    if-lez v0, :cond_1

    .line 280
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->comparator:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 282
    array-length v0, v1

    iget v2, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->LIMIT_LOG_COUNT:I

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    .line 284
    :goto_0
    array-length v2, v1

    iget v3, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->LIMIT_LOG_COUNT:I

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 286
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "limitAppLogCount - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CrashAppLog.class"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private writerCrashLogToFile(Ljava/lang/Throwable;)V
    .locals 6

    .line 338
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 341
    iget-object v1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->crashAppLog:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v1

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writerCrashLogToFile - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CrashAppLog.class"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    .line 345
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 346
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 347
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 348
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 352
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_2

    .line 355
    :cond_2
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    .line 356
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    const-string v2, "Exception:+\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-direct {p0, v1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->writerToFile(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->onCrashListener:Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;

    if-eqz v2, :cond_0

    .line 368
    invoke-interface {v2, v1}, Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;->onCrash(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private writerToFile(Ljava/lang/String;)V
    .locals 5

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

    if-nez v2, :cond_0

    .line 401
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 406
    :cond_0
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

    if-nez v0, :cond_1

    .line 409
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 411
    :cond_1
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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :goto_0
    return-void

    .line 418
    :catchall_0
    move-exception v0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writerToFile - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CrashAppLog.class"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCAHCE_CRASH_LOG()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->CAHCE_CRASH_LOG:Ljava/lang/String;

    return-object v0
.end method

.method public getLIMIT_LOG_COUNT()I
    .locals 1

    .line 429
    iget v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->LIMIT_LOG_COUNT:I

    return v0
.end method

.method public init()V
    .locals 2

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
    .locals 3

    if-nez p1, :cond_0

    .line 91
    :try_start_0
    invoke-static {}, Lio/github/zeroaicy/util/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 94
    :cond_0
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_4

    .line 96
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;

    .line 104
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 112
    iput-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 114
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 116
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eq v1, p0, :cond_3

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 123
    :cond_3
    :goto_1
    return-void

    .line 96
    :cond_4
    if-eqz p1, :cond_1

    .line 98
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CrashAppLog.class"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public abstract sendCrashLogToServer(Ljava/io/File;Ljava/io/File;)V
.end method

.method public setCAHCE_CRASH_LOG(Ljava/lang/String;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->CAHCE_CRASH_LOG:Ljava/lang/String;

    return-void
.end method

.method public setLIMIT_LOG_COUNT(I)V
    .locals 0

    .line 433
    iput p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->LIMIT_LOG_COUNT:I

    return-void
.end method

.method public setOnCrashListener(Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->onCrashListener:Lio/github/zeroaicy/util/crash/CrashAppLog$OnCrashListener;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 211
    :try_start_0
    invoke-direct {p0, p2}, Lio/github/zeroaicy/util/crash/CrashAppLog;->hanlderException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/github/zeroaicy/util/crash/CrashAppLog;->mUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 217
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 224
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uncaughtThrowable - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CrashAppLog.class"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/github/zeroaicy/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected writerToFile_Test(Ljava/lang/String;)V
    .locals 0

    .line 380
    invoke-direct {p0, p1}, Lio/github/zeroaicy/util/crash/CrashAppLog;->writerToFile(Ljava/lang/String;)V

    return-void
.end method
