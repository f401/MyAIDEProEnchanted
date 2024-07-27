.class public final Labcd/op;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lu;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Labcd/lu;",
        "Ljava/lang/Comparable",
        "<",
        "Labcd/op;",
        ">;"
    }
.end annotation


# instance fields
.field private DW:Labcd/Wo;

.field private final j6:Labcd/ws;


# direct methods
.method public constructor <init>(Labcd/ws;Labcd/Wo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Labcd/op;->j6:Labcd/ws;

    iput-object p2, p0, Labcd/op;->DW:Labcd/Wo;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public aM()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v1}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/op;->DW:Labcd/Wo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/op;

    invoke-virtual {p0, p1}, Labcd/op;->j6(Labcd/op;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/op;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/op;->j6:Labcd/ws;

    check-cast p1, Labcd/op;

    iget-object v1, p1, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v0, v1}, Labcd/Fs;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v0}, Labcd/Fs;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/op;)I
    .registers 4

    iget-object v0, p0, Labcd/op;->j6:Labcd/ws;

    iget-object v1, p1, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/jp;)V
    .registers 5

    invoke-virtual {p1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object v1

    iget-object v2, p0, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v0, v2}, Labcd/qp;->DW(Labcd/ws;)Labcd/pp;

    iget-object v0, p0, Labcd/op;->DW:Labcd/Wo;

    invoke-virtual {v1, v0}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object v0

    check-cast v0, Labcd/Wo;

    iput-object v0, p0, Labcd/op;->DW:Labcd/Wo;

    return-void
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 8

    const/4 v4, 0x4

    invoke-virtual {p1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object v0

    iget-object v1, p0, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v0, v1}, Labcd/qp;->j6(Labcd/ws;)I

    move-result v0

    iget-object v1, p0, Labcd/op;->DW:Labcd/Wo;

    invoke-virtual {v1}, Labcd/Gp;->we()I

    move-result v1

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v3}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      field_idx:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      annotations_off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v1}, Labcd/ku;->writeInt(I)V

    return-void
.end method
