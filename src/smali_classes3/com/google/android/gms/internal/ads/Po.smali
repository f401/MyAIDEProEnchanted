.class final Lcom/google/android/gms/internal/ads/Po;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Wj;

.field private final FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/No;

.field private final j6:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/No;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Po;->Hw:Lcom/google/android/gms/internal/ads/No;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Po;->j6:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Po;->DW:Lcom/google/android/gms/internal/ads/Wj;

    iput p4, p0, Lcom/google/android/gms/internal/ads/Po;->FH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Po;->Hw:Lcom/google/android/gms/internal/ads/No;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Po;->j6:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Po;->DW:Lcom/google/android/gms/internal/ads/Wj;

    iget v3, p0, Lcom/google/android/gms/internal/ads/Po;->FH:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/No;->j6(Lcom/google/android/gms/internal/ads/No;Landroid/view/View;Lcom/google/android/gms/internal/ads/Wj;I)V

    return-void
.end method
