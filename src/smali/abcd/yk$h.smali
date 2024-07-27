.class Labcd/yk$h;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/yk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0x151a70a7b0bbadf8L
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = 0x1cb99795a22aa9b3L
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = 0x1c78403f16b38f74L
    .end annotation
.end field

.field private Zo:Lorg/json/JSONObject;
    .annotation runtime Labcd/ru;
        field = -0x2cc2c09437d258b0L
    .end annotation
.end field

.field private v5:Ljava/lang/Thread;
    .annotation runtime Labcd/ru;
        field = -0x1e9dfc72560ada9fL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x45dcea8e7c836148L    # 3.579656715876498E28

    const-class v0, Labcd/yk$h;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1e4b28a8d3bf80a8L
    .end annotation

    const-wide v4, 0x14a945559768d5e3L    # 3.843374048847957E-209

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14a945559768d5e3L    # 3.843374048847957E-209

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/yk$h;->Hw:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/yk$h;->VH:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Labcd/zk;

    invoke-direct {v1, p0}, Labcd/zk;-><init>(Labcd/yk$h;)V

    const-string v2, "Subscription WS Client"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Labcd/yk$h;->v5:Ljava/lang/Thread;

    iget-object v0, p0, Labcd/yk$h;->v5:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Labcd/yk$h;->v5:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Labcd/yk$h;->v5:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yk$h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Labcd/yk$h;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/yk$h;->Hw:Z

    return v0
.end method

.method static synthetic FH(Labcd/yk$h;)Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Labcd/yk$h;->Zo:Lorg/json/JSONObject;

    return-object v0
.end method

.method private static FH(Lorg/json/JSONObject;Z)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x111b88acf33eb5c8L
    .end annotation

    const-wide v2, 0x29496e89703a768L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Labcd/yk$h;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v6, 0x29496e89703a768L

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-wide/16 v6, 0x2710

    invoke-static {v5, v6, v7}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    const v0, 0xc350

    invoke-static {v5, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const v0, 0xc350

    invoke-static {v5, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v6, Lorg/apache/http/client/methods/HttpPost;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_2

    const-string v0, "https://api.appfour.com/aideservices/subscriptions/v1/registerPurchase"

    :goto_0
    :try_start_2
    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v0, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v6, v0, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-type"

    const-string v5, "application/json"

    invoke-virtual {v6, v0, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    invoke-virtual {v1, v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_1

    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "isGenuine"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    const-string v0, "https://api.appfour.com/aideservices/subscriptions/v1/registerStartAfterPurchase"

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v1

    sget-boolean v0, Labcd/yk$h;->DW:Z

    if-eqz v0, :cond_3

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic Hw(Labcd/yk$h;)Z
    .registers 2

    iget-boolean v0, p0, Labcd/yk$h;->VH:Z

    return v0
.end method

.method static synthetic j6(Labcd/yk$h;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j6(Lorg/json/JSONObject;Z)Z
    .registers 3

    invoke-static {p0, p1}, Labcd/yk$h;->FH(Lorg/json/JSONObject;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public DW(Lorg/json/JSONObject;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x29db1b4b5fcf5867L
    .end annotation

    const-wide v2, -0x44d9d69e5c374581L    # -9.165842004225041E-24

    :try_start_0
    sget-boolean v0, Labcd/yk$h;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x44d9d69e5c374581L    # -9.165842004225041E-24

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v0, p0, Labcd/yk$h;->VH:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/yk$h;->VH:Z

    :cond_1
    iput-object p1, p0, Labcd/yk$h;->Zo:Lorg/json/JSONObject;

    iget-object v0, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    sget-boolean v0, Labcd/yk$h;->DW:Z

    if-eqz v0, :cond_2

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3006f53375fa6a80L
    .end annotation

    const-wide v2, 0x2265b3f0451ae8fcL    # 5.561725328880613E-143

    :try_start_0
    sget-boolean v0, Labcd/yk$h;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2265b3f0451ae8fcL    # 5.561725328880613E-143

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Labcd/yk$h;->Hw:Z

    iget-object v0, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/yk$h;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
