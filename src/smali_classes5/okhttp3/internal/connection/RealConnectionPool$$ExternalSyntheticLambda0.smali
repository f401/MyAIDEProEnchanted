.class public final synthetic Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;->f$0:Lokhttp3/internal/connection/RealConnectionPool;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;->f$0:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->lambda$new$0$okhttp3-internal-connection-RealConnectionPool()V

    return-void
.end method
