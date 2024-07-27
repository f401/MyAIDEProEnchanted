.class public abstract Labcd/GB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Labcd/dB;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "LdB",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected FH:Labcd/kI;

.field protected Hw:I

.field protected v5:Labcd/HB;


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    return-void
.end method


# virtual methods
.method protected final FH()Labcd/dB;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    return-object p0
.end method

.method public j6(I)Labcd/dB;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TC;"
        }
    .end annotation

    iput p1, p0, Labcd/GB;->Hw:I

    invoke-virtual {p0}, Labcd/GB;->FH()Labcd/dB;

    return-object p0
.end method

.method protected j6(Labcd/GB;)Labcd/dB;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/GB;",
            ")TC;"
        }
    .end annotation

    iget-object v0, p0, Labcd/GB;->FH:Labcd/kI;

    invoke-virtual {p1, v0}, Labcd/GB;->j6(Labcd/kI;)Labcd/dB;

    iget v0, p0, Labcd/GB;->Hw:I

    invoke-virtual {p1, v0}, Labcd/GB;->j6(I)Labcd/dB;

    iget-object v0, p0, Labcd/GB;->v5:Labcd/HB;

    invoke-virtual {p1, v0}, Labcd/GB;->j6(Labcd/HB;)Labcd/dB;

    invoke-virtual {p0}, Labcd/GB;->FH()Labcd/dB;

    return-object p0
.end method

.method public j6(Labcd/HB;)Labcd/dB;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/HB;",
            ")TC;"
        }
    .end annotation

    iput-object p1, p0, Labcd/GB;->v5:Labcd/HB;

    invoke-virtual {p0}, Labcd/GB;->FH()Labcd/dB;

    return-object p0
.end method

.method protected j6(Labcd/jJ;)Labcd/dB;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/jJ;",
            ")TC;"
        }
    .end annotation

    iget-object v0, p0, Labcd/GB;->FH:Labcd/kI;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Labcd/jJ;->j6(Labcd/kI;)V

    :cond_0
    iget v0, p0, Labcd/GB;->Hw:I

    invoke-virtual {p1, v0}, Labcd/jJ;->j6(I)V

    iget-object v0, p0, Labcd/GB;->v5:Labcd/HB;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Labcd/HB;->j6(Labcd/jJ;)V

    :cond_1
    invoke-virtual {p0}, Labcd/GB;->FH()Labcd/dB;

    return-object p0
.end method

.method public j6(Labcd/kI;)Labcd/dB;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/kI;",
            ")TC;"
        }
    .end annotation

    iput-object p1, p0, Labcd/GB;->FH:Labcd/kI;

    invoke-virtual {p0}, Labcd/GB;->FH()Labcd/dB;

    return-object p0
.end method
