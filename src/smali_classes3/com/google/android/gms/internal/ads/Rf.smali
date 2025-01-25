.class final Lcom/google/android/gms/internal/ads/Rf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Qf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Qf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Rf;->j6:Lcom/google/android/gms/internal/ads/Qf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Rf;->j6:Lcom/google/android/gms/internal/ads/Qf;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Qf;->j6(Z)V

    return-void
.end method
