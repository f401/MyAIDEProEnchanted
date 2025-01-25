.class public abstract Lcom/google/android/gms/internal/ads/hu$c;
.super Lcom/google/android/gms/internal/ads/hu;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/hu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/hu$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/hu<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/Ru;"
    }
.end annotation


# instance fields
.field protected zzfqa:Lcom/google/android/gms/internal/ads/Yt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Yt<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/hu;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/Yt;->VH()Lcom/google/android/gms/internal/ads/Yt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/hu$c;->zzfqa:Lcom/google/android/gms/internal/ads/Yt;

    return-void
.end method
