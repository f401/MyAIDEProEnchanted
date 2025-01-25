.class Labcd/fu;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gu;->iterator()Labcd/_t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/gu;

.field private j6:I


# direct methods
.method constructor <init>(Labcd/gu;)V
    .registers 2

    iput-object p1, p0, Labcd/fu;->DW:Labcd/gu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Labcd/fu;->j6:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Labcd/fu;->j6:I

    iget-object v1, p0, Labcd/fu;->DW:Labcd/gu;

    iget-object v1, v1, Labcd/gu;->j6:Labcd/au;

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public next()I
    .registers 4

    invoke-virtual {p0}, Labcd/fu;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Labcd/fu;->DW:Labcd/gu;

    iget-object v0, v0, Labcd/gu;->j6:Labcd/au;

    iget v1, p0, Labcd/fu;->j6:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Labcd/fu;->j6:I

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I

    move-result v0

    return v0

    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
