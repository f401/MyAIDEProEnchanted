.class public abstract Lcom/google/android/gms/internal/ads/qt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Qu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/pt<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/qt<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/Qu;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Lcom/google/android/gms/internal/ads/Pu;)Lcom/google/android/gms/internal/ads/Qu;
    .registers 3

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Ru;->j6()Lcom/google/android/gms/internal/ads/Pu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    check-cast p1, Lcom/google/android/gms/internal/ads/pt;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/qt;->j6(Lcom/google/android/gms/internal/ads/pt;)Lcom/google/android/gms/internal/ads/qt;

    return-object p0

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract j6(Lcom/google/android/gms/internal/ads/pt;)Lcom/google/android/gms/internal/ads/qt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method
