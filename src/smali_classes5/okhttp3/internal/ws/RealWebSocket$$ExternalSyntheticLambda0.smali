.class public final synthetic Lokhttp3/internal/ws/RealWebSocket$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Lokhttp3/internal/ws/RealWebSocket;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/ws/RealWebSocket;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/ws/RealWebSocket$$ExternalSyntheticLambda0;->f$0:Lokhttp3/internal/ws/RealWebSocket;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/ws/RealWebSocket$$ExternalSyntheticLambda0;->f$0:Lokhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Lokhttp3/internal/ws/RealWebSocket;->lambda$new$0$okhttp3-internal-ws-RealWebSocket()V

    return-void
.end method
