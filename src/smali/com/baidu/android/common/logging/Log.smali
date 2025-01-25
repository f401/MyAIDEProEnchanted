.class public final Lcom/baidu/android/common/logging/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILE_LIMETE:I = 0xa00000

.field public static final FILE_NUMBER:I = 0x2

.field private static sFilelogger:Ljava/util/logging/Logger; = null

.field private static sLog2File:Z = false

.field private static sLogEnabled:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 108
    sget-boolean v0, Lcom/baidu/android/common/logging/Log;->sLogEnabled:Z

    if-eqz v0, :cond_29

    .line 109
    sget-boolean v0, Lcom/baidu/android/common/logging/Log;->sLog2File:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/baidu/android/common/logging/Log;->sFilelogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_26

    .line 110
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_29

    .line 112
    :cond_26
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/baidu/android/common/logging/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/android/common/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 160
    sget-boolean v0, Lcom/baidu/android/common/logging/Log;->sLogEnabled:Z

    if-eqz v0, :cond_29

    .line 161
    sget-boolean v0, Lcom/baidu/android/common/logging/Log;->sLog2File:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/baidu/android/common/logging/Log;->sFilelogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_26

    .line 162
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_29

    .line 164
    :cond_26
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/baidu/android/common/logging/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p0, p1}, Lcom/baidu/android/common/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    .line 175
    invoke-static {p1}, Lcom/baidu/android/common/logging/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {p0, p1}, Lcom/baidu/android/common/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getLogFileName()Ljava/lang/String;
    .registers 3

    .line 214
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 215
    invoke-static {v0}, Lcom/baidu/android/common/logging/Log;->getProcessNameForPid(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 217
    const-string v0, "BaiduFileLog"

    .line 219
    :cond_10
    const/16 v1, 0x3a

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProcessNameForPid(I)Ljava/lang/String;
    .registers 5

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/cmdline"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/status"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 234
    const-string v1, ""

    .line 238
    :try_start_26
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 241
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 245
    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 246
    invoke-virtual {v2, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    move-object v1, p0

    goto :goto_7c

    .line 249
    :cond_4a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 251
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_5d
    if-eqz v0, :cond_7b

    .line 254
    const-string v2, "Name:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 255
    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_7b

    .line 257
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7b

    .line 263
    :cond_76
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    :cond_7b
    :goto_7b
    move-object v0, p0

    .line 267
    :goto_7c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception p0

    .line 270
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_84
    return-object v1
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    .line 201
    const-string p0, ""

    return-object p0

    .line 203
    :cond_5
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 204
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 205
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 206
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 81
    sget-boolean v0, Lcom/baidu/android/common/logging/Log;->sLogEnabled:Z

    if-eqz v0, :cond_29

    .line 83
    sget-boolean v0, Lcom/baidu/android/common/logging/Log;->sLog2File:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/baidu/android/common/logging/Log;->sFilelogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_26

    .line 84
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_29

    .line 86
    :cond_26
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/baidu/android/common/logging/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/android/common/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLog2File(Z)V
    .registers 6

    .line 289
    sput-boolean p0, Lcom/baidu/android/common/logging/Log;->sLog2File:Z

    if-eqz p0, :cond_56

    .line 291
    sget-object p0, Lcom/baidu/android/common/logging/Log;->sFilelogger:Ljava/util/logging/Logger;

    if-nez p0, :cond_56

    .line 294
    invoke-static {}, Lcom/baidu/android/common/logging/Log;->getLogFileName()Ljava/lang/String;

    move-result-object p0

    .line 297
    nop

    .line 298
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 304
    :try_start_1a
    new-instance v1, Ljava/util/logging/FileHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_%g.log"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0xa00000

    invoke-direct {v1, v0, v4, v2, v3}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    .line 305
    new-instance v0, Lcom/baidu/android/common/logging/SimpleFormatter;

    invoke-direct {v0}, Lcom/baidu/android/common/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/logging/FileHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 307
    invoke-static {p0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p0

    sput-object p0, Lcom/baidu/android/common/logging/Log;->sFilelogger:Ljava/util/logging/Logger;

    .line 308
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {p0, v0}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 309
    sget-object p0, Lcom/baidu/android/common/logging/Log;->sFilelogger:Ljava/util/logging/Logger;

    invoke-virtual {p0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_4c
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_4c} :catch_52
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_4c} :catch_4d

    goto :goto_56

    :catch_4d
    move-exception p0

    .line 314
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_56

    :catch_52
    move-exception p0

    .line 312
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_56
    :goto_56
    return-void
.end method

.method public static setLogEnabled(Z)V
    .registers 1

    .line 281
    sput-boolean p0, Lcom/baidu/android/common/logging/Log;->sLogEnabled:Z

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 55
    sget-boolean v0, Lcom/baidu/android/common/logging/Log;->sLogEnabled:Z

    if-eqz v0, :cond_29

    .line 56
    sget-boolean v0, Lcom/baidu/android/common/logging/Log;->sLog2File:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/baidu/android/common/logging/Log;->sFilelogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_26

    .line 57
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_29

    .line 59
    :cond_26
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/baidu/android/common/logging/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/android/common/logging/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 134
    sget-boolean v0, Lcom/baidu/android/common/logging/Log;->sLogEnabled:Z

    if-eqz v0, :cond_29

    .line 135
    sget-boolean v0, Lcom/baidu/android/common/logging/Log;->sLog2File:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/baidu/android/common/logging/Log;->sFilelogger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_26

    .line 136
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_29

    .line 138
    :cond_26
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    :goto_29
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/baidu/android/common/logging/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/android/common/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
