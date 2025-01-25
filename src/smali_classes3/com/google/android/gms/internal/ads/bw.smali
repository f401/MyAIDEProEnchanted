.class public final Lcom/google/android/gms/internal/ads/bw;
.super Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static DW()Lcom/google/android/gms/internal/ads/bw;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/bw;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static FH()Lcom/google/android/gms/internal/ads/bw;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/bw;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static j6()Lcom/google/android/gms/internal/ads/bw;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/bw;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bw;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
