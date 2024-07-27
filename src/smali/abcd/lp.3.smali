.class public final Labcd/lp;
.super Labcd/mp;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/mp;",
        "Ljava/lang/Comparable",
        "<",
        "Labcd/lp;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/ws;


# direct methods
.method public constructor <init>(Labcd/ws;I)V
    .registers 5

    invoke-direct {p0, p2}, Labcd/mp;-><init>(I)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/lp;->DW:Labcd/ws;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Zo()Labcd/ws;
    .registers 2

    iget-object v0, p0, Labcd/lp;->DW:Labcd/ws;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {v0}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/lp;

    invoke-virtual {p0, p1}, Labcd/lp;->j6(Labcd/lp;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/lp;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/lp;

    invoke-virtual {p0, p1}, Labcd/lp;->j6(Labcd/lp;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {v0}, Labcd/Fs;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/jp;Labcd/Lt;II)I
    .registers 13

    const/4 v7, 0x0

    invoke-virtual {p1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object v0

    iget-object v1, p0, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {v0, v1}, Labcd/qp;->j6(Labcd/ws;)I

    move-result v0

    sub-int v1, v0, p3

    invoke-virtual {p0}, Labcd/mp;->Hw()I

    move-result v2

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "  [%x] %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {v6}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v7, v3}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-static {v1}, Labcd/eu;->j6(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    field_idx:    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-static {v2}, Labcd/eu;->j6(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    access_flags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Mr;->DW(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v1}, Labcd/ku;->DW(I)I

    invoke-interface {p2, v2}, Labcd/ku;->DW(I)I

    return v0
.end method

.method public j6(Labcd/lp;)I
    .registers 4

    iget-object v0, p0, Labcd/lp;->DW:Labcd/ws;

    iget-object v1, p1, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object v0

    iget-object v1, p0, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {v0, v1}, Labcd/qp;->DW(Labcd/ws;)Labcd/pp;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Labcd/lp;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Labcd/mp;->Hw()I

    move-result v1

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
