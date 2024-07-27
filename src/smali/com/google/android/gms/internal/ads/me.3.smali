.class final synthetic Lcom/google/android/gms/internal/ads/me;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/le;

.field private final j6:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/le;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/me;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/me;->DW:Lcom/google/android/gms/internal/ads/le;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/me;->j6:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/me;->DW:Lcom/google/android/gms/internal/ads/le;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/le;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/le;)V

    return-void
.end method
