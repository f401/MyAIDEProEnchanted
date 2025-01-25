.class final Lcom/google/android/gms/internal/measurement/Ka;
.super Lcom/google/android/gms/internal/measurement/Fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/Fa<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/Fa;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Ga;)V

    return-void
.end method


# virtual methods
.method final synthetic j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method
