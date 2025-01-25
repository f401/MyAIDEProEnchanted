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
    .registers 3

    const-class v0, Labcd/yk$h;

    const-wide v1, 0x45dcea8e7c836148L  # 3.579656715876498E28

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1e4b28a8d3bf80a8L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x14a945559768d5e3L  # 3.843374048847957E-209

    :try_start_6
    sget-boolean v3, Labcd/yk$h;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-boolean v3, p0, Labcd/yk$h;->Hw:Z

    iput-boolean v3, p0, Labcd/yk$h;->VH:Z

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Labcd/zk;

    invoke-direct {v4, p0}, Labcd/zk;-><init>(Labcd/yk$h;)V

    const-string v5, "Subscription WS Client"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Labcd/yk$h;->v5:Ljava/lang/Thread;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v3, p0, Labcd/yk$h;->v5:Ljava/lang/Thread;

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v3, p0, Labcd/yk$h;->v5:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_38
    .catchall {:try_start_6 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v3

    sget-boolean v4, Labcd/yk$h;->DW:Z

    if-eqz v4, :cond_41

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_41
    throw v3
.end method

.method static synthetic DW(Labcd/yk$h;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/yk$h;->Hw:Z

    return p0
.end method

.method static synthetic FH(Labcd/yk$h;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Labcd/yk$h;->Zo:Lorg/json/JSONObject;

    return-object p0
.end method

.method private static FH(Lorg/json/JSONObject;Z)Z
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x111b88acf33eb5c8L
    .end annotation

    const-string v0, "application/json"

    :try_start_2
    sget-boolean v1, Labcd/yk$h;->j6:Z

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0x29496e89703a768L

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_7d

    :try_start_19
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-wide/16 v3, 0x2710

    invoke-static {v2, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    const v3, 0xc350

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v3, Lorg/apache/http/client/methods/HttpPost;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_7a
    .catchall {:try_start_19 .. :try_end_2e} :catchall_7d

    if-eqz p1, :cond_33

    const-string v4, "https://api.appfour.com/aideservices/subscriptions/v1/registerPurchase"

    goto :goto_35

    :cond_33
    const-string v4, "https://api.appfour.com/aideservices/subscriptions/v1/registerStartAfterPurchase"

    :goto_35
    :try_start_35
    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v2, "Accept"

    invoke-virtual {v3, v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-type"

    invoke-virtual {v3, v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    invoke-virtual {v1, v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_78

    instance-of v1, v0, Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_5e} :catch_7a
    .catchall {:try_start_35 .. :try_end_5e} :catchall_7d

    if-eqz v1, :cond_78

    :try_start_60
    new-instance v1, Lorg/json/JSONObject;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "isGenuine"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_78

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_76} :catch_77
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_76} :catch_7a
    .catchall {:try_start_60 .. :try_end_76} :catchall_7d

    goto :goto_78

    :catch_77
    move-exception p0

    :cond_78
    :goto_78
    const/4 p0, 0x1

    return p0

    :catch_7a
    move-exception p0

    const/4 p0, 0x0

    return p0

    :catchall_7d
    move-exception v0

    sget-boolean v1, Labcd/yk$h;->DW:Z

    if-eqz v1, :cond_92

    const-wide v2, 0x29496e89703a768L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_92
    throw v0
.end method

.method static synthetic Hw(Labcd/yk$h;)Z
    .registers 1

    iget-boolean p0, p0, Labcd/yk$h;->VH:Z

    return p0
.end method

.method static synthetic j6(Labcd/yk$h;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j6(Lorg/json/JSONObject;Z)Z
    .registers 2

    invoke-static {p0, p1}, Labcd/yk$h;->FH(Lorg/json/JSONObject;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public DW(Lorg/json/JSONObject;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x29db1b4b5fcf5867L
    .end annotation

    :try_start_0
    sget-boolean v0, Labcd/yk$h;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x44d9d69e5c374581L  # -9.165842004225041E-24

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_29

    :try_start_14
    iget-boolean v1, p0, Labcd/yk$h;->VH:Z

    if-nez v1, :cond_1d

    if-eqz p2, :cond_1d

    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/yk$h;->VH:Z

    :cond_1d
    iput-object p1, p0, Labcd/yk$h;->Zo:Lorg/json/JSONObject;

    iget-object v1, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_26

    :try_start_28
    throw v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v0

    sget-boolean v1, Labcd/yk$h;->DW:Z

    if-eqz v1, :cond_3e

    const-wide v2, -0x44d9d69e5c374581L  # -9.165842004225041E-24

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3e
    throw v0
.end method

.method public j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x3006f53375fa6a80L
    .end annotation

    const-wide v0, 0x2265b3f0451ae8fcL  # 5.561725328880613E-143

    :try_start_5
    sget-boolean v2, Labcd/yk$h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_1c

    const/4 v3, 0x1

    :try_start_10
    iput-boolean v3, p0, Labcd/yk$h;->Hw:Z

    iget-object v3, p0, Labcd/yk$h;->FH:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    return-void

    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v2

    sget-boolean v3, Labcd/yk$h;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method
