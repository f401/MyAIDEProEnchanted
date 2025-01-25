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
        "Ljava/lang/Comparable<",
        "Labcd/op;",
        ">;"
    }
.end annotation


# instance fields
.field private DW:Labcd/Wo;

.field private final j6:Labcd/ws;


# direct methods
.method public constructor <init>(Labcd/ws;Labcd/Wo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Labcd/op;->j6:Labcd/ws;

    iput-object p2, p0, Labcd/op;->DW:Labcd/Wo;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "annotations == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .registers 2

    check-cast p1, Labcd/op;

    invoke-virtual {p0, p1}, Labcd/op;->j6(Labcd/op;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/op;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Labcd/op;->j6:Labcd/ws;

    check-cast p1, Labcd/op;

    iget-object p1, p1, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v0, p1}, Labcd/Fs;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v0}, Labcd/Fs;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/op;)I
    .registers 3

    iget-object v0, p0, Labcd/op;->j6:Labcd/ws;

    iget-object p1, p1, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object p1

    iget-object v1, p0, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v0, v1}, Labcd/qp;->DW(Labcd/ws;)Labcd/pp;

    iget-object v0, p0, Labcd/op;->DW:Labcd/Wo;

    invoke-virtual {p1, v0}, Labcd/Fp;->DW(Labcd/Gp;)Labcd/Gp;

    move-result-object p1

    check-cast p1, Labcd/Wo;

    iput-object p1, p0, Labcd/op;->DW:Labcd/Wo;

    return-void
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 7

    invoke-virtual {p1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object p1

    iget-object v0, p0, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {p1, v0}, Labcd/qp;->j6(Labcd/ws;)I

    move-result p1

    iget-object v0, p0, Labcd/op;->DW:Labcd/Wo;

    invoke-virtual {v0}, Labcd/Gp;->we()I

    move-result v0

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v1

    if-eqz v1, :cond_62

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/op;->j6:Labcd/ws;

    invoke-virtual {v2}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      field_idx:       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      annotations_off: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_62
    invoke-interface {p2, p1}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    return-void
.end method
