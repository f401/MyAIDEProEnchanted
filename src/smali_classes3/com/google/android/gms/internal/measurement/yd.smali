.class public abstract Lcom/google/android/gms/internal/measurement/yd;
.super Ljava/lang/Object;


# instance fields
.field protected volatile j6:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/yd;->j6()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return v0
.end method

.method public FH()Lcom/google/android/gms/internal/measurement/yd;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/yd;

    return-object v0
.end method

.method public final Hw()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/yd;->DW()I

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/yd;->FH()Lcom/google/android/gms/internal/measurement/yd;

    move-result-object v0

    return-object v0
.end method

.method protected j6()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
.end method

.method public j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zd;->j6(Lcom/google/android/gms/internal/measurement/yd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
