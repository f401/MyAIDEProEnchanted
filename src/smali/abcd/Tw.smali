.class Labcd/Tw;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ww;->v5()Lorg/apache/http/client/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/Ww;


# direct methods
.method constructor <init>(Labcd/Ww;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4

    iput-object p1, p0, Labcd/Tw;->j6:Labcd/Ww;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createConnectionKeepAliveStrategy()Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .registers 3

    new-instance v0, Labcd/Ww$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Ww$c;-><init>(Labcd/Sw;)V

    return-object v0
.end method

.method protected createConnectionReuseStrategy()Lorg/apache/http/ConnectionReuseStrategy;
    .registers 3

    new-instance v0, Labcd/Ww$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Ww$b;-><init>(Labcd/Sw;)V

    return-object v0
.end method
