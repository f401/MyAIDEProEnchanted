.class public final Lokhttp3/ConnectionPool;
.super Ljava/lang/Object;


# instance fields
.field final delegate:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x5

    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v2, v3, v1}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/internal/connection/RealConnectionPool;

    invoke-direct {v0, p1, p2, p3, p4}, Lokhttp3/internal/connection/RealConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    return-void
.end method


# virtual methods
.method public connectionCount()I
    .locals 1

    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->connectionCount()I

    move-result v0

    return v0
.end method

.method public evictAll()V
    .locals 1

    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->evictAll()V

    return-void
.end method

.method public idleConnectionCount()I
    .locals 1

    iget-object v0, p0, Lokhttp3/ConnectionPool;->delegate:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->idleConnectionCount()I

    move-result v0

    return v0
.end method
