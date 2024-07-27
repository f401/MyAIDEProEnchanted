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

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Labcd/Pr;->tp()Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/ys;

    invoke-virtual {v0}, Labcd/ys;->rN()I

    move-result v0

    iget-object v2, p0, Labcd/ko;->j6:[Z

    aget-boolean v3, v2, v1

    if-eqz v3, :cond_1

    iget v3, p0, Labcd/ko;->DW:I

    iget v4, p0, Labcd/ko;->FH:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p1}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v2, v1

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
