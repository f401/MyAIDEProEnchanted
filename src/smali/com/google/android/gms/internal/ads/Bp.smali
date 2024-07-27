.class final Lcom/google/android/gms/internal/ads/Bp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Wj;

.field private final FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/zp;

.field private final j6:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zp;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Bp;->Hw:Lcom/google/android/gms/internal/ads/zp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Bp;->j6:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Bp;->DW:Lcom/google/android/gms/internal/ads/Wj;

    iput p4, p0, Lcom/google/android/gms/internal/ads/Bp;->FH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Bp;->Hw:Lcom/google/android/gms/internal/ads/zp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Bp;->j6:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Bp;->DW:Lcom/google/android/gms/internal/ads/Wj;

    iget v3, p0, Lcom/google/android/gms/internal/ads/Bp;->FH:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zp;->j6(Lcom/google/android/gms/internal/ads/zp;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    return-void
.end method
