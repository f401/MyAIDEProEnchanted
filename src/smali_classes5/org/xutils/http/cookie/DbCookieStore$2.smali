.class Lorg/xutils/http/cookie/DbCookieStore$2;
.super Ljava/lang/Object;
.source "DbCookieStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/cookie/DbCookieStore;->trimSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/xutils/http/cookie/DbCookieStore;


# direct methods
.method constructor <init>(Lorg/xutils/http/cookie/DbCookieStore;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 276
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v0}, Lorg/xutils/http/cookie/DbCookieStore;->access$000(Lorg/xutils/http/cookie/DbCookieStore;)V

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 279
    iget-object v2, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v2}, Lorg/xutils/http/cookie/DbCookieStore;->access$100(Lorg/xutils/http/cookie/DbCookieStore;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    .line 308
    :cond_17
    :goto_17
    return-void

    .line 282
    :cond_18
    iget-object v2, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v2, v0, v1}, Lorg/xutils/http/cookie/DbCookieStore;->access$102(Lorg/xutils/http/cookie/DbCookieStore;J)J

    .line 287
    :try_start_1d
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v0}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v0

    .line 288
    const-string v1, "expiry"

    const-string v2, "<"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v1

    .line 289
    const-string v2, "expiry"

    const-string v3, "!="

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v1

    .line 287
    const-class v2, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v0, v2, v1}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_46
    .catchall {:try_start_1d .. :try_end_46} :catchall_9b

    .line 296
    :goto_46
    :try_start_46
    iget-object v0, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v0}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v0

    const-class v1, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->count()J

    move-result-wide v0

    long-to-int v0, v0

    .line 297
    const/16 v1, 0x1392

    if-le v0, v1, :cond_17

    .line 298
    iget-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v1}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v1

    const-class v2, Lorg/xutils/http/cookie/CookieEntity;

    invoke-interface {v1, v2}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v1

    .line 299
    const-string v2, "expiry"

    const-string v3, "!="

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/xutils/db/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/Selector;

    move-result-object v1

    const-string v2, "expiry"

    invoke-virtual {v1, v2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v1

    .line 300
    add-int/lit16 v0, v0, -0x1388

    invoke-virtual {v1, v0}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_17

    .line 302
    iget-object v1, p0, Lorg/xutils/http/cookie/DbCookieStore$2;->this$0:Lorg/xutils/http/cookie/DbCookieStore;

    invoke-static {v1}, Lorg/xutils/http/cookie/DbCookieStore;->access$200(Lorg/xutils/http/cookie/DbCookieStore;)Lorg/xutils/DbManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V
    :try_end_90
    .catchall {:try_start_46 .. :try_end_90} :catchall_91

    goto :goto_17

    .line 305
    :catchall_91
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 290
    :catchall_9b
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_46
.end method
