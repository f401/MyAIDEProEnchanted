.class final Lcom/google/android/gms/internal/ads/nt;
.super Lcom/google/android/gms/internal/ads/jt;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/jt;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Throwable;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final j6(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
