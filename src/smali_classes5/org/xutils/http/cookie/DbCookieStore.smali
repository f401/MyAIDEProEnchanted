.class public final enum Lorg/xutils/http/cookie/DbCookieStore;
.super Ljava/lang/Enum;
.source "DbCookieStore.java"

# interfaces
.implements Ljava/net/CookieStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/xutils/http/cookie/DbCookieStore;",
        ">;",
        "Ljava/net/CookieStore;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/xutils/http/cookie/DbCookieStore;

.field public static final enum INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

.field private static final LIMIT_COUNT:I = 0x1388

.field private static final TRIM_TIME_SPAN:J = 0x3e8L


# instance fields
.field private db:Lorg/xutils/DbManager;

.field private lastTrimTime:J

.field private final trimExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lorg/xutils/http/cookie/DbCookieStore;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lorg/xutils/http/cookie/DbCookieStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xutils/http/cookie/DbCookieStore;->INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

    .line 25
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/xutils/http/cookie/DbCookieStore;

    aput-object v0, v1, v2

    sput-object v1, Lorg/xutils/http/cookie/DbCookieStore;->$VALUES:[Lorg/xutils/http/cookie/DbCookieStore;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    invoke-direct {v0, v1, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    iput-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->trimExecutor:Ljava/util/concurrent/Executor;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    .line 37
    invoke-static {}, Lorg/xutils/x;->task()Lorg/xutils/common/TaskController;

    move-result-object v0

    new-instance v1, Lorg/xutils/http/cookie/DbCookieStore$1;

    invoke-direct {v1, p0}, Lorg/xutils/http/cookie/DbCookieStore$1;-><init>(Lorg/xutils/http/cookie/DbCookieStore;)V

    invoke-interface {v0, v1}, Lorg/xutils/common/TaskController;->run(Ljava/lang/Runnable;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lorg/xutils/http/cookie/DbCookieStore;)V
    .registers 1

    .line 25
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->tryInit()V

    return-void
.end method

.method static synthetic access$100(Lorg/xutils/http/cookie/DbCookieStore;)J
    .registers 3

    .line 25
    iget-wide v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lorg/xutils/http/cookie/DbCookieStore;J)J
    .registers 4

    .line 25
    iput-wide p1, p0, Lorg/xutils/http/cookie/DbCookieStore;->lastTrimTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;
    .registers 2

    .line 25
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    return-object v0
.end method

.method private getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;
    .registers 8

    .line 313
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 316
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 317
    const-string v1, "http"

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 323
    :goto_11
    return-object v0

    .line 321
    :catchall_12
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, p1

    goto :goto_11
.end method

.method private trimSize()V
    .registers 3

    .line 273
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->trimExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/xutils/http/cookie/DbCookieStore$2;

    invoke-direct {v1, p0}, Lorg/xutils/http/cookie/DbCookieStore$2;-><init>(Lorg/xutils/http/cookie/DbCookieStore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method private tryInit()V
    .registers 7

    .line 46
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    if-nez v0, :cond_29

    .line 47
    monitor-enter p0

    .line 48
    :try_start_5
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_33

    if-nez v0, :cond_28

    .line 50
    :try_start_9
    sget-object v0, Lorg/xutils/config/DbConfigs;->COOKIE:Lorg/xutils/config/DbConfigs;

    invoke-virtual {v0}, Lorg/xutils/config/DbConfigs;->getConfig()Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    .line 51
    const-string v1, "expiry"

    const-string v2, "="

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v1

    const-class v2, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v0, v2, v1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_2a

    .line 57
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit p0

    .line 59
    :cond_29
    return-void

    .line 53
    :catchall_2a
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 57
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/http/cookie/DbCookieStore;
    .registers 2

    .line 25
    const-class v0, Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/cookie/DbCookieStore;

    return-object v0
.end method

.method public static values()[Lorg/xutils/http/cookie/DbCookieStore;
    .registers 1

    .line 25
    sget-object v0, Lorg/xutils/http/cookie/DbCookieStore;->$VALUES:[Lorg/xutils/http/cookie/DbCookieStore;

    invoke-virtual {v0}, [Lorg/xutils/http/cookie/DbCookieStore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/http/cookie/DbCookieStore;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .registers 6

    .line 66
    if-nez p2, :cond_3

    .line 81
    :goto_2
    return-void

    .line 70
    :cond_3
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->tryInit()V

    .line 72
    invoke-direct {p0, p1}, Lorg/xutils/http/cookie/DbCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    .line 75
    :try_start_a
    iget-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    new-instance v2, Lorg/xutils/http/cookie/CookieEntity;

    invoke-direct {v2, v0, p2}, Lorg/xutils/http/cookie/CookieEntity;-><init>(Ljava/net/URI;Ljava/net/HttpCookie;)V

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->replace(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_18

    .line 80
    :goto_14
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->trimSize()V

    goto :goto_2

    .line 76
    :catchall_18
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public get(Ljava/net/URI;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 94
    if-eqz p1, :cond_ec

    .line 98
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->tryInit()V

    .line 100
    invoke-direct {p0, p1}, Lorg/xutils/http/cookie/DbCookieStore;->getEffectiveURI(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    .line 102
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    :try_start_e
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v1, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v4

    .line 108
    invoke-static {}, Lorg/xutils/db/sqlite/WhereBuilder;->b()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v5

    .line 110
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 112
    const-string v1, "domain"

    const-string v6, "="

    invoke-static {v1, v6, v0}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "domain"

    const-string v8, "="

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v7, v8, v6}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v1

    .line 113
    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 114
    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 115
    if-lez v6, :cond_6a

    if-le v7, v6, :cond_6a

    .line 116
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 118
    const-string v6, "domain"

    const-string v7, "="

    invoke-virtual {v1, v6, v7, v0}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 121
    :cond_6a
    invoke-virtual {v5, v1}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 124
    :cond_6d
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 126
    const-string v0, "path"

    const-string v6, "="

    invoke-static {v0, v6, v1}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    .line 127
    const-string v6, "path"

    const-string v7, "="

    const-string v8, "/"

    invoke-virtual {v0, v6, v7, v8}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    const-string v6, "path"

    const-string v7, "="

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v6

    .line 128
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 129
    :goto_98
    if-lez v0, :cond_ad

    .line 130
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v0, "path"

    const-string v7, "="

    invoke-virtual {v6, v0, v7, v1}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 132
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_98

    .line 135
    :cond_ad
    invoke-virtual {v5, v6}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 138
    :cond_b0
    const-string v0, "uri"

    const-string v1, "="

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lorg/xutils/db/sqlite/WhereBuilder;->or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 140
    invoke-virtual {v4, v5}, Lorg/xutils/db/Selector;->where(Lorg/xutils/db/sqlite/WhereBuilder;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_eb

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c9
    :goto_c9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/cookie/CookieEntity;

    .line 143
    invoke-virtual {v0}, Lorg/xutils/http/cookie/CookieEntity;->isExpired()Z

    move-result v2

    if-nez v2, :cond_c9

    .line 144
    invoke-virtual {v0}, Lorg/xutils/http/cookie/CookieEntity;->toHttpCookie()Ljava/net/HttpCookie;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e2
    .catchall {:try_start_e .. :try_end_e2} :catchall_e3

    goto :goto_c9

    .line 148
    :catchall_e3
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    :cond_eb
    return-object v3

    .line 95
    :cond_ec
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCookies()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->tryInit()V

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 164
    :try_start_8
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v2, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v0, v2}, Lorg/xutils/DbManager;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_38

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/cookie/CookieEntity;

    .line 167
    invoke-virtual {v0}, Lorg/xutils/http/cookie/CookieEntity;->isExpired()Z

    move-result v3

    if-nez v3, :cond_16

    .line 168
    invoke-virtual {v0}, Lorg/xutils/http/cookie/CookieEntity;->toHttpCookie()Ljava/net/HttpCookie;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_30

    goto :goto_16

    .line 172
    :catchall_30
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    :cond_38
    return-object v1
.end method

.method public getURIs()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->tryInit()V

    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    :try_start_8
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    .line 192
    const-class v2, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v0, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "uri"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lorg/xutils/db/Selector;->select([Ljava/lang/String;)Lorg/xutils/db/DbModelSelector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/DbModelSelector;->findAll()Ljava/util/List;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_70

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/table/DbModel;

    .line 195
    const-string v3, "uri"

    invoke-virtual {v0, v3}, Lorg/xutils/db/table/DbModel;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 196
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_68

    move-result v0

    if-nez v0, :cond_26

    .line 198
    :try_start_3e
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_47

    goto :goto_26

    .line 199
    :catchall_47
    move-exception v0

    .line 200
    :try_start_48
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_68

    .line 202
    :try_start_4f
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v4, Lorg/xutils/http/cookie/CookieEntity;

    const-string v5, "uri"

    const-string v6, "="

    invoke-static {v5, v6, v3}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_5e
    .catchall {:try_start_4f .. :try_end_5e} :catchall_5f

    goto :goto_26

    .line 203
    :catchall_5f
    move-exception v0

    .line 204
    :try_start_60
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_68

    goto :goto_26

    .line 210
    :catchall_68
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    :cond_70
    return-object v1
.end method

.method public remove(Ljava/net/URI;Ljava/net/HttpCookie;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 223
    if-nez p2, :cond_5

    .line 253
    :goto_4
    return v0

    .line 227
    :cond_5
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->tryInit()V

    .line 231
    :try_start_8
    const-string v2, "name"

    const-string v3, "="

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v3

    .line 233
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 235
    const-string v4, "domain"

    const-string v5, "="

    invoke-virtual {v3, v4, v5, v2}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 238
    :cond_25
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 239
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 240
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v0, :cond_48

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 241
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 243
    :cond_48
    const-string v4, "path"

    const-string v5, "="

    invoke-virtual {v3, v4, v5, v2}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 246
    :cond_4f
    iget-object v2, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v4, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v2, v4, v3}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_57

    goto :goto_4

    .line 249
    :catchall_57
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_4
.end method

.method public removeAll()Z
    .registers 3

    .line 262
    invoke-direct {p0}, Lorg/xutils/http/cookie/DbCookieStore;->tryInit()V

    .line 265
    :try_start_3
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore;->db:Lorg/xutils/DbManager;

    const-class v1, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 269
    :goto_a
    const/4 v0, 0x1

    return v0

    .line 266
    :catchall_c
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method
