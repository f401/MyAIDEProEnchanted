.class final Lcom/google/android/gms/internal/measurement/Ic;
.super Lcom/google/android/gms/internal/measurement/Oc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/Oc;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/measurement/Fc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/Fc;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/Ic;->DW:Lcom/google/android/gms/internal/measurement/Fc;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/Oc;-><init>(Lcom/google/android/gms/internal/measurement/Fc;Lcom/google/android/gms/internal/measurement/Gc;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/Fc;Lcom/google/android/gms/internal/measurement/Gc;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/Ic;-><init>(Lcom/google/android/gms/internal/measurement/Fc;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/Hc;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/Ic;->DW:Lcom/google/android/gms/internal/measurement/Fc;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/Hc;-><init>(Lcom/google/android/gms/internal/measurement/Fc;Lcom/google/android/gms/internal/measurement/Gc;)V

    return-object v0
.end method
