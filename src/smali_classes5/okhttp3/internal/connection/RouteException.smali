.class public final Lokhttp3/internal/connection/RouteException;
.super Ljava/lang/RuntimeException;


# instance fields
.field private firstException:Ljava/io/IOException;

.field private lastException:Ljava/io/IOException;


# direct methods
.method constructor <init>(Ljava/io/IOException;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lokhttp3/internal/connection/RouteException;->firstException:Ljava/io/IOException;

    iput-object p1, p0, Lokhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method addConnectException(Ljava/io/IOException;)V
    .registers 3

    iget-object v0, p0, Lokhttp3/internal/connection/RouteException;->firstException:Ljava/io/IOException;

    invoke-static {v0, p1}, Lokhttp3/internal/Util;->addSuppressedIfPossible(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lokhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    return-void
.end method

.method public getFirstConnectException()Ljava/io/IOException;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/connection/RouteException;->firstException:Ljava/io/IOException;

    return-object v0
.end method

.method public getLastConnectException()Ljava/io/IOException;
    .registers 2

    iget-object v0, p0, Lokhttp3/internal/connection/RouteException;->lastException:Ljava/io/IOException;

    return-object v0
.end method
