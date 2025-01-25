.class final Lcom/google/android/gms/internal/ads/pB;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/oB;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/oB;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pB;->j6:Lcom/google/android/gms/internal/ads/oB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pB;->j6:Lcom/google/android/gms/internal/ads/oB;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/oB;->j6(Lcom/google/android/gms/internal/ads/oB;)V

    return-void
.end method
