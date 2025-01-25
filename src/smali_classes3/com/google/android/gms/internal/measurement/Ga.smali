.class final Lcom/google/android/gms/internal/measurement/Ga;
.super Lcom/google/android/gms/internal/measurement/Fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/Fa<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Long;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/measurement/Fa;-><init>(Lcom/google/android/gms/internal/measurement/La;Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/Ga;)V

    return-void
.end method

.method private final DW(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 6

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Long;

    return-object p1

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_18

    :try_start_b
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_12} :catch_17

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :catch_17
    move-exception v0

    :cond_18
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/Fa;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid long value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "PhenotypeFlag"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method final synthetic j6(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/Ga;->DW(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
