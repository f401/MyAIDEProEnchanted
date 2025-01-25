.class final Lcom/google/android/gms/internal/ads/Nf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Mf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Mf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nf;->j6:Lcom/google/android/gms/internal/ads/Mf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Nf;->j6:Lcom/google/android/gms/internal/ads/Mf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Mf;->j6()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Nf;->j6:Lcom/google/android/gms/internal/ads/Mf;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Mf;->j6(Lcom/google/android/gms/internal/ads/Mf;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
