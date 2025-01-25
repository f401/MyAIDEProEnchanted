.class Labcd/sC$a$a;
.super Labcd/sC$a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/sC$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LsC<",
        "TS;>.a.b;"
    }
.end annotation


# instance fields
.field final EQ:Labcd/sC$a;


# direct methods
.method constructor <init>(Labcd/sC$a;)V
    .registers 2

    iput-object p1, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    invoke-direct {p0, p1}, Labcd/sC$a$b;-><init>(Labcd/sC$a;)V

    return-void
.end method


# virtual methods
.method final DW(I)I
    .registers 2

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method final FH(I)I
    .registers 2

    return p1
.end method

.method final VH(II)I
    .registers 8

    :goto_0
    iget-object v0, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    iget v1, v0, Labcd/sC$a;->FH:I

    if-le p2, v1, :cond_31

    add-int v1, p1, p2

    iget v2, v0, Labcd/sC$a;->v5:I

    if-gt v1, v2, :cond_d

    goto :goto_31

    :cond_d
    invoke-static {v0}, Labcd/sC$a;->j6(Labcd/sC$a;)Labcd/sC;

    move-result-object v0

    iget-object v0, v0, Labcd/sC;->FH:Labcd/mC;

    iget-object v2, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    invoke-static {v2}, Labcd/sC$a;->j6(Labcd/sC$a;)Labcd/sC;

    move-result-object v2

    iget-object v2, v2, Labcd/sC;->Hw:Labcd/lC;

    add-int/lit8 v3, p2, -0x1

    iget-object v4, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    invoke-static {v4}, Labcd/sC$a;->j6(Labcd/sC$a;)Labcd/sC;

    move-result-object v4

    iget-object v4, v4, Labcd/sC;->v5:Labcd/lC;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Labcd/mC;->j6(Labcd/lC;ILabcd/lC;I)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_31

    :cond_2e
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_31
    :goto_31
    return p2
.end method

.method final j6(II)V
    .registers 5

    iget-object v0, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    iget v1, v0, Labcd/sC$a;->FH:I

    if-le p2, v1, :cond_b

    add-int/2addr p2, p1

    iget v0, v0, Labcd/sC$a;->v5:I

    if-gt p2, v0, :cond_18

    :cond_b
    iget-object p2, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    iget-object p2, p2, Labcd/sC$a;->j6:Labcd/sC$a$b;

    iget p2, p2, Labcd/sC$a$b;->v5:I

    if-le p1, p2, :cond_16

    iput p1, p0, Labcd/sC$a$b;->u7:I

    goto :goto_18

    :cond_16
    iput p1, p0, Labcd/sC$a$b;->gn:I

    :cond_18
    :goto_18
    return-void
.end method

.method final j6(IIIJ)Z
    .registers 10

    iget-object v0, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    iget-object v0, v0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    iget v1, v0, Labcd/sC$a$b;->FH:I

    const/4 v2, 0x0

    if-lt p2, v1, :cond_2c

    iget v1, v0, Labcd/sC$a$b;->Hw:I

    if-le p2, v1, :cond_e

    goto :goto_2c

    :cond_e
    add-int v1, p1, p2

    iget v3, v0, Labcd/sC$a$b;->v5:I

    sub-int/2addr v1, v3

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_18

    return v2

    :cond_18
    invoke-virtual {v0, p1, p2}, Labcd/sC$a$b;->Hw(II)I

    move-result v0

    if-le p3, v0, :cond_1f

    return v2

    :cond_1f
    iget-object p3, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    iget-object p3, p3, Labcd/sC$a;->j6:Labcd/sC$a$b;

    invoke-virtual {p3, p1, p2}, Labcd/sC$a$b;->FH(II)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p4, p5}, Labcd/sC$a$b;->j6(JJ)Z

    const/4 p1, 0x1

    return p1

    :cond_2c
    :goto_2c
    return v2
.end method

.method final v5(II)Z
    .registers 3

    if-ge p1, p2, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
