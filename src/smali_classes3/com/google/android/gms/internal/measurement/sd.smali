.class public abstract Lcom/google/android/gms/internal/measurement/sd;
.super Lcom/google/android/gms/internal/measurement/yd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/measurement/sd<",
        "TM;>;>",
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

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/ud;->DW()I

    move-result v2

    if-ge v0, v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/ud;->DW(I)Lcom/google/android/gms/internal/measurement/vd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/vd;->j6()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    return v1
.end method

.method public j6(Lcom/google/android/gms/internal/measurement/qd;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/ud;->DW()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/ud;->DW(I)Lcom/google/android/gms/internal/measurement/vd;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/measurement/vd;->j6(Lcom/google/android/gms/internal/measurement/qd;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method protected final j6(Lcom/google/android/gms/internal/measurement/pd;I)Z
    .registers 7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->j6()I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/pd;->DW(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    ushr-int/lit8 v1, p2, 0x3

    new-instance v2, Lcom/google/android/gms/internal/measurement/Ad;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/pd;->j6()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v0, v3}, Lcom/google/android/gms/internal/measurement/pd;->j6(II)[B

    move-result-object p1

    invoke-direct {v2, p2, p1}, Lcom/google/android/gms/internal/measurement/Ad;-><init>(I[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    if-nez p1, :cond_29

    new-instance p1, Lcom/google/android/gms/internal/measurement/ud;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/ud;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    const/4 p1, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ud;->j6(I)Lcom/google/android/gms/internal/measurement/vd;

    move-result-object p1

    :goto_2d
    if-nez p1, :cond_39

    new-instance p1, Lcom/google/android/gms/internal/measurement/vd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/vd;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/sd;->DW:Lcom/google/android/gms/internal/measurement/ud;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/measurement/ud;->j6(ILcom/google/android/gms/internal/measurement/vd;)V

    :cond_39
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/vd;->j6(Lcom/google/android/gms/internal/measurement/Ad;)V

    const/4 p1, 0x1

    return p1
.end method
