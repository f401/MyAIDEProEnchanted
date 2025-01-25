.class public final Labcd/np;
.super Labcd/mp;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/mp;",
        "Ljava/lang/Comparable<",
        "Labcd/np;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/Gs;

.field private final FH:Labcd/ep;


# direct methods
.method public constructor <init>(Labcd/Gs;ILabcd/Un;Labcd/Ss;)V
    .registers 6

    invoke-direct {p0, p2}, Labcd/mp;-><init>(I)V

    if-eqz p1, :cond_1c

    iput-object p1, p0, Labcd/np;->DW:Labcd/Gs;

    if-nez p3, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/np;->FH:Labcd/ep;

    goto :goto_1b

    :cond_d
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_13

    const/4 p2, 0x1

    goto :goto_14

    :cond_13
    const/4 p2, 0x0

    :goto_14
    new-instance v0, Labcd/ep;

    invoke-direct {v0, p1, p3, p2, p4}, Labcd/ep;-><init>(Labcd/Gs;Labcd/Un;ZLabcd/Ss;)V

    iput-object v0, p0, Labcd/np;->FH:Labcd/ep;

    :goto_1b
    return-void

    :cond_1c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final aM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/np;->DW:Labcd/Gs;

    invoke-virtual {v0}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/np;

    invoke-virtual {p0, p1}, Labcd/np;->j6(Labcd/np;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/np;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/np;

    invoke-virtual {p0, p1}, Labcd/np;->j6(Labcd/np;)I

    move-result p1

    if-nez p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public j6(Labcd/jp;Labcd/Lt;II)I
    .registers 11

    invoke-virtual {p1}, Labcd/jp;->tp()Labcd/Cp;

    move-result-object p1

    iget-object v0, p0, Labcd/np;->DW:Labcd/Gs;

    invoke-virtual {p1, v0}, Labcd/Cp;->j6(Labcd/qs;)I

    move-result p1

    sub-int p3, p1, p3

    invoke-virtual {p0}, Labcd/mp;->Hw()I

    move-result v0

    iget-object v1, p0, Labcd/np;->FH:Labcd/ep;

    invoke-static {v1}, Labcd/Gp;->FH(Labcd/Gp;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    const/4 v4, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v4, 0x0

    :goto_1d
    and-int/lit16 v5, v0, 0x500

    if-nez v5, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    :goto_24
    if-ne v4, v5, :cond_a4

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v4

    if-eqz v4, :cond_9a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v4, v3

    iget-object p4, p0, Labcd/np;->DW:Labcd/Gs;

    invoke-virtual {p4}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v4, v2

    const-string p4, "  [%x] %s"

    invoke-static {p4, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, v3, p4}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-static {p3}, Labcd/eu;->j6(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    method_idx:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-static {v0}, Labcd/eu;->j6(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    access_flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Mr;->tp(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-static {v1}, Labcd/eu;->j6(I)I

    move-result p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    code_off:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_9a
    invoke-interface {p2, p3}, Labcd/ku;->DW(I)I

    invoke-interface {p2, v0}, Labcd/ku;->DW(I)I

    invoke-interface {p2, v1}, Labcd/ku;->DW(I)I

    return p1

    :cond_a4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "code vs. access_flags mismatch"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Labcd/np;)I
    .registers 3

    iget-object v0, p0, Labcd/np;->DW:Labcd/Gs;

    iget-object p1, p1, Labcd/np;->DW:Labcd/Gs;

    invoke-virtual {v0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->tp()Labcd/Cp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object p1

    iget-object v1, p0, Labcd/np;->DW:Labcd/Gs;

    invoke-virtual {v0, v1}, Labcd/Cp;->DW(Labcd/qs;)Labcd/Bp;

    iget-object v0, p0, Labcd/np;->FH:Labcd/ep;

    if-eqz v0, :cond_14

    invoke-virtual {p1, v0}, Labcd/Fp;->j6(Labcd/Gp;)V

    :cond_14
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-class v1, Labcd/np;

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

    iget-object v2, p0, Labcd/np;->DW:Labcd/Gs;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Labcd/np;->FH:Labcd/ep;

    if-eqz v2, :cond_36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/np;->FH:Labcd/ep;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_36
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
