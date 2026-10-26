.class public abstract Lcom/google/android/gms/internal/measurement/yd;
.super Ljava/lang/Object;


# instance fields
.field protected volatile j6:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return-void
.end method


# virtual methods
.method public final DW()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/yd;->j6()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return v0
.end method

.method public FH()Lcom/google/android/gms/internal/measurement/yd;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/yd;

    return-object v0
.end method

.method public final Hw()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/yd;->DW()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/measurement/yd;->j6:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/yd;->FH()Lcom/google/android/gms/internal/measurement/yd;

    move-result-object v0

    return-object v0
.end method

.method protected j6()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract j6(Lcom/google/android/gms/internal/measurement/pd;)Lcom/google/android/gms/internal/measurement/yd;
.end method

.method public j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zd;->j6(Lcom/google/android/gms/internal/measurement/yd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
