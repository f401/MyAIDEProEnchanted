.class public final Labcd/lp;
.super Labcd/mp;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/mp;",
        "Ljava/lang/Comparable<",
        "Labcd/lp;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/ws;


# direct methods
.method public constructor <init>(Labcd/ws;I)V
    .registers 3

    invoke-direct {p0, p2}, Labcd/mp;-><init>(I)V

    if-eqz p1, :cond_8

    iput-object p1, p0, Labcd/lp;->DW:Labcd/ws;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "field == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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
    .registers 2

    check-cast p1, Labcd/lp;

    invoke-virtual {p0, p1}, Labcd/lp;->j6(Labcd/lp;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/lp;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/lp;

    invoke-virtual {p0, p1}, Labcd/lp;->j6(Labcd/lp;)I

    move-result p1

    if-nez p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {v0}, Labcd/Fs;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/jp;Labcd/Lt;II)I
    .registers 9

    invoke-virtual {p1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object p1

    iget-object v0, p0, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {p1, v0}, Labcd/qp;->j6(Labcd/ws;)I

    move-result p1

    sub-int p3, p1, p3

    invoke-virtual {p0}, Labcd/mp;->Hw()I

    move-result v0

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, v1, v2

    iget-object p4, p0, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {p4}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object p4

    const/4 v3, 0x1

    aput-object p4, v1, v3

    const-string p4, "  [%x] %s"

    invoke-static {p4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v2, p4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-static {p3}, Labcd/eu;->j6(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    field_idx:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p4, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-static {v0}, Labcd/eu;->j6(I)I

    move-result p4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    access_flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Mr;->DW(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p4, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_6a
    invoke-interface {p2, p3}, Labcd/ku;->DW(I)I

    invoke-interface {p2, v0}, Labcd/ku;->DW(I)I

    return p1
.end method

.method public j6(Labcd/lp;)I
    .registers 3

    iget-object v0, p0, Labcd/lp;->DW:Labcd/ws;

    iget-object p1, p1, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {v0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/jp;)V
    .registers 3

    invoke-virtual {p1}, Labcd/jp;->v5()Labcd/qp;

    move-result-object p1

    iget-object v0, p0, Labcd/lp;->DW:Labcd/ws;

    invoke-virtual {p1, v0}, Labcd/qp;->DW(Labcd/ws;)Labcd/pp;

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
