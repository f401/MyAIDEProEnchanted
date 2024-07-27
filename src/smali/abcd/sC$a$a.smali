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
        "LsC",
        "<TS;>.a.b;"
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
    .registers 3

    add-int/lit8 v0, p1, -0x1

    return v0
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

    if-le p2, v1, :cond_0

    add-int v1, p1, p2

    iget v2, v0, Labcd/sC$a;->v5:I

    if-gt v1, v2, :cond_1

    :cond_0
    return p2

    :cond_1
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

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method final j6(II)V
    .registers 5

    iget-object v0, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    iget v1, v0, Labcd/sC$a;->FH:I

    if-le p2, v1, :cond_0

    add-int v1, p2, p1

    iget v0, v0, Labcd/sC$a;->v5:I

    if-gt v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    iget-object v0, v0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    iget v0, v0, Labcd/sC$a$b;->v5:I

    if-le p1, v0, :cond_2

    iput p1, p0, Labcd/sC$a$b;->u7:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Labcd/sC$a$b;->gn:I

    goto :goto_0
.end method

.method final j6(IIIJ)Z
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    iget-object v1, v1, Labcd/sC$a;->j6:Labcd/sC$a$b;

    iget v2, v1, Labcd/sC$a$b;->FH:I

    if-lt p2, v2, :cond_0

    iget v2, v1, Labcd/sC$a$b;->Hw:I

    if-le p2, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int v2, p1, p2

    iget v3, v1, Labcd/sC$a$b;->v5:I

    sub-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1, p2}, Labcd/sC$a$b;->Hw(II)I

    move-result v1

    if-gt p3, v1, :cond_0

    iget-object v0, p0, Labcd/sC$a$a;->EQ:Labcd/sC$a;

    iget-object v0, v0, Labcd/sC$a;->j6:Labcd/sC$a$b;

    invoke-virtual {v0, p1, p2}, Labcd/sC$a$b;->FH(II)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p4, p5}, Labcd/sC$a$b;->j6(JJ)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final v5(II)Z
    .registers 4

    if-ge p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
