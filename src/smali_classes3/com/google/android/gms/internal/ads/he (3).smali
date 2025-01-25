.class final Lcom/google/android/gms/internal/ads/he;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Um;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Hd;

.field private final j6:Lcom/google/android/gms/internal/ads/Rm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fe;Lcom/google/android/gms/internal/ads/Rm;Lcom/google/android/gms/internal/ads/Hd;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/he;->j6:Lcom/google/android/gms/internal/ads/Rm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/he;->DW:Lcom/google/android/gms/internal/ads/Hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/he;->j6:Lcom/google/android/gms/internal/ads/Rm;

    new-instance v1, Lcom/google/android/gms/internal/ads/Td;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Td;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Rm;->j6(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/he;->DW:Lcom/google/android/gms/internal/ads/Hd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Hd;->FH()V

    return-void
.end method
