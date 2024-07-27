.class final synthetic Lcom/google/android/gms/internal/ads/Kh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final j6:Lcom/google/android/gms/internal/ads/Ch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Ch;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Kh;->j6:Lcom/google/android/gms/internal/ads/Ch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Kh;->j6:Lcom/google/android/gms/internal/ads/Ch;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ch;->Zo()V

    return-void
.end method
