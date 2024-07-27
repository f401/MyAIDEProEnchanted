.class public abstract enum Lcom/baidu/mobstat/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/k;

.field public static final enum b:Lcom/baidu/mobstat/k;

.field public static final enum c:Lcom/baidu/mobstat/k;

.field public static final enum d:Lcom/baidu/mobstat/k;

.field public static final enum e:Lcom/baidu/mobstat/k;

.field private static final g:[Lcom/baidu/mobstat/k;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/baidu/mobstat/k$1;

    const-string v1, "AP_LIST"

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mobstat/k$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    .line 26
    new-instance v0, Lcom/baidu/mobstat/k$2;

    const-string v1, "APP_LIST"

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/mobstat/k$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/k;->b:Lcom/baidu/mobstat/k;

    .line 33
    new-instance v0, Lcom/baidu/mobstat/k$3;

    const-string v1, "APP_TRACE"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/mobstat/k$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/k;->c:Lcom/baidu/mobstat/k;

    .line 40
    new-instance v0, Lcom/baidu/mobstat/k$4;

    const-string v1, "APP_CHANGE"

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/mobstat/k$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/k;->d:Lcom/baidu/mobstat/k;

    .line 47
    new-instance v0, Lcom/baidu/mobstat/k$5;

    const-string v1, "APP_APK"

    invoke-direct {v0, v1, v6, v6}, Lcom/baidu/mobstat/k$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/k;->e:Lcom/baidu/mobstat/k;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/mobstat/k;

    sget-object v1, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobstat/k;->b:Lcom/baidu/mobstat/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobstat/k;->c:Lcom/baidu/mobstat/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobstat/k;->d:Lcom/baidu/mobstat/k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobstat/k;->e:Lcom/baidu/mobstat/k;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/mobstat/k;->g:[Lcom/baidu/mobstat/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput p3, p0, Lcom/baidu/mobstat/k;->f:I

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/baidu/mobstat/k$1;)V
    .registers 5

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/k;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;II)I
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/i;",
            ">;II)I"
        }
    .end annotation

    .line 292
    const/4 v3, 0x0

    .line 295
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/k;->c(Landroid/content/Context;)I

    move-result v2

    const/4 v1, 0x0

    move v4, v1

    move/from16 v0, p6

    .line 300
    :goto_0
    if-lez v2, :cond_4

    .line 301
    if-ge v2, v0, :cond_3

    move v1, v2

    .line 305
    :goto_1
    invoke-virtual {p0, p1, v1, v4}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v5

    .line 307
    if-nez v4, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/i;

    .line 309
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/i;

    .line 313
    invoke-virtual {v0}, Lcom/baidu/mobstat/i;->a()J

    move-result-wide v6

    .line 314
    invoke-virtual {v0}, Lcom/baidu/mobstat/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    .line 317
    add-int v9, v3, v8

    if-le v9, p5, :cond_2

    .line 326
    :cond_1
    sub-int/2addr v2, v1

    .line 327
    add-int/2addr v4, v1

    move v0, v1

    .line 328
    goto :goto_0

    .line 320
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    add-int v0, v3, v8

    move v3, v0

    .line 324
    goto :goto_2

    :cond_3
    move v1, v0

    .line 330
    goto :goto_1

    :cond_4
    return v3
.end method

.method private c(Landroid/content/Context;)I
    .registers 5

    const/4 v1, 0x0

    .line 354
    .line 356
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;)Lcom/baidu/mobstat/j;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 363
    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V

    .line 368
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    if-eqz v1, :cond_2

    .line 364
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V

    goto :goto_1

    .line 363
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 364
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V

    :cond_3
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/k;
    .registers 2

    .line 17
    const-class v0, Lcom/baidu/mobstat/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/k;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/k;
    .registers 1

    .line 17
    sget-object v0, Lcom/baidu/mobstat/k;->g:[Lcom/baidu/mobstat/k;

    invoke-virtual {v0}, [Lcom/baidu/mobstat/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/k;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/ArrayList;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 224
    monitor-enter p0

    .line 225
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v1, v0

    .line 255
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    .line 231
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;)Lcom/baidu/mobstat/j;

    move-result-object v3

    .line 232
    invoke-virtual {v3}, Lcom/baidu/mobstat/j;->a()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 233
    if-nez v1, :cond_4

    .line 250
    if-eqz v3, :cond_3

    .line 251
    :try_start_2
    invoke-virtual {v3}, Lcom/baidu/mobstat/j;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    move v1, v0

    .line 234
    goto :goto_0

    .line 237
    :cond_4
    :try_start_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    move v2, v0

    move v1, v0

    .line 238
    :goto_1
    if-ge v2, v4, :cond_6

    .line 239
    :try_start_4
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 240
    invoke-virtual {v3, v6, v7}, Lcom/baidu/mobstat/j;->b(J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    .line 241
    if-nez v0, :cond_5

    .line 250
    if-eqz v3, :cond_1

    .line 251
    :try_start_5
    invoke-virtual {v3}, Lcom/baidu/mobstat/j;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 244
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 238
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 250
    :cond_6
    if-eqz v3, :cond_1

    .line 251
    :try_start_6
    invoke-virtual {v3}, Lcom/baidu/mobstat/j;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 248
    :goto_2
    :try_start_7
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 250
    if-eqz v3, :cond_8

    .line 251
    :try_start_8
    invoke-virtual {v3}, Lcom/baidu/mobstat/j;->close()V

    move v1, v0

    goto :goto_0

    .line 250
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_7

    .line 251
    invoke-virtual {v3}, Lcom/baidu/mobstat/j;->close()V

    :cond_7
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 247
    :catch_1
    move-exception v2

    move v0, v1

    goto :goto_2

    :cond_8
    move v1, v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;)J
    .registers 11

    const/4 v3, 0x0

    .line 133
    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 138
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;)Lcom/baidu/mobstat/j;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Lcom/baidu/mobstat/j;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    .line 140
    if-nez v2, :cond_1

    .line 149
    if-eqz v3, :cond_0

    .line 150
    :try_start_1
    invoke-virtual {v3}, Lcom/baidu/mobstat/j;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 144
    :cond_1
    :try_start_2
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, p4}, Lcom/baidu/mobstat/j;->a(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 149
    if-eqz v3, :cond_0

    .line 150
    :try_start_3
    invoke-virtual {v3}, Lcom/baidu/mobstat/j;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 146
    :catch_0
    move-exception v2

    .line 147
    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    if-eqz v3, :cond_0

    .line 150
    :try_start_5
    invoke-virtual {v3}, Lcom/baidu/mobstat/j;->close()V

    goto :goto_0

    .line 149
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_2

    .line 150
    invoke-virtual {v3}, Lcom/baidu/mobstat/j;->close()V

    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public abstract a(Landroid/content/Context;)Lcom/baidu/mobstat/j;
.end method

.method public a(Landroid/content/Context;II)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/i;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 103
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;)Lcom/baidu/mobstat/j;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lcom/baidu/mobstat/j;->a()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 109
    if-nez v1, :cond_1

    .line 117
    if-eqz v2, :cond_0

    .line 118
    :try_start_2
    invoke-virtual {v2}, Lcom/baidu/mobstat/j;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 113
    :cond_1
    :try_start_3
    invoke-virtual {v2, p2, p3}, Lcom/baidu/mobstat/j;->a(II)Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 117
    if-eqz v2, :cond_0

    .line 118
    :try_start_4
    invoke-virtual {v2}, Lcom/baidu/mobstat/j;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    :try_start_5
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 117
    if-eqz v2, :cond_0

    .line 118
    :try_start_6
    invoke-virtual {v2}, Lcom/baidu/mobstat/j;->close()V

    goto :goto_0

    .line 117
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {v2}, Lcom/baidu/mobstat/j;->close()V

    :cond_2
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public a(Landroid/content/Context;I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 267
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    const/16 v6, 0x1f4

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;II)I

    .line 272
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/i;

    .line 274
    invoke-virtual {v0}, Lcom/baidu/mobstat/i;->a()J

    move-result-wide v4

    .line 275
    invoke-virtual {v0}, Lcom/baidu/mobstat/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v0

    .line 282
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 283
    if-eq v0, v1, :cond_1

    .line 284
    const/4 v1, 0x0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 287
    :cond_1
    monitor-exit p0

    return-object v2

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/content/Context;)Z
    .registers 3

    .line 340
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/k;->c(Landroid/content/Context;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/content/Context;I)Z
    .registers 4

    .line 350
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/k;->c(Landroid/content/Context;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 64
    iget v0, p0, Lcom/baidu/mobstat/k;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
