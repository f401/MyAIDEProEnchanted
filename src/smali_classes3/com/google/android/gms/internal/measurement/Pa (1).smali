.class public abstract Lcom/google/android/gms/internal/measurement/Pa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/mc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/Oa<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/Pa<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/mc;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract j6(Lcom/google/android/gms/internal/measurement/Oa;)Lcom/google/android/gms/internal/measurement/Pa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/measurement/lc;)Lcom/google/android/gms/internal/measurement/mc;
    .registers 3

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/nc;->j6()Lcom/google/android/gms/internal/measurement/lc;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    check-cast p1, Lcom/google/android/gms/internal/measurement/Oa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/Pa;->j6(Lcom/google/android/gms/internal/measurement/Oa;)Lcom/google/android/gms/internal/measurement/Pa;

    return-object p0

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
