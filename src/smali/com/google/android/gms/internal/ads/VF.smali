.class final Lcom/google/android/gms/internal/ads/VF;
.super Ljava/io/PushbackInputStream;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/SF;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/SF;Ljava/io/InputStream;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VF;->j6:Lcom/google/android/gms/internal/ads/SF;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/VF;->j6:Lcom/google/android/gms/internal/ads/SF;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/SF;->FH:Lcom/google/android/gms/internal/ads/QF;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/QF;->j6(Lcom/google/android/gms/internal/ads/QF;)V

    invoke-super {p0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method
