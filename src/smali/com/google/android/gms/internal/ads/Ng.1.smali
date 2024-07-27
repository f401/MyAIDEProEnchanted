.class final Lcom/google/android/gms/internal/ads/Ng;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Lcom/google/android/gms/internal/ads/Kg;

.field private final j6:Lcom/google/android/gms/internal/ads/Rm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Kg;Lcom/google/android/gms/internal/ads/Rm;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ng;->FH:Lcom/google/android/gms/internal/ads/Kg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ng;->j6:Lcom/google/android/gms/internal/ads/Rm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ng;->DW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ng;->j6:Lcom/google/android/gms/internal/ads/Rm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ng;->FH:Lcom/google/android/gms/internal/ads/Kg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Kg;->j6(Lcom/google/android/gms/internal/ads/Kg;)Lcom/google/android/gms/ads/internal/C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/C;->jg()Labcd/x;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ng;->DW:Ljava/lang/String;

    invoke-virtual {v0, v2}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ob;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Rm;->DW(Ljava/lang/Object;)V

    return-void
.end method
