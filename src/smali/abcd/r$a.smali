.class final Labcd/r$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field DW:I

.field FH:I

.field Hw:Z

.field final j6:I

.field final v5:Labcd/r;


# direct methods
.method constructor <init>(Labcd/r;I)V
    .registers 4

    iput-object p1, p0, Labcd/r$a;->v5:Labcd/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/r$a;->Hw:Z

    iput p2, p0, Labcd/r$a;->j6:I

    invoke-virtual {p1}, Labcd/r;->FH()I

    move-result v0

    iput v0, p0, Labcd/r$a;->DW:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Labcd/r$a;->FH:I

    iget v1, p0, Labcd/r$a;->DW:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/r$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/r$a;->v5:Labcd/r;

    iget v1, p0, Labcd/r$a;->FH:I

    iget v2, p0, Labcd/r$a;->j6:I

    invoke-virtual {v0, v1, v2}, Labcd/r;->j6(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Labcd/r$a;->FH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/r$a;->FH:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Labcd/r$a;->Hw:Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    iget-boolean v0, p0, Labcd/r$a;->Hw:Z

    if-eqz v0, :cond_0

    iget v0, p0, Labcd/r$a;->FH:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/r$a;->FH:I

    iget v0, p0, Labcd/r$a;->DW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Labcd/r$a;->DW:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/r$a;->Hw:Z

    iget-object v0, p0, Labcd/r$a;->v5:Labcd/r;

    iget v1, p0, Labcd/r$a;->FH:I

    invoke-virtual {v0, v1}, Labcd/r;->j6(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
