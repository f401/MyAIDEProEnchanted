.class public Labcd/Dw$d;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final DW:Labcd/Dw$c;

.field private final j6:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Labcd/Dw$d;->j6:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v0, Labcd/Dw$c;

    invoke-direct {v0, p2, v1}, Labcd/Dw$c;-><init>(Lorg/apache/http/HttpResponse;Labcd/Cw;)V

    iput-object v0, p0, Labcd/Dw$d;->DW:Labcd/Dw$c;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Labcd/Kw;

    invoke-direct {v1, v0}, Labcd/Kw;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_0
    new-instance v0, Labcd/Jw;

    const-string v1, "Didn\'t get entity from HttpResponse"

    invoke-direct {v0, v1}, Labcd/Jw;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Labcd/Dw$d;->j6:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    return-void
.end method
