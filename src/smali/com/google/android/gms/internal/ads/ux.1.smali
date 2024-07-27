.class final Lcom/google/android/gms/internal/ads/ux;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/wx;


# instance fields
.field private final DW:Landroid/os/Bundle;

.field private final j6:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/nx;Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ux;->j6:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ux;->DW:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ux;->j6:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ux;->DW:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
