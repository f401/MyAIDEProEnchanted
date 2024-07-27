.class public abstract Lcom/google/android/gms/internal/measurement/sd;
.super Lcom/google/android/gms/internal/measurement/yd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/measurement/sd",
        "<TM;>;>",
        "Lcom/google/android/gms/internal/measurement/yd;"
    }
.end annotation


# instance fields
.field protected DW:Lcom/google/android/gms/internal/measurement/ud;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/yd;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic FH()Lcom/google/android/gms/internal/measurement/yd;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/sd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/sd;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/yd;->FH()Lcom/google/android/gms/internal/measurement/yd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/sd;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/measurement/wd;->j6(Lcom/google/android/gms/internal/measurement/sd;Lcom/google/android/gms/internal/measurement/sd;)V

    return-object v0
.end method

.method protected j6()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-eqz v0, :cond_0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->DW()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/ud;->DW(I)Lcom/google/android/gms/internal/measurement/vd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/vd;->j6()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    return v2
.end method

.method public j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->DW()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/ud;->DW(I)Lcom/google/android/gms/internal/measurement/vd;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/vd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final j6(Lcom/google/android/gms/internal/measurement/pd;I)Z
    .registers 7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->j6()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/pd;->DW(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    ushr-int/lit8 v1, p2, 0x3

    new-instance v2, Lcom/google/android/gms/internal/measurement/Ad;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->j6()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/internal/measurement/pd;->j6(II)[B

    move-result-object v0

    invoke-direct {v2, p2, v0}, Lcom/google/android/gms/internal/measurement/Ad;-><init>(I[B)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-nez v3, :cond_2

    new-instance v3, Lcom/google/android/gms/internal/measurement/ud;

    invoke-direct {v3}, Lcom/google/android/gms/internal/measurement/ud;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/measurement/vd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/vd;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/gms/internal/measurement/ud;->j6(ILcom/google/android/gms/internal/measurement/vd;)V

    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/vd;->j6(Lcom/google/android/gms/internal/measurement/Ad;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/ud;->j6(I)Lcom/google/android/gms/internal/measurement/vd;

    move-result-object v0

    goto :goto_1
.end method
