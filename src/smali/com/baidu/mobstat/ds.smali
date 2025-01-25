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
    .registers 1

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
    .registers 9

    .line 612
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 614
    const/16 v1, 0x14

    const/4 v2, 0x0

    :try_start_8
    new-array v3, v1, [C

    .line 616
    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/sys/class/net/eth0/address"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_5e
    .catchall {:try_start_8 .. :try_end_16} :catchall_55

    .line 617
    :cond_16
    :goto_16
    :try_start_16
    invoke-virtual {v4, v3}, Ljava/io/Reader;->read([C)I

    move-result v5
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_53
    .catchall {:try_start_16 .. :try_end_1a} :catchall_50

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3a

    const/16 v6, 0xd

    if-ne v5, v1, :cond_2d

    .line 618
    const/16 v7, 0x13

    aget-char v7, v3, v7

    if-eq v7, v6, :cond_2d

    .line 619
    :try_start_27
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->print([C)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2c} :catch_53
    .catchall {:try_start_27 .. :try_end_2c} :catchall_50

    goto :goto_16

    :cond_2d
    const/4 v7, 0x0

    :goto_2e
    if-ge v7, v5, :cond_16

    .line 622
    aget-char v8, v3, v7

    if-eq v8, v6, :cond_37

    .line 623
    :try_start_34
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 629
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 630
    const-string v1, ":"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4a} :catch_53
    .catchall {:try_start_34 .. :try_end_4a} :catchall_50

    .line 638
    :try_start_4a
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    move-exception v1

    :goto_4f
    return-object v0

    :catchall_50
    move-exception v0

    move-object v2, v4

    goto :goto_56

    :catch_53
    move-exception v0

    goto :goto_60

    :catchall_55
    move-exception v0

    :goto_56
    if-eqz v2, :cond_5d

    :try_start_58
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_5d

    :catch_5c
    move-exception v1

    .line 641
    :cond_5d
    :goto_5d
    throw v0

    :catch_5e
    move-exception v0

    move-object v4, v2

    :goto_60
    if-eqz v4, :cond_67

    .line 638
    :try_start_62
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_67

    :catch_66
    move-exception v0

    :cond_67
    :goto_67
    return-object v2
.end method

.method private static a(B)Ljava/lang/String;
    .registers 3

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 495
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILandroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 110
    :try_start_0
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    .line 119
    :catch_d
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 129
    sget-object v0, Lcom/baidu/mobstat/ds;->e:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_10

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_10

    .line 144
    :cond_d
    sget-object p0, Lcom/baidu/mobstat/ds;->e:Ljava/lang/String;

    goto :goto_28

    .line 133
    :cond_10
    :goto_10
    invoke-static {p0}, Lcom/baidu/mobstat/dt;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 136
    sget-object v0, Lcom/baidu/mobstat/ds;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 137
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 139
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 140
    sput-object p0, Lcom/baidu/mobstat/ds;->e:Ljava/lang/String;

    :cond_28
    :goto_28
    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    .line 659
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 660
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, ""

    goto :goto_15

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p0

    :goto_15
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 72
    const-string v0, ""

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 78
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_3b

    if-eqz p0, :cond_3c

    .line 85
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1d

    .line 86
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    if-nez p0, :cond_36

    .line 90
    invoke-static {}, Lcom/baidu/mobstat/cx;->c()Lcom/baidu/mobstat/cx;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can\'t find information in AndroidManifest.xml for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/cx;->a(Ljava/lang/String;)V

    return-object v0

    .line 94
    :cond_36
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :catch_3b
    move-exception p0

    :cond_3c
    :goto_3c
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1440
    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    .line 1187
    sget-object v0, Lcom/baidu/mobstat/ds;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 1193
    :cond_5
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1194
    const-string v0, "miui"

    goto :goto_52

    .line 1195
    :cond_14
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1196
    const-string v0, "coloros"

    goto :goto_52

    .line 1197
    :cond_23
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1198
    const-string v0, "emui"

    goto :goto_52

    .line 1199
    :cond_32
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1200
    const-string v0, "funtouch"

    goto :goto_52

    .line 1201
    :cond_41
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 1202
    const-string v0, "smartisan"

    goto :goto_52

    .line 1201
    :cond_50
    const-string v0, ""

    .line 1205
    :goto_52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1206
    const-string v1, "ro.build.display.id"

    invoke-static {v1}, Lcom/baidu/mobstat/ds;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    const-string v2, "Flyme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1208
    const-string v0, "flyme"

    .line 1212
    :cond_6e
    sput-object v0, Lcom/baidu/mobstat/ds;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(ILandroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 159
    invoke-static {p1}, Lcom/baidu/mobstat/util/CuidUtil;->getOaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 236
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/do$a;->a([B)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 1046
    :cond_4
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_18

    add-int/lit8 v0, v0, 0x1

    .line 1047
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_18

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_18
    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1221
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getprop "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_4f
    .catchall {:try_start_1 .. :try_end_17} :catchall_3f

    .line 1222
    :try_start_17
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_3c
    .catchall {:try_start_17 .. :try_end_27} :catchall_3a

    .line 1223
    :try_start_27
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_38
    .catchall {:try_start_27 .. :try_end_2b} :catchall_33

    .line 1229
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v1

    :goto_30
    if-eqz p0, :cond_5e

    goto :goto_5b

    .line 1235
    :catchall_33
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_42

    :catch_38
    move-exception v2

    goto :goto_52

    :catchall_3a
    move-exception v1

    goto :goto_42

    :catch_3c
    move-exception v1

    move-object v1, v0

    goto :goto_52

    :catchall_3f
    move-exception p0

    move-object v1, p0

    move-object p0, v0

    :goto_42
    if-eqz v0, :cond_49

    .line 1229
    :try_start_44
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_49

    :catch_48
    move-exception v0

    :cond_49
    :goto_49
    if-eqz p0, :cond_4e

    .line 1235
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    :cond_4e
    throw v1

    :catch_4f
    move-exception p0

    move-object p0, v0

    move-object v1, p0

    :goto_52
    if-eqz v1, :cond_59

    .line 1229
    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    move-exception v1

    :cond_59
    :goto_59
    if-eqz p0, :cond_5e

    .line 1235
    :goto_5b
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    .line 1229
    :cond_5e
    return-object v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 2

    .line 245
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 247
    :try_start_5
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->e(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_b

    .line 252
    :catch_a
    move-exception p0

    :goto_b
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static c()Ljava/lang/Boolean;
    .registers 4

    .line 1385
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1387
    :try_start_5
    const-string v1, "com.baidu.disasterrecovery.MtjAdapter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 1389
    const-string v2, "shouldUploadOther"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1390
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 1391
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_23

    .line 1392
    check-cast v1, Ljava/lang/Boolean;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_22

    move-object v0, v1

    goto :goto_23

    :catch_22
    move-exception v1

    :cond_23
    :goto_23
    return-object v0
.end method

.method public static c(ILandroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 164
    invoke-static {}, Lcom/baidu/mobstat/dl;->a()Lcom/baidu/mobstat/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dl;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

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
    :cond_22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 189
    const-string v0, ""

    .line 192
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1053
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 1059
    :cond_8
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz p0, :cond_13

    .line 1060
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_14

    :cond_13
    move-object p1, v0

    :goto_14
    return-object p1
.end method

.method public static d(Landroid/content/Context;)I
    .registers 2

    .line 259
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 261
    :try_start_5
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->e(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_b

    .line 266
    :catch_a
    move-exception p0

    :goto_b
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private static d()Ljava/lang/String;
    .registers 9

    .line 459
    const-string v0, ""

    .line 464
    nop

    .line 465
    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 466
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 467
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_f

    .line 471
    :cond_28
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    if-nez v1, :cond_2f

    return-object v0

    .line 476
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    array-length v3, v1
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_63

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_37
    const/4 v6, 0x1

    if-ge v5, v3, :cond_50

    aget-byte v7, v1, v5

    .line 478
    :try_start_3c
    const-string v8, "%02x:"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    .line 480
    :cond_50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5e

    .line 481
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 483
    :cond_5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_62
    .catchall {:try_start_3c .. :try_end_62} :catchall_63

    goto :goto_64

    :catchall_63
    move-exception v1

    :cond_64
    :goto_64
    return-object v0
.end method

.method public static d(ILandroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 200
    invoke-static {p1}, Lcom/baidu/mobstat/util/CuidUtil;->getIid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .registers 3

    .line 270
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 272
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public static e(ILandroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 208
    invoke-static {p1}, Lcom/baidu/mobstat/util/CuidUtil;->getGaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)I
    .registers 3

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 287
    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 288
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception p0

    const/4 p0, 0x1

    return p0
.end method

.method public static f(ILandroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 216
    invoke-static {p1}, Lcom/baidu/mobstat/util/CuidUtil;->getCuid3(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(ILandroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 224
    invoke-static {p1}, Lcom/baidu/mobstat/util/CuidUtil;->getSsaid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 305
    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 306
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return-object p0

    .line 311
    :catch_10
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method public static h(ILandroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 360
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 365
    :cond_d
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_20

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v1

    :goto_20
    return-object v1
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 328
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 330
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_12

    .line 331
    :catch_f
    move-exception p0

    const-string p0, ""

    :goto_12
    return-object p0
.end method

.method public static i(ILandroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 503
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 511
    :cond_d
    invoke-static {p0, p1}, Lcom/baidu/mobstat/ds;->j(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 514
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p0

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    .line 518
    :goto_21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_28

    goto :goto_29

    :cond_28
    move-object v1, p0

    :goto_29
    return-object v1
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 392
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 393
    const-string p0, ""

    return-object p0

    .line 398
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_18

    .line 399
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    .line 401
    :cond_18
    invoke-static {}, Lcom/baidu/mobstat/ds;->d()Ljava/lang/String;

    move-result-object p0

    :goto_1c
    return-object p0
.end method

.method public static j(ILandroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 527
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 535
    :cond_d
    invoke-static {}, Lcom/baidu/mobstat/ds;->a()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 538
    invoke-static {p0, p1}, Lcom/baidu/mobstat/ds;->k(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 541
    :cond_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    move-object v1, v0

    :goto_23
    return-object v1
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 431
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 436
    :cond_d
    :try_start_d
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 437
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 439
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 441
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    .line 442
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_2e

    if-nez v0, :cond_2f

    return-object p0

    :catch_2e
    move-exception p0

    :cond_2f
    return-object v1
.end method

.method public static k(ILandroid/content/Context;)Ljava/lang/String;
    .registers 9

    .line 559
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 561
    const/4 v1, 0x0

    :try_start_6
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 562
    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 563
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 564
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 566
    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 567
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 568
    invoke-virtual {v5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v6

    if-nez v6, :cond_1a

    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1a

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-eqz v6, :cond_37

    goto :goto_1a

    .line 571
    :cond_37
    invoke-virtual {v5}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 572
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    goto :goto_1a

    .line 573
    :cond_42
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_1a

    .line 574
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4c} :catch_4d

    goto :goto_a

    :catch_4d
    move-exception v2

    .line 583
    :cond_4e
    const-string v2, ""

    const-string v3, ":"

    if-eqz v1, :cond_74

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 584
    :goto_56
    array-length v4, v1

    if-ge p1, v4, :cond_65

    .line 585
    aget-byte v4, v1, p1

    invoke-static {v4}, Lcom/baidu/mobstat/ds;->a(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_56

    .line 587
    :cond_65
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 588
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 592
    :cond_74
    invoke-static {p0, p1}, Lcom/baidu/mobstat/ds;->h(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7e

    .line 595
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_7e
    return-object p0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 676
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 678
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_d

    if-eqz p0, :cond_e

    return-object p0

    .line 687
    :catch_d
    move-exception p0

    :cond_e
    const-string p0, ""

    return-object p0
.end method

.method public static l(ILandroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 709
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 713
    :cond_d
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 714
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_20

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object v1

    :goto_20
    return-object v1
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 741
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 745
    :cond_d
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 746
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 747
    const-string v3, "4.1.1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "TCT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    return-object v1

    .line 752
    :cond_22
    :try_start_22
    const-string v0, "android.permission.BLUETOOTH"

    invoke-static {p0, v0}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 753
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 755
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_34} :catch_37

    if-eqz p0, :cond_38

    return-object p0

    :catch_37
    move-exception p0

    :cond_38
    return-object v1
.end method

.method public static m(ILandroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 806
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 821
    :cond_d
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 822
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object v1

    .line 826
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->d(I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 775
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dq;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_d

    return-object v1

    .line 790
    :cond_d
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 791
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object v1

    .line 795
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/baidu/mobstat/dh$a;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(ILandroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 998
    invoke-static {p1}, Lcom/baidu/mobstat/ds;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 999
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1001
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/baidu/mobstat/dh$b;->c(I[B)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    return-object p0

    .line 1007
    :catch_13
    move-exception p0

    :cond_14
    const-string p0, ""

    return-object p0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 13

    .line 843
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 847
    :cond_5
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v1}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    return-object v0

    .line 854
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 855
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_22

    .line 858
    :try_start_1b
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_20

    goto :goto_25

    :catchall_20
    move-exception p0

    goto :goto_24

    :catchall_22
    move-exception p0

    move-object v2, v1

    :goto_24
    move-object p0, v1

    :goto_25
    if-eqz p0, :cond_35

    .line 863
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_35

    .line 864
    new-instance v3, Lcom/baidu/mobstat/ds$2;

    invoke-direct {v3}, Lcom/baidu/mobstat/ds$2;-><init>()V

    invoke-static {p0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 873
    :cond_35
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 874
    :goto_3c
    const-string v6, "|"

    if-eqz p0, :cond_9d

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_9d

    const/16 v7, 0x1e

    if-ge v5, v7, :cond_9d

    .line 876
    :try_start_4a
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 878
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v11, "\\|"

    invoke-virtual {v10, v11, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 884
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v7, :cond_6f

    invoke-virtual {v10, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_6f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget v7, v8, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_8d

    .line 890
    iget-object v6, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    const/4 v6, 0x1

    goto :goto_8e

    :cond_8d
    const/4 v6, 0x0

    :goto_8e
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_98} :catch_99

    goto :goto_9a

    .line 913
    :catch_99
    move-exception v6

    .line 892
    :goto_9a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 898
    :cond_9d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-nez p0, :cond_a4

    return-object v1

    .line 902
    :cond_a4
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 904
    :try_start_a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 910
    const-string v2, "ap-list"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 911
    const-string v2, "meta-data"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 913
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_cd} :catch_ce

    return-object p0

    :catch_ce
    move-exception p0

    return-object v0
.end method

.method public static o(Landroid/content/Context;)Z
    .registers 3

    if-eqz p0, :cond_1f

    .line 930
    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 931
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 932
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1e

    if-eqz p0, :cond_1f

    goto :goto_20

    :catch_1e
    move-exception p0

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 944
    const-string v0, ""

    .line 947
    :try_start_2
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 948
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 951
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 953
    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 954
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception p0

    :cond_28
    :goto_28
    return-object v0
.end method

.method public static q(Landroid/content/Context;)Z
    .registers 3

    if-eqz p0, :cond_1f

    .line 972
    nop

    .line 973
    :try_start_3
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 975
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v1}, Lcom/baidu/mobstat/dj;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 976
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 978
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_7

    .line 991
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 994
    :cond_7
    const-string p0, ""

    return-object p0
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 1075
    sget-object v0, Lcom/baidu/mobstat/ds;->b:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 1077
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1078
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ds;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1080
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ds;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_16
    if-nez v1, :cond_1c

    .line 1084
    const-string p0, ""

    move-object v0, p0

    goto :goto_1d

    :cond_1c
    move-object v0, v1

    .line 1088
    :goto_1d
    sput-object v0, Lcom/baidu/mobstat/ds;->b:Ljava/lang/String;

    :cond_1f
    return-object v0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 1102
    invoke-static {p0}, Lcom/baidu/mobstat/ds;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    .line 1107
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1110
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x4

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_17

    goto :goto_19

    :catch_17
    move-exception p0

    const/4 p0, 0x0

    :goto_19
    if-nez p0, :cond_1c

    return-object v1

    .line 1119
    :cond_1c
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_21

    return-object v1

    .line 1124
    :cond_21
    array-length v2, p0

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_35

    aget-object v4, p0, v3

    .line 1125
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 1126
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1127
    iget-object p0, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_36

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_35
    move-object p0, v1

    :goto_36
    if-nez p0, :cond_39

    goto :goto_3a

    :cond_39
    move-object v1, p0

    :goto_3a
    return-object v1
.end method

.method public static u(Landroid/content/Context;)Z
    .registers 2

    if-eqz p0, :cond_11

    .line 1141
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_10

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :catch_10
    move-exception p0

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1151
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1153
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1154
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1156
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 1157
    const-string v1, "m"

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1158
    const-string v1, "l"

    iget-boolean v2, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1159
    const-string v1, "t"

    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1161
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1162
    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1166
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1167
    const-string v2, "app_mem"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1168
    const-string v0, "meta-data"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1170
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 1172
    invoke-static {p0}, Lcom/baidu/mobstat/dh$a;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    return-object p0

    .line 1177
    :catch_5e
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method private static w(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 1011
    sget-object v0, Lcom/baidu/mobstat/ds;->a:Ljava/lang/String;

    if-nez v0, :cond_37

    .line 1014
    :try_start_4
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1016
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    :goto_11
    if-eqz p0, :cond_30

    .line 1017
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1018
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v2, :cond_2c

    .line 1020
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_2c

    .line 1021
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_2f

    goto :goto_30

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :catch_2f
    move-exception p0

    :cond_30
    :goto_30
    if-nez v0, :cond_35

    .line 1030
    const-string p0, ""

    move-object v0, p0

    .line 1034
    :cond_35
    sput-object v0, Lcom/baidu/mobstat/ds;->a:Ljava/lang/String;

    :cond_37
    return-object v0
.end method
