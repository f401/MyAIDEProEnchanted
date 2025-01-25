.class final Labcd/ko;
.super Labcd/Tr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/lo;->j6(Labcd/fs;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:I

.field final FH:I

.field final j6:[Z


# direct methods
.method constructor <init>([ZII)V
    .registers 4

    iput-object p1, p0, Labcd/ko;->j6:[Z

    iput p2, p0, Labcd/ko;->DW:I

    iput p3, p0, Labcd/ko;->FH:I

    invoke-direct {p0}, Labcd/Tr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/Yr;)V
    .registers 7

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_31

    invoke-virtual {p1}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    iget-object v1, p0, Labcd/ko;->j6:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_2e

    iget v3, p0, Labcd/ko;->DW:I

    iget v4, p0, Labcd/ko;->FH:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {p1}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result p1

    if-ne v3, p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    aput-boolean p1, v1, v2

    :cond_31
    return-void
.end method
