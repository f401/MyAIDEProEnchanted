.class Labcd/tF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/uF;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Labcd/qF;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Labcd/uF;

.field j6:I


# direct methods
.method constructor <init>(Labcd/uF;)V
    .registers 2

    iput-object p1, p0, Labcd/tF;->DW:Labcd/uF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Labcd/tF;->j6:I

    iget-object v1, p0, Labcd/tF;->DW:Labcd/uF;

    invoke-static {v1}, Labcd/uF;->j6(Labcd/uF;)Labcd/CK;

    move-result-object v1

    invoke-virtual {v1}, Labcd/CK;->DW()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Labcd/qF;
    .registers 7

    invoke-static {}, Labcd/uF;->j6()[Labcd/qF$a;

    move-result-object v0

    iget-object v1, p0, Labcd/tF;->DW:Labcd/uF;

    invoke-static {v1}, Labcd/uF;->j6(Labcd/uF;)Labcd/CK;

    move-result-object v1

    iget v2, p0, Labcd/tF;->j6:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/tF;->j6:I

    invoke-virtual {v1, v2}, Labcd/CK;->DW(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Labcd/tF;->DW:Labcd/uF;

    invoke-static {v1}, Labcd/uF;->j6(Labcd/uF;)Labcd/CK;

    move-result-object v1

    iget v2, p0, Labcd/tF;->j6:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Labcd/tF;->j6:I

    invoke-virtual {v1, v2}, Labcd/CK;->DW(I)I

    move-result v1

    iget-object v2, p0, Labcd/tF;->DW:Labcd/uF;

    invoke-static {v2}, Labcd/uF;->j6(Labcd/uF;)Labcd/CK;

    move-result-object v2

    iget v3, p0, Labcd/tF;->j6:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Labcd/tF;->j6:I

    invoke-virtual {v2, v3}, Labcd/CK;->DW(I)I

    move-result v2

    iget-object v3, p0, Labcd/tF;->DW:Labcd/uF;

    invoke-static {v3}, Labcd/uF;->j6(Labcd/uF;)Labcd/CK;

    move-result-object v3

    iget v4, p0, Labcd/tF;->j6:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Labcd/tF;->j6:I

    new-instance v5, Labcd/qF;

    invoke-virtual {v3, v4}, Labcd/CK;->DW(I)I

    move-result v3

    invoke-direct {v5, v1, v2, v3, v0}, Labcd/qF;-><init>(IIILabcd/qF$a;)V

    return-object v5
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/tF;->next()Labcd/qF;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
