.class public final Labcd/Dw$b;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Dw$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "b"
.end annotation


# instance fields
.field private final DW:Labcd/Zw;

.field private final j6:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Labcd/Zw;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Dw$b;->j6:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p2, p0, Labcd/Dw$b;->DW:Labcd/Zw;

    return-void
.end method


# virtual methods
.method public j6()Labcd/Dw$e;
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/Dw$b;->DW:Labcd/Zw;

    iget-object v1, p0, Labcd/Dw$b;->j6:Lorg/apache/http/client/methods/HttpUriRequest;

    const v2, 0x2bf20

    invoke-static {v0, v1, v2}, Labcd/Gw;->j6(Labcd/Zw;Lorg/apache/http/client/methods/HttpUriRequest;I)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Labcd/Kw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Labcd/Dw$e;

    invoke-static {v0}, Labcd/Gw;->j6(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Labcd/Dw$e;-><init>(Ljava/util/Map;)V

    return-object v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Labcd/Dw$b;->j6:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Labcd/Mw;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Labcd/Mw;-><init>(J)V

    throw v0

    :cond_0
    throw v0
.end method
