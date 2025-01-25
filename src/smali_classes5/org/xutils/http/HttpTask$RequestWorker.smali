.class final Lorg/xutils/http/HttpTask$RequestWorker;
.super Ljava/lang/Object;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestWorker"
.end annotation


# instance fields
.field ex:Ljava/lang/Throwable;

.field result:Ljava/lang/Object;

.field final this$0:Lorg/xutils/http/HttpTask;


# direct methods
.method private constructor <init>(Lorg/xutils/http/HttpTask;)V
    .registers 2

    .line 573
    iput-object p1, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    return-void
.end method

.method synthetic constructor <init>(Lorg/xutils/http/HttpTask;Lorg/xutils/http/HttpTask$1;)V
    .registers 3

    .line 569
    invoke-direct {p0, p1}, Lorg/xutils/http/HttpTask$RequestWorker;-><init>(Lorg/xutils/http/HttpTask;)V

    return-void
.end method


# virtual methods
.method public request()V
    .registers 9

    const/4 v2, 0x0

    .line 578
    .line 579
    :try_start_1
    const-class v3, Ljava/io/File;

    iget-object v4, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v4}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v4

    if-ne v3, v4, :cond_38

    .line 580
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_5d

    .line 581
    :goto_10
    :try_start_10
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v5, 0xa

    if-lt v4, v5, :cond_30

    iget-object v4, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    .line 582
    invoke-virtual {v4}, Lorg/xutils/http/HttpTask;->isCancelled()Z
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_db

    move-result v4

    if-nez v4, :cond_30

    .line 584
    :try_start_24
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_2d} :catch_2e
    .catchall {:try_start_24 .. :try_end_2d} :catchall_152

    goto :goto_10

    .line 585
    :catch_2e
    move-exception v2

    .line 586
    const/4 v2, 0x1

    .line 591
    :cond_30
    :try_start_30
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_db

    .line 592
    :try_start_31
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 595
    :cond_38
    if-nez v2, :cond_42

    iget-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-virtual {v3}, Lorg/xutils/http/HttpTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 596
    :cond_42
    new-instance v3, Lorg/xutils/common/Callback$CancelledException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelled before request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_5d

    if-eqz v2, :cond_124

    const-string v2, "(interrupted)"

    :goto_52
    :try_start_52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_5d

    .line 609
    :catchall_5d
    move-exception v3

    .line 610
    :try_start_5e
    iput-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    .line 611
    instance-of v2, v3, Lorg/xutils/ex/HttpException;

    if-eqz v2, :cond_bc

    .line 612
    move-object v0, v3

    check-cast v0, Lorg/xutils/ex/HttpException;

    move-object v2, v0

    .line 613
    invoke-virtual {v2}, Lorg/xutils/ex/HttpException;->getCode()I

    move-result v4

    .line 614
    const/16 v5, 0x12d

    if-eq v4, v5, :cond_74

    const/16 v5, 0x12e

    if-ne v4, v5, :cond_bc

    .line 615
    :cond_74
    iget-object v5, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v5}, Lorg/xutils/http/HttpTask;->access$600(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xutils/http/RequestParams;->getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;
    :try_end_7d
    .catchall {:try_start_5e .. :try_end_7d} :catchall_12c

    move-result-object v5

    .line 616
    if-eqz v5, :cond_bc

    .line 618
    :try_start_80
    iget-object v6, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v6}, Lorg/xutils/http/HttpTask;->access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/xutils/http/app/RedirectHandler;->getRedirectParams(Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/RequestParams;

    move-result-object v5

    .line 619
    if-eqz v5, :cond_bc

    .line 620
    invoke-virtual {v5}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v6

    if-nez v6, :cond_9f

    .line 621
    iget-object v6, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v6}, Lorg/xutils/http/HttpTask;->access$600(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/RequestParams;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/xutils/http/RequestParams;->setMethod(Lorg/xutils/http/HttpMethod;)V

    .line 624
    :cond_9f
    iget-object v6, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v6, v5}, Lorg/xutils/http/HttpTask;->access$602(Lorg/xutils/http/HttpTask;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/RequestParams;

    .line 625
    iget-object v5, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v5}, Lorg/xutils/http/HttpTask;->access$700(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/xutils/http/HttpTask;->access$502(Lorg/xutils/http/HttpTask;Lorg/xutils/http/request/UriRequest;)Lorg/xutils/http/request/UriRequest;

    .line 626
    new-instance v5, Lorg/xutils/ex/HttpRedirectException;

    invoke-virtual {v2}, Lorg/xutils/ex/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/xutils/ex/HttpException;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v4, v6, v2}, Lorg/xutils/ex/HttpRedirectException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;
    :try_end_bc
    .catchall {:try_start_80 .. :try_end_bc} :catchall_128

    .line 635
    :cond_bc
    :goto_bc
    const-class v2, Ljava/io/File;

    iget-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v3}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v2, v3, :cond_da

    .line 636
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    monitor-enter v3

    .line 637
    :try_start_cb
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 638
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 639
    monitor-exit v3
    :try_end_da
    .catchall {:try_start_cb .. :try_end_da} :catchall_14c

    .line 642
    :cond_da
    :goto_da
    return-void

    .line 591
    :catchall_db
    move-exception v2

    :try_start_dc
    monitor-exit v3
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    :try_start_dd
    throw v2
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_5d

    .line 600
    :cond_de
    :try_start_de
    iget-object v2, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v2}, Lorg/xutils/http/HttpTask;->access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v2

    iget-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v3}, Lorg/xutils/http/HttpTask;->access$400(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/app/RequestInterceptListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xutils/http/request/UriRequest;->setRequestInterceptListener(Lorg/xutils/http/app/RequestInterceptListener;)V

    .line 601
    iget-object v2, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v2}, Lorg/xutils/http/HttpTask;->access$500(Lorg/xutils/http/HttpTask;)Lorg/xutils/http/request/UriRequest;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xutils/http/request/UriRequest;->loadResult()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/http/HttpTask$RequestWorker;->result:Ljava/lang/Object;
    :try_end_f9
    .catchall {:try_start_de .. :try_end_f9} :catchall_11f

    .line 606
    :goto_f9
    :try_start_f9
    iget-object v2, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;
    :try_end_fb
    .catchall {:try_start_f9 .. :try_end_fb} :catchall_5d

    if-nez v2, :cond_123

    .line 635
    const-class v2, Ljava/io/File;

    iget-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v3}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-ne v2, v3, :cond_da

    .line 636
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    monitor-enter v3

    .line 637
    :try_start_10c
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 638
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 639
    monitor-exit v3

    goto :goto_da

    :catchall_11c
    move-exception v2

    monitor-exit v3
    :try_end_11e
    .catchall {:try_start_10c .. :try_end_11e} :catchall_11c

    throw v2

    .line 602
    :catchall_11f
    move-exception v2

    .line 603
    :try_start_120
    iput-object v2, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;

    goto :goto_f9

    .line 607
    :cond_123
    throw v2
    :try_end_124
    .catchall {:try_start_120 .. :try_end_124} :catchall_5d

    .line 596
    :cond_124
    const-string v2, ""

    goto/16 :goto_52

    .line 628
    :catchall_128
    move-exception v2

    .line 629
    :try_start_129
    iput-object v3, p0, Lorg/xutils/http/HttpTask$RequestWorker;->ex:Ljava/lang/Throwable;
    :try_end_12b
    .catchall {:try_start_129 .. :try_end_12b} :catchall_12c

    goto :goto_bc

    .line 635
    :catchall_12c
    move-exception v2

    const-class v3, Ljava/io/File;

    iget-object v4, p0, Lorg/xutils/http/HttpTask$RequestWorker;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v4}, Lorg/xutils/http/HttpTask;->access$200(Lorg/xutils/http/HttpTask;)Ljava/lang/reflect/Type;

    move-result-object v4

    if-ne v3, v4, :cond_14b

    .line 636
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    monitor-enter v3

    .line 637
    :try_start_13c
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 638
    invoke-static {}, Lorg/xutils/http/HttpTask;->access$300()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 639
    monitor-exit v3
    :try_end_14b
    .catchall {:try_start_13c .. :try_end_14b} :catchall_14f

    .line 641
    :cond_14b
    throw v2

    .line 639
    :catchall_14c
    move-exception v2

    :try_start_14d
    monitor-exit v3
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    throw v2

    :catchall_14f
    move-exception v2

    :try_start_150
    monitor-exit v3
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_14f

    throw v2

    .line 588
    :catchall_152
    move-exception v4

    goto/16 :goto_10
.end method
