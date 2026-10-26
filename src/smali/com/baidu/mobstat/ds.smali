.class public Lcom/baidu/mobstat/ds;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final d:Ljava/util/regex/Pattern;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-string v0, "\\s*|\t|\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/ds;->d:Ljava/util/regex/Pattern;

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/baidu/mobstat/ds;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 9

    const/16 v8, 0x14

    const/16 v7, 0xd

    const/4 v0, 0x0

    .line 612
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 614
    const/16 v1, 0x14

    :try_start_0
    new-array v4, v1, [C

    .line 616
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    const-string v5, "/sys/class/net/eth0/address"

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 617
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/io/Reader;->read([C)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    const/4 v2, -0x1

    if-eq v5, v2, :cond_4

    if-ne v5, v8, :cond_2

    .line 618
    const/16 v2, 0x13

    aget-char v2, v4, v2

    if-eq v2, v7, :cond_2

    .line 619
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print([C)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v2

    .line 641
    :goto_1
    if-eqz v1, :cond_1

    .line 638
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_2
    return-object v0

    .line 619
    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_0

    .line 622
    aget-char v6, v4, v2

    if-eq v6, v7, :cond_3

    .line 623
    :try_start_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 629
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 630
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 638
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v0

    :goto_4
    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 641
    :cond_5
    :goto_5
    throw v3

    .line 638
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v1

    goto :goto_4

    .line 641
    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_1

    .line 638
    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private static a(B)Ljava/lang/String;
    .locals 2

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 110
    :try_start_0
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 129
    sget-object v0, Lcom/baidu/mobstat/ds;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/baidu/mobstat/ds;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 137
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    sput-object v0, Lcom/baidu/mobstat/ds;->e:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0

    .line 144
    :cond_2
    sget-object v0, Lcom/baidu/mobstat/ds;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 659
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 660
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 72
    const-string v0, ""

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 78
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    .line 90
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t find information in AndroidManifest.xml for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    const-string v0, ""

    .line 94
    :cond_0
    :goto_1
    return-object v0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1440
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .line 1187
    sget-object v0, Lcom/baidu/mobstat/ds;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1212
    :goto_0
    return-object v0

    .line 1193
    :cond_0
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1194
    const-string v0, "miui"

    .line 1205
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1206
    const-string v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Flyme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1208
    const-string v0, "flyme"

    .line 1212
    :cond_1
    sput-object v0, Lcom/baidu/mobstat/ds;->c:Ljava/lang/String;

    goto :goto_0

    .line 1195
    :cond_2
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1196
    const-string v0, "coloros"

    goto :goto_1

    .line 1197
    :cond_3
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1198
    const-string v0, "emui"

    goto :goto_1

    .line 1199
    :cond_4
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1200
    const-string v0, "funtouch"

    goto :goto_1

    .line 1201
    :cond_5
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1202
    const-string v0, "smartisan"

    goto :goto_1

    .line 1201
    :cond_6
    const-string v0, ""

    goto :goto_1
.end method

.method public static b(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 159
    invoke-static {p1}, Lcom/baidu/mobstat/util/CuidUtil;->getOaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 236
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/do$a;->a([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-object v0

    .line 1046
    :cond_1
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1047
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 1221
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getprop "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v1

    .line 1222
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1223
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 1229
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_0
    if-eqz v1, :cond_0

    .line 1235
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 1229
    :cond_0
    return-object v0

    .line 1235
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    :goto_2
    if-eqz v3, :cond_1

    .line 1229
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_3
    if-eqz v5, :cond_2

    .line 1235
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V

    :cond_2
    throw v4

    :catchall_1
    move-exception v2

    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_3

    .line 1229
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_5
    if-eqz v1, :cond_0

    goto :goto_1

    .line 1235
    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_4

    .line 1229
    :catch_3
    move-exception v2

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_5
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    .line 245
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 247
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->e(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c()Ljava/lang/Boolean;
    .locals 4

    .line 1385
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1387
    :try_start_0
    const-string v0, "com.baidu.disasterrecovery.MtjAdapter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1389
    const-string v2, "shouldUploadOther"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1390
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1391
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 1392
    check-cast v0, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static c(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 164
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/baidu/mobstat/dw;->a()Lcom/baidu/mobstat/dw;

    move-result-object v1

    new-instance v2, Lcom/baidu/mobstat/ds$1;

    invoke-direct {v2, p1}, Lcom/baidu/mobstat/ds$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/dw;->a(Landroid/content/Context;Lcom/baidu/mobstat/dv;)V

    .line 188
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const-string v0, ""

    .line 192
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1053
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1060
    :goto_0
    return-object v0

    .line 1059
    :cond_0
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1060
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    .line 259
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 261
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->e(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 266
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d()Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    .line 459
    const-string v1, ""

    .line 464
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 466
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 467
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wlan0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, ""

    .line 483
    :goto_0
    return-object v0

    .line 476
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    array-length v5, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_2

    aget-byte v2, v3, v0

    .line 478
    :try_start_2
    const-string v6, "%02x:"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 480
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 481
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 483
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static d(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 200
    invoke-static {p1}, Lcom/baidu/mobstat/util/CuidUtil;->getIid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 3

    .line 270
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 272
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v1
.end method

.method public static e(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 208
    invoke-static {p1}, Lcom/baidu/mobstat/util/CuidUtil;->getGaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 3

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 287
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 288
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 216
    invoke-static {p1}, Lcom/baidu/mobstat/util/CuidUtil;->getCuid3(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 224
    invoke-static {p1}, Lcom/baidu/mobstat/util/CuidUtil;->getSsaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 305
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 306
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static h(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 360
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v1

    const-string v0, ""

    if-nez v1, :cond_1

    const-string v0, ""

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 365
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 328
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 330
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static i(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 503
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    const-string v0, ""

    .line 518
    :cond_0
    :goto_0
    return-object v0

    .line 511
    :cond_1
    invoke-static {p0, p1}, Lcom/baidu/mobstat/ds;->j(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 515
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 515
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 392
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const-string v0, ""

    .line 401
    :goto_0
    return-object v0

    .line 398
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 399
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/ds;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static j(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 527
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    const-string v0, ""

    .line 541
    :cond_0
    :goto_0
    return-object v0

    .line 535
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/ds;->a()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 538
    invoke-static {p0, p1}, Lcom/baidu/mobstat/ds;->k(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 541
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 431
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 442
    :cond_0
    :goto_0
    return-object v0

    .line 436
    :cond_1
    :try_start_0
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 439
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :goto_1
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static k(ILandroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 559
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 561
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v1, v0

    .line 562
    :goto_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 564
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    move-object v2, v1

    .line 566
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 567
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 568
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v7

    if-nez v7, :cond_0

    instance-of v7, v1, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_0

    .line 571
    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 572
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    goto :goto_1

    .line 573
    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    move-object v1, v2

    .line 583
    :cond_2
    if-eqz v1, :cond_5

    move v0, v3

    .line 584
    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 585
    aget-byte v2, v1, v0

    invoke-static {v2}, Lcom/baidu/mobstat/ds;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 587
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v3, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 588
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    :cond_4
    :goto_4
    return-object v0

    .line 592
    :cond_5
    invoke-static {p0, p1}, Lcom/baidu/mobstat/ds;->h(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 595
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 574
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 676
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static l(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 709
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v1

    const-string v0, ""

    if-nez v1, :cond_1

    const-string v0, ""

    .line 714
    :cond_0
    :goto_0
    return-object v0

    .line 713
    :cond_1
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 714
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 741
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 755
    :cond_0
    :goto_0
    return-object v0

    .line 745
    :cond_1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 746
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 747
    const-string v2, "4.1.1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TCT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_0

    .line 752
    :cond_2
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 753
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 755
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    :cond_3
    :goto_1
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static m(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 806
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 826
    :goto_0
    return-object v0

    .line 821
    :cond_0
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 826
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->d(I[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 775
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 795
    :goto_0
    return-object v0

    .line 790
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 791
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    goto :goto_0

    .line 795
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/dh$a;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static n(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 998
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 999
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1001
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1007
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 843
    if-nez p0, :cond_1

    const-string v2, ""

    .line 913
    :cond_0
    :goto_0
    return-object v2

    .line 847
    :cond_1
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v2, ""

    goto :goto_0

    .line 854
    :cond_2
    :try_start_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 855
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 858
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v5, v0

    move-object v6, v1

    :goto_1
    if-eqz v5, :cond_3

    .line 863
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 864
    new-instance v0, Lcom/baidu/mobstat/ds$2;

    invoke-direct {v0}, Lcom/baidu/mobstat/ds$2;-><init>()V

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 873
    :cond_3
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move v4, v3

    .line 874
    :goto_2
    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    if-ge v4, v11, :cond_6

    .line 876
    :try_start_2
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 878
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    const-string v1, "|"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v9, "\\|"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 884
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    const/4 v9, 0x0

    const/16 v10, 0x1e

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    const-string v1, "|"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 888
    const-string v1, "|"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_5

    .line 890
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 858
    :catchall_0
    move-exception v0

    move-object v0, v1

    :goto_5
    move-object v5, v2

    move-object v6, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :cond_5
    move v0, v3

    .line 890
    goto :goto_3

    .line 898
    :cond_6
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 904
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 907
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 910
    const-string v2, "ap-list"

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 911
    const-string v2, "meta-data"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 913
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, ""

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 930
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 931
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 944
    const-string v1, ""

    .line 947
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 948
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 951
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 953
    :try_start_1
    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 954
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 972
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 975
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 976
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 991
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 994
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1075
    sget-object v0, Lcom/baidu/mobstat/ds;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1077
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1078
    invoke-static {p0, v1}, Lcom/baidu/mobstat/ds;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1080
    invoke-static {p0, v1}, Lcom/baidu/mobstat/ds;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 1084
    const-string v0, ""

    .line 1088
    :cond_1
    sput-object v0, Lcom/baidu/mobstat/ds;->b:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1102
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1103
    const-string v0, ""

    if-nez v2, :cond_1

    const-string v0, ""

    .line 1127
    :cond_0
    :goto_0
    return-object v0

    .line 1107
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1110
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1

    .line 1119
    :cond_2
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_3

    const-string v0, ""

    goto :goto_0

    .line 1124
    :cond_3
    array-length v4, v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v5, v3, v1

    .line 1125
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 1126
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1127
    iget-object v1, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    :goto_3
    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const-string v1, ""

    goto :goto_3
.end method

.method public static u(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1151
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1153
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1154
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1157
    const-string v2, "m"

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1158
    const-string v2, "l"

    iget-boolean v3, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1159
    const-string v2, "t"

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1161
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1162
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1166
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1167
    const-string v3, "app_mem"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1168
    const-string v1, "meta-data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1170
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1172
    invoke-static {v0}, Lcom/baidu/mobstat/dh$a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1177
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1011
    sget-object v1, Lcom/baidu/mobstat/ds;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1014
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1016
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-eqz v3, :cond_2

    .line 1017
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1018
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_1

    .line 1020
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1021
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_0

    .line 1030
    const-string v0, ""

    .line 1034
    :cond_0
    sput-object v0, Lcom/baidu/mobstat/ds;->a:Ljava/lang/String;

    :goto_2
    return-object v0

    .line 1021
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method
