.class final Lcom/google/android/gms/internal/ads/zl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/rm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/rm<",
        "Lcom/google/android/gms/internal/ads/nD;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Cl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazs;Lcom/google/android/gms/internal/ads/Cl;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zl;->j6:Lcom/google/android/gms/internal/ads/Cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p1, Lcom/google/android/gms/internal/ads/nD;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/nD;->DW:[B

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zl;->j6:Lcom/google/android/gms/internal/ads/Cl;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Cl;->j6(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
