.class final synthetic Lcom/google/android/gms/internal/ads/Oo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/No;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/No;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Oo;->j6:Lcom/google/android/gms/internal/ads/No;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Oo;->j6:Lcom/google/android/gms/internal/ads/No;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/No;->Ws()V

    return-void
.end method
