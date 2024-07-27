.class final synthetic Lcom/google/android/gms/internal/ads/Wg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Z

.field private final FH:Lcom/google/android/gms/internal/ads/Rm;

.field private final Hw:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/internal/ads/Ug;

.field private final v5:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ug;ZLcom/google/android/gms/internal/ads/Rm;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Wg;->j6:Lcom/google/android/gms/internal/ads/Ug;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Wg;->DW:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Wg;->FH:Lcom/google/android/gms/internal/ads/Rm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Wg;->Hw:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Wg;->v5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wg;->j6:Lcom/google/android/gms/internal/ads/Ug;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Wg;->DW:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Wg;->FH:Lcom/google/android/gms/internal/ads/Rm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Wg;->Hw:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Wg;->v5:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Ug;->j6(ZLcom/google/android/gms/internal/ads/Rm;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
