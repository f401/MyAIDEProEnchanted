.class final Lcom/google/android/gms/internal/ads/pC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/AD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/AD<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/hC;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pC;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/TD;->v5(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
