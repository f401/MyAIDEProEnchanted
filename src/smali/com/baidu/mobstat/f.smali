.class Lcom/baidu/mobstat/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/f$a;
    }
.end annotation


# static fields
.field static a:Lcom/baidu/mobstat/f;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/baidu/mobstat/f;

    invoke-direct {v0}, Lcom/baidu/mobstat/f;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/f;->a:Lcom/baidu/mobstat/f;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobstat/f;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 217
    const-string v0, ""

    if-nez p1, :cond_9

    return-object v0

    .line 222
    :cond_9
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 223
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_10} :catch_11

    goto :goto_1a

    :catch_11
    move-exception p1

    .line 225
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_1a
    if-nez p1, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object v0, p1

    :goto_1e
    return-object v0
.end method

.method private a(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/f$a;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/f;->c(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/f$a;",
            ">;Z)V"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    :try_start_20
    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    .line 269
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_29
    :goto_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mobstat/f$a;

    .line 270
    invoke-virtual {v1}, Lcom/baidu/mobstat/f$a;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 272
    invoke-virtual {p3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_29

    .line 276
    :cond_3f
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 277
    const-string v1, "app_trace"

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string p3, "meta-data"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mobstat/dh$a;->a([B)Ljava/lang/String;

    move-result-object p2
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5e} :catch_5f

    goto :goto_69

    :catch_5f
    move-exception p2

    .line 283
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    const-string p2, ""

    .line 286
    :goto_69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_78

    .line 287
    sget-object p3, Lcom/baidu/mobstat/k;->c:Lcom/baidu/mobstat/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;JLjava/lang/String;)J

    :cond_78
    return-void
.end method

.method private a(Landroid/content/Context;ZI)V
    .registers 6

    .line 61
    invoke-direct {p0, p1, p3}, Lcom/baidu/mobstat/f;->a(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_27

    .line 62
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_27

    :cond_d
    if-eqz p2, :cond_24

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/f$a;

    invoke-virtual {v0}, Lcom/baidu/mobstat/f$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/baidu/mobstat/f;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 70
    iput-object v0, p0, Lcom/baidu/mobstat/f;->b:Ljava/lang/String;

    .line 74
    :cond_24
    invoke-direct {p0, p1, p3, p2}, Lcom/baidu/mobstat/f;->a(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    :cond_27
    :goto_27
    return-void
.end method

.method private a(I)Z
    .registers 3

    const/16 v0, 0x64

    if-eq p1, v0, :cond_f

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_f

    const/16 v0, 0x82

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Lcom/baidu/mobstat/f;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/f$a;",
            ">;"
        }
    .end annotation

    .line 96
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 101
    const/16 v1, 0x32

    :try_start_a
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_18

    :catch_f
    move-exception v0

    .line 103
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_18
    if-nez v0, :cond_20

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 111
    :cond_20
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 114
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-le v3, p2, :cond_3c

    goto :goto_6b

    .line 118
    :cond_3c
    invoke-static {v2}, Lcom/baidu/mobstat/f$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_43

    goto :goto_29

    .line 123
    :cond_43
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_29

    .line 128
    :cond_4e
    invoke-direct {p0, p1, v2}, Lcom/baidu/mobstat/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_29

    .line 132
    :cond_55
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_29

    .line 136
    :cond_5c
    invoke-direct {p0, p1, v2}, Lcom/baidu/mobstat/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    new-instance v4, Lcom/baidu/mobstat/f$a;

    const-string v5, ""

    invoke-direct {v4, v2, v3, v5}, Lcom/baidu/mobstat/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 141
    :cond_6b
    :goto_6b
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 240
    :cond_8
    :try_start_8
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 241
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_11

    return v0

    .line 246
    :cond_11
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_13} :catch_19

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    goto :goto_21

    :catch_19
    move-exception p1

    .line 248
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    return v0
.end method

.method private c(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/f$a;",
            ">;"
        }
    .end annotation

    .line 145
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 146
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_14

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 153
    :cond_14
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 155
    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6d

    .line 156
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    if-le v4, p2, :cond_28

    goto :goto_6d

    .line 160
    :cond_28
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 162
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-direct {p0, v5}, Lcom/baidu/mobstat/f;->a(I)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_6a

    .line 166
    :cond_37
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v5, :cond_6a

    .line 167
    array-length v5, v5

    if-nez v5, :cond_3f

    goto :goto_6a

    .line 171
    :cond_3f
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 172
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4a

    goto :goto_6a

    .line 176
    :cond_4a
    invoke-direct {p0, p1, v5}, Lcom/baidu/mobstat/f;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    goto :goto_6a

    .line 180
    :cond_51
    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    goto :goto_6a

    .line 184
    :cond_58
    invoke-direct {p0, p1, v5}, Lcom/baidu/mobstat/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 185
    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 186
    new-instance v7, Lcom/baidu/mobstat/f$a;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v5, v6, v4}, Lcom/baidu/mobstat/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1, v5, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6a
    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 190
    :cond_6d
    :goto_6d
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)V
    .registers 4

    monitor-enter p0

    if-nez p2, :cond_6

    const/16 v0, 0x14

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    .line 52
    :goto_7
    :try_start_7
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/f;->a(Landroid/content/Context;ZI)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 53
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
