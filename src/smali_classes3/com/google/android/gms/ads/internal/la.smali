.class final Lcom/google/android/gms/ads/internal/la;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final DW:Lcom/google/android/gms/ads/internal/ia;

.field private final j6:Lcom/google/android/gms/ads/internal/ua;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/ia;Lcom/google/android/gms/ads/internal/ua;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/la;->DW:Lcom/google/android/gms/ads/internal/ia;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/la;->j6:Lcom/google/android/gms/ads/internal/ua;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/la;->j6:Lcom/google/android/gms/ads/internal/ua;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/ua;->j6()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/la;->DW:Lcom/google/android/gms/ads/internal/ia;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/ia;->DW:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz p1, :cond_e

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Wj;->Zo()V

    :cond_e
    return-void
.end method
