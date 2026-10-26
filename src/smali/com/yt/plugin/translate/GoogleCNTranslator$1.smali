.class Lcom/yt/plugin/translate/GoogleCNTranslator$1;
.super Ljava/lang/Thread;
.source "GoogleCNTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yt/plugin/translate/GoogleCNTranslator;->getIP()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final val$newIP:Ljava/util/concurrent/atomic/AtomicReference;

.field final val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/yt/plugin/translate/GoogleCNTranslator$1;->val$s:Ljava/lang/String;

    iput-object p2, p0, Lcom/yt/plugin/translate/GoogleCNTranslator$1;->val$newIP:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/yt/plugin/translate/GoogleCNTranslator$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yt/plugin/translate/GoogleCNTranslator$1;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/translate_a/single?client=gtx&dt=t&sl=en&tl=zh&q=a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 52
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 54
    const-string v1, "Host"

    const-string v2, "translate.googleapis.com"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 55
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 6.0;)"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/yt/plugin/translate/GoogleCNTranslator;->-$$Nest$sfgetHTTP_CLIENT()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/yt/plugin/translate/GoogleCNTranslator$1;->val$newIP:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yt/plugin/translate/GoogleCNTranslator$1;->val$s:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/yt/plugin/translate/GoogleCNTranslator$1$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yt/plugin/translate/GoogleCNTranslator$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 62
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p0, Lcom/yt/plugin/translate/GoogleCNTranslator$1;->val$s:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/yt/plugin/translate/GoogleCNTranslator$1;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 65
    throw v0
.end method
