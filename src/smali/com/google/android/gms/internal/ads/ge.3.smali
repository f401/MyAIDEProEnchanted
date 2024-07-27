.class final Lcom/google/android/gms/internal/ads/ge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Wm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Wm",
        "<",
        "Lcom/google/android/gms/internal/ads/Qd;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Ljava/lang/Object;

.field private final FH:Lcom/google/android/gms/internal/ads/Rm;

.field private final Hw:Lcom/google/android/gms/internal/ads/fe;

.field private final j6:Lcom/google/android/gms/internal/ads/Hd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fe;Lcom/google/android/gms/internal/ads/Hd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Rm;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ge;->Hw:Lcom/google/android/gms/internal/ads/fe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ge;->j6:Lcom/google/android/gms/internal/ads/Hd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ge;->DW:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ge;->FH:Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/google/android/gms/internal/ads/Qd;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ge;->Hw:Lcom/google/android/gms/internal/ads/fe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ge;->j6:Lcom/google/android/gms/internal/ads/Hd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ge;->DW:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ge;->FH:Lcom/google/android/gms/internal/ads/Rm;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/fe;->j6(Lcom/google/android/gms/internal/ads/fe;Lcom/google/android/gms/internal/ads/Hd;Lcom/google/android/gms/internal/ads/Qd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Rm;)V

    return-void
.end method
