.class public abstract enum Lcom/baidu/mobstat/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 11

    .line 19
    new-instance v0, Lcom/baidu/mobstat/k$1;

    const-string v1, "AP_LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mobstat/k$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobstat/k;->a:Lcom/baidu/mobstat/k;

    .line 26
    new-instance v1, Lcom/baidu/mobstat/k$2;

    const-string v3, "APP_LIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/baidu/mobstat/k$2;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/baidu/mobstat/k;->b:Lcom/baidu/mobstat/k;

    .line 33
    new-instance v3, Lcom/baidu/mobstat/k$3;

    const-string v5, "APP_TRACE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/baidu/mobstat/k$3;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/baidu/mobstat/k;->c:Lcom/baidu/mobstat/k;

    .line 40
    new-instance v5, Lcom/baidu/mobstat/k$4;

    const-string v7, "APP_CHANGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/baidu/mobstat/k$4;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/baidu/mobstat/k;->d:Lcom/baidu/mobstat/k;

    .line 47
    new-instance v7, Lcom/baidu/mobstat/k$5;

    const-string v9, "APP_APK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/baidu/mobstat/k$5;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/baidu/mobstat/k;->e:Lcom/baidu/mobstat/k;

    .line 17
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/baidu/mobstat/k;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/baidu/mobstat/k;->g:[Lcom/baidu/mobstat/k;

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

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/baidu/mobstat/k$1;)V
    .registers 5

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/k;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;II)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/i;",
            ">;II)I"
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/k;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-lez v0, :cond_50

    if-ge v0, p6, :cond_c

    move p6, v0

    .line 305
    :cond_c
    invoke-virtual {p0, p1, p6, v3}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v3, :cond_21

    .line 307
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_21

    .line 308
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mobstat/i;

    .line 309
    invoke-virtual {p4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_21
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/mobstat/i;

    .line 313
    invoke-virtual {v5}, Lcom/baidu/mobstat/i;->a()J

    move-result-wide v6

    .line 314
    invoke-virtual {v5}, Lcom/baidu/mobstat/i;->b()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    if-le v8, p5, :cond_41

    goto :goto_4d

    .line 320
    :cond_41
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v8

    goto :goto_25

    :cond_4d
    :goto_4d
    sub-int/2addr v0, p6

    add-int/2addr v3, p6

    goto :goto_7

    :cond_50
    return v2
.end method

.method private c(Landroid/content/Context;)I
    .registers 4

    .line 356
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;)Lcom/baidu/mobstat/j;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/baidu/mobstat/j;->a()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 358
    invoke-virtual {v0}, Lcom/baidu/mobstat/j;->b()I

    move-result p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_1a
    .catchall {:try_start_1 .. :try_end_f} :catchall_18

    if-eqz v0, :cond_14

    .line 364
    invoke-virtual {v0}, Lcom/baidu/mobstat/j;->close()V

    :cond_14
    return p1

    :cond_15
    if-eqz v0, :cond_27

    goto :goto_24

    :catchall_18
    move-exception p1

    goto :goto_29

    :catch_1a
    move-exception p1

    .line 361
    :try_start_1b
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    if-eqz v0, :cond_27

    .line 364
    :goto_24
    invoke-virtual {v0}, Lcom/baidu/mobstat/j;->close()V

    .line 361
    :cond_27
    const/4 p1, 0x0

    return p1

    :goto_29
    if-eqz v0, :cond_2e

    .line 364
    invoke-virtual {v0}, Lcom/baidu/mobstat/j;->close()V

    :cond_2e
    throw p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/k;
    .registers 2

    .line 17
    const-class v0, Lcom/baidu/mobstat/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/mobstat/k;

    return-object p0
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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p2, :cond_64

    .line 225
    :try_start_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_61

    if-nez v1, :cond_b

    goto :goto_64

    .line 231
    :cond_b
    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;)Lcom/baidu/mobstat/j;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->a()Z

    move-result p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_4b
    .catchall {:try_start_c .. :try_end_14} :catchall_49

    if-nez p1, :cond_1d

    if-eqz v1, :cond_1b

    .line 251
    :try_start_18
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_61

    .line 234
    :cond_1b
    monitor-exit p0

    return v0

    .line 237
    :cond_1d
    :try_start_1d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_4b
    .catchall {:try_start_1d .. :try_end_21} :catchall_49

    const/4 v2, 0x0

    :goto_22
    if-ge v0, p1, :cond_43

    .line 239
    :try_start_24
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 240
    invoke-virtual {v1, v3, v4}, Lcom/baidu/mobstat/j;->b(J)Z

    move-result v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_32} :catch_40
    .catchall {:try_start_24 .. :try_end_32} :catchall_49

    if-nez v3, :cond_3b

    if-eqz v1, :cond_39

    .line 251
    :try_start_36
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_61

    .line 242
    :cond_39
    monitor-exit p0

    return v2

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :catch_40
    move-exception p1

    move v0, v2

    goto :goto_4c

    :cond_43
    if-eqz v1, :cond_59

    .line 251
    :try_start_45
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_61

    goto :goto_59

    :catchall_49
    move-exception p1

    goto :goto_5b

    :catch_4b
    move-exception p1

    .line 248
    :goto_4c
    :try_start_4c
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_49

    if-eqz v1, :cond_58

    .line 251
    :try_start_55
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_61

    :cond_58
    move v2, v0

    .line 255
    :cond_59
    :goto_59
    monitor-exit p0

    return v2

    :goto_5b
    if-eqz v1, :cond_60

    .line 251
    :try_start_5d
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V

    :cond_60
    throw p1
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p1

    monitor-exit p0

    throw p1

    .line 226
    :cond_64
    :goto_64
    monitor-exit p0

    return v0
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;)J
    .registers 8

    monitor-enter p0

    .line 138
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;)Lcom/baidu/mobstat/j;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lcom/baidu/mobstat/j;->a()Z

    move-result p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_23
    .catchall {:try_start_4 .. :try_end_c} :catchall_21

    if-nez p1, :cond_15

    if-eqz v2, :cond_13

    .line 150
    :try_start_10
    invoke-virtual {v2}, Lcom/baidu/mobstat/j;->close()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_38

    .line 141
    :cond_13
    monitor-exit p0

    return-wide v0

    .line 144
    :cond_15
    nop

    .line 145
    :try_start_16
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p4}, Lcom/baidu/mobstat/j;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1e} :catch_23
    .catchall {:try_start_16 .. :try_end_1e} :catchall_21

    if-eqz v2, :cond_30

    goto :goto_2d

    .line 150
    :catchall_21
    move-exception p1

    goto :goto_32

    :catch_23
    move-exception p1

    .line 147
    :try_start_24
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_21

    if-eqz v2, :cond_30

    .line 150
    :goto_2d
    :try_start_2d
    invoke-virtual {v2}, Lcom/baidu/mobstat/j;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_38

    .line 154
    :cond_30
    monitor-exit p0

    return-wide v0

    :goto_32
    if-eqz v2, :cond_37

    .line 150
    :try_start_34
    invoke-virtual {v2}, Lcom/baidu/mobstat/j;->close()V

    :cond_37
    throw p1
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract a(Landroid/content/Context;)Lcom/baidu/mobstat/j;
.end method

.method public a(Landroid/content/Context;II)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/mobstat/i;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_36

    .line 107
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p0, p1}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;)Lcom/baidu/mobstat/j;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->a()Z

    move-result p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_21
    .catchall {:try_start_7 .. :try_end_f} :catchall_1f

    if-nez p1, :cond_18

    if-eqz v1, :cond_16

    .line 118
    :try_start_13
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_36

    .line 110
    :cond_16
    monitor-exit p0

    return-object v0

    .line 113
    :cond_18
    :try_start_18
    invoke-virtual {v1, p2, p3}, Lcom/baidu/mobstat/j;->a(II)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_21
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1f

    if-eqz v1, :cond_2e

    goto :goto_2b

    .line 118
    :catchall_1f
    move-exception p1

    goto :goto_30

    :catch_21
    move-exception p1

    .line 115
    :try_start_22
    invoke-static {}, Lcom/baidu/mobstat/cw;->c()Lcom/baidu/mobstat/cw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/cw;->b(Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    if-eqz v1, :cond_2e

    .line 118
    :goto_2b
    :try_start_2b
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 122
    :cond_2e
    monitor-exit p0

    return-object v0

    :goto_30
    if-eqz v1, :cond_35

    .line 118
    :try_start_32
    invoke-virtual {v1}, Lcom/baidu/mobstat/j;->close()V

    :cond_35
    throw p1
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/content/Context;I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 265
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 266
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 267
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 269
    const/16 v6, 0x1f4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;II)I

    .line 272
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_46

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_46

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_46

    .line 273
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/baidu/mobstat/i;

    .line 274
    invoke-virtual {p2}, Lcom/baidu/mobstat/i;->a()J

    move-result-wide v1

    .line 275
    invoke-virtual {p2}, Lcom/baidu/mobstat/i;->b()Ljava/lang/String;

    move-result-object p2

    .line 277
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v7, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_46
    invoke-virtual {p0, p1, v8}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result p1

    .line 282
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_54

    .line 284
    invoke-interface {v7, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 287
    :cond_54
    monitor-exit p0

    return-object v7

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Landroid/content/Context;)Z
    .registers 2

    monitor-enter p0

    .line 340
    :try_start_1
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/k;->c(Landroid/content/Context;)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Landroid/content/Context;I)Z
    .registers 3

    monitor-enter p0

    .line 350
    :try_start_1
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/k;->c(Landroid/content/Context;)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-lt p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 64
    iget v0, p0, Lcom/baidu/mobstat/k;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
