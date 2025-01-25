.class Labcd/Mt;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Nt;->iterator()Labcd/_t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Nt;

.field private j6:I


# direct methods
.method constructor <init>(Labcd/Nt;)V
    .registers 3

    iput-object p1, p0, Labcd/Mt;->DW:Labcd/Nt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Labcd/Nt;->j6:[I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Labcd/Ot;->DW([II)I

    move-result p1

    iput p1, p0, Labcd/Mt;->j6:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget v0, p0, Labcd/Mt;->j6:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public next()I
    .registers 4

    invoke-virtual {p0}, Labcd/Mt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Labcd/Mt;->j6:I

    iget-object v1, p0, Labcd/Mt;->DW:Labcd/Nt;

    iget-object v1, v1, Labcd/Nt;->j6:[I

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Labcd/Ot;->DW([II)I

    move-result v1

    iput v1, p0, Labcd/Mt;->j6:I

    return v0

    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
