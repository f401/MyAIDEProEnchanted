.class public abstract Labcd/Vn;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Xn;

.field private final FH:Labcd/hs;

.field private final Hw:Labcd/cs;

.field private j6:I


# direct methods
.method public constructor <init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Labcd/Vn;->j6:I

    iput-object p1, p0, Labcd/Vn;->DW:Labcd/Xn;

    iput-object p2, p0, Labcd/Vn;->FH:Labcd/hs;

    iput-object p3, p0, Labcd/Vn;->Hw:Labcd/cs;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registers == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "opcode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Labcd/hs;Labcd/bs;Labcd/bs;)Labcd/mo;
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->vy()Z

    move-result v1

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v2

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v3

    or-int/2addr v3, v2

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    if-eqz v1, :cond_1

    sget-object v0, Labcd/Yn;->tp:Labcd/Xn;

    :goto_1
    new-instance v1, Labcd/mo;

    invoke-static {p1, p2}, Labcd/cs;->j6(Labcd/bs;Labcd/bs;)Labcd/cs;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Labcd/Yn;->Hw:Labcd/Xn;

    goto :goto_1

    :cond_2
    sget-object v0, Labcd/Yn;->VH:Labcd/Xn;

    goto :goto_1

    :cond_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_6

    if-eqz v1, :cond_4

    sget-object v0, Labcd/Yn;->EQ:Labcd/Xn;

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Labcd/Yn;->v5:Labcd/Xn;

    goto :goto_1

    :cond_5
    sget-object v0, Labcd/Yn;->gn:Labcd/Xn;

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    sget-object v0, Labcd/Yn;->we:Labcd/Xn;

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    sget-object v0, Labcd/Yn;->Zo:Labcd/Xn;

    goto :goto_1

    :cond_8
    sget-object v0, Labcd/Yn;->u7:Labcd/Xn;

    goto :goto_1
.end method


# virtual methods
.method public abstract DW()I
.end method

.method public abstract DW(I)Labcd/Vn;
.end method

.method public DW(Ljava/util/BitSet;)Labcd/Vn;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/Vn;->tp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    iget-object v1, p0, Labcd/Vn;->FH:Labcd/hs;

    invoke-virtual {v0, v2}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v2

    invoke-static {v1, v0, v2}, Labcd/Vn;->j6(Labcd/hs;Labcd/bs;Labcd/bs;)Labcd/mo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final EQ()Ljava/lang/String;
    .registers 5

    iget v0, p0, Labcd/Vn;->j6:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, "%04x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final FH()I
    .registers 3

    iget v0, p0, Labcd/Vn;->j6:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public FH(Ljava/util/BitSet;)Labcd/Vn;
    .registers 5

    iget-object v0, p0, Labcd/Vn;->Hw:Labcd/cs;

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/Vn;->tp()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Labcd/cs;->j6(IZLjava/util/BitSet;)Labcd/cs;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Vn;->j6(Labcd/cs;)Labcd/Vn;

    move-result-object v0

    return-object v0
.end method

.method public final Hw(Ljava/util/BitSet;)I
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/Vn;->tp()Z

    move-result v2

    iget-object v0, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v4

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {v0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->Hw()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {v1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/bs;->Hw()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    move v3, v1

    goto :goto_0

    :cond_2
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public Hw()Labcd/Vn;
    .registers 5

    iget-object v0, p0, Labcd/Vn;->Hw:Labcd/cs;

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/Vn;->tp()Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Labcd/cs;->j6(IZLjava/util/BitSet;)Labcd/cs;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Vn;->j6(Labcd/cs;)Labcd/Vn;

    move-result-object v0

    return-object v0
.end method

.method public final VH()Labcd/hs;
    .registers 2

    iget-object v0, p0, Labcd/Vn;->FH:Labcd/hs;

    return-object v0
.end method

.method public final Zo()Labcd/Xn;
    .registers 2

    iget-object v0, p0, Labcd/Vn;->DW:Labcd/Xn;

    return-object v0
.end method

.method public final gn()Labcd/cs;
    .registers 2

    iget-object v0, p0, Labcd/Vn;->Hw:Labcd/cs;

    return-object v0
.end method

.method public abstract j6(Labcd/Xn;)Labcd/Vn;
.end method

.method public abstract j6(Labcd/cs;)Labcd/Vn;
.end method

.method public j6(Ljava/util/BitSet;)Labcd/Vn;
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    invoke-virtual {p0}, Labcd/Vn;->tp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {v0, p1}, Labcd/cs;->j6(Ljava/util/BitSet;)Labcd/cs;

    move-result-object v2

    invoke-virtual {p0}, Labcd/Vn;->tp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Labcd/_n;

    iget-object v1, p0, Labcd/Vn;->FH:Labcd/hs;

    invoke-direct {v0, v1, v2}, Labcd/_n;-><init>(Labcd/hs;Labcd/cs;)V

    goto :goto_0
.end method

.method protected abstract j6()Ljava/lang/String;
.end method

.method public final j6(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 9

    invoke-virtual {p0, p3}, Labcd/Vn;->j6(Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Vn;->EQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    const-string v4, ""

    invoke-static {v2, v3, v4, v1, v0}, Labcd/mu;->j6(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sub-int v0, p2, v3

    goto :goto_1
.end method

.method protected abstract j6(Z)Ljava/lang/String;
.end method

.method public final j6(I)V
    .registers 4

    if-ltz p1, :cond_0

    iput p1, p0, Labcd/Vn;->j6:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract j6(Labcd/Lt;)V
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    const/16 v5, 0x20

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Labcd/Vn;->EQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/Vn;->FH:Labcd/hs;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/Vn;->DW:Labcd/Xn;

    invoke-virtual {v0}, Labcd/Xn;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labcd/Vn;->Hw:Labcd/cs;

    const-string v2, " "

    const-string v3, ", "

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Labcd/Xt;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Labcd/Vn;->j6()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final tp()Z
    .registers 2

    iget-object v0, p0, Labcd/Vn;->DW:Labcd/Xn;

    invoke-virtual {v0}, Labcd/Xn;->VH()Z

    move-result v0

    return v0
.end method

.method public final u7()Z
    .registers 2

    iget v0, p0, Labcd/Vn;->j6:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v5()I
    .registers 3

    invoke-virtual {p0}, Labcd/Vn;->FH()I

    move-result v0

    invoke-virtual {p0}, Labcd/Vn;->DW()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
