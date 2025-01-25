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

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_21

    :try_start_a
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_1a

    iput-object p1, p0, Labcd/Dw$d;->j6:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance p1, Labcd/Dw$c;

    invoke-direct {p1, p2, v0}, Labcd/Dw$c;-><init>(Lorg/apache/http/HttpResponse;Labcd/Cw;)V

    iput-object p1, p0, Labcd/Dw$d;->DW:Labcd/Dw$c;

    return-void

    :catch_1a
    move-exception p1

    new-instance p2, Labcd/Kw;

    invoke-direct {p2, p1}, Labcd/Kw;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_21
    new-instance p1, Labcd/Jw;

    const-string p2, "Didn\'t get entity from HttpResponse"

    invoke-direct {p1, p2}, Labcd/Jw;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Labcd/Dw$d;->j6:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    return-void
.end method
