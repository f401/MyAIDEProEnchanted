.class public final synthetic Lokhttp3/Authenticator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Authenticator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .registers 4

    invoke-static {p1, p2}, Lokhttp3/Authenticator$_CC;->lambda$static$0(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method
