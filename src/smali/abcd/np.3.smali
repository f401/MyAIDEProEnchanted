.class public final Labcd/np;
.super Labcd/mp;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/mp;",
        "Ljava/lang/Comparable",
        "<",
        "Labcd/np;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/Gs;

.field private final FH:Labcd/ep;


# direct methods
.method public constructor <init>(Labcd/Gs;ILabcd/Un;Labcd/Ss;)V
    .registers 7

    invoke-direct {p0, p2}, Labcd/mp;-><init>(I)V

    if-eqz p1, :cond_2

    iput-object p1, p0, Labcd/np;->DW:Labcd/Gs;

    if-nez p3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/np;->FH:Labcd/ep;

    :goto_0
    return-void

    :cond_0
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    new-instance v1, Labcd/ep;

    invoke-direct {v1, p1, p3, v0, p4}, Labcd/ep;-><init>(Labcd/Gs;Labcd/Un;ZLabcd/Ss;)V

    iput-object v1, p0, Labcd/np;->FH:Labcd/ep;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .registers 3

    check-cast p1, Labcd/np;

    invoke-virtual {p0, p1}, Labcd/np;->j6(Labcd/np;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/np;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/np;

    invoke-virtual {p0, p1}, Labcd/np;->j6(Labcd/np;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j6(Labcd/jp;Labcd/Lt;II)I
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Labcd/jp;->tp()Labcd/Cp;

    move-result-object v0

    iget-object v3, p0, Labcd/np;->DW:Labcd/Gs;

    invoke-virtual {v0, v3}, Labcd/Cp;->j6(Labcd/qs;)I

    move-result v4

    sub-int v5, v4, p3

    invoke-virtual {p0}, Labcd/mp;->Hw()I

    move-result v6

    iget-object v0, p0, Labcd/np;->FH:Labcd/ep;

    invoke-static {v0}, Labcd/Gp;->FH(Labcd/Gp;)I

    move-result v7

    if-eqz v7, :cond_1

    move v3, v1

    :goto_0
    and-int/lit16 v0, v6, 0x500

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-ne v3, v0, :cond_3

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "  [%x] %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v2

    iget-object v8, p0, Labcd/np;->DW:Labcd/Gs;

    invoke-virtual {v8}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-static {v5}, Labcd/eu;->j6(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    method_idx:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-static {v6}, Labcd/eu;->j6(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    access_flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Mr;->tp(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    invoke-static {v7}, Labcd/eu;->j6(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    code_off:     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v5}, Labcd/ku;->DW(I)I

    invoke-interface {p2, v6}, Labcd/ku;->DW(I)I

    invoke-interface {p2, v7}, Labcd/ku;->DW(I)I

    return v4

    :cond_1
    move v3, v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "code vs. access_flags mismatch"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Labcd/np;)I
    .registers 4

    iget-object v0, p0, Labcd/np;->DW:Labcd/Gs;

    iget-object v1, p1, Labcd/np;->DW:Labcd/Gs;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/jp;)V
    .registers 5

    invoke-virtual {p1}, Labcd/jp;->tp()Labcd/Cp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object v1

    iget-object v2, p0, Labcd/np;->DW:Labcd/Gs;

    invoke-virtual {v0, v2}, Labcd/Cp;->DW(Labcd/qs;)Labcd/Bp;

    iget-object v0, p0, Labcd/np;->FH:Labcd/ep;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Labcd/Fp;->j6(Labcd/Gp;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x20

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

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/np;->DW:Labcd/Gs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/np;->FH:Labcd/ep;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/np;->FH:Labcd/ep;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
