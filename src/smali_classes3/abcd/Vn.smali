.class public abstract Labcd/Vn;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Xn;

.field private final FH:Labcd/hs;

.field private final Hw:Labcd/cs;

.field private j6:I


# direct methods
.method public constructor <init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_23

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_13

    const/4 v0, -0x1

    iput v0, p0, Labcd/Vn;->j6:I

    iput-object p1, p0, Labcd/Vn;->DW:Labcd/Xn;

    iput-object p2, p0, Labcd/Vn;->FH:Labcd/hs;

    iput-object p3, p0, Labcd/Vn;->Hw:Labcd/cs;

    return-void

    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "registers == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "opcode == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static j6(Labcd/hs;Labcd/bs;Labcd/bs;)Labcd/mo;
    .registers 8

    invoke-virtual {p1}, Labcd/bs;->Hw()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->vy()Z

    move-result v0

    invoke-virtual {p1}, Labcd/bs;->we()I

    move-result v2

    invoke-virtual {p2}, Labcd/bs;->we()I

    move-result v3

    or-int/2addr v3, v2

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2b

    if-eqz v0, :cond_23

    sget-object v0, Labcd/Yn;->tp:Labcd/Xn;

    goto :goto_48

    :cond_23
    if-eqz v1, :cond_28

    sget-object v0, Labcd/Yn;->Hw:Labcd/Xn;

    goto :goto_48

    :cond_28
    sget-object v0, Labcd/Yn;->VH:Labcd/Xn;

    goto :goto_48

    :cond_2b
    const/16 v3, 0x100

    if-ge v2, v3, :cond_3c

    if-eqz v0, :cond_34

    sget-object v0, Labcd/Yn;->EQ:Labcd/Xn;

    goto :goto_48

    :cond_34
    if-eqz v1, :cond_39

    sget-object v0, Labcd/Yn;->v5:Labcd/Xn;

    goto :goto_48

    :cond_39
    sget-object v0, Labcd/Yn;->gn:Labcd/Xn;

    goto :goto_48

    :cond_3c
    if-eqz v0, :cond_41

    sget-object v0, Labcd/Yn;->we:Labcd/Xn;

    goto :goto_48

    :cond_41
    if-eqz v1, :cond_46

    sget-object v0, Labcd/Yn;->Zo:Labcd/Xn;

    goto :goto_48

    :cond_46
    sget-object v0, Labcd/Yn;->u7:Labcd/Xn;

    :goto_48
    new-instance v1, Labcd/mo;

    invoke-static {p1, p2}, Labcd/cs;->j6(Labcd/bs;Labcd/bs;)Labcd/cs;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    return-object v1
.end method


# virtual methods
.method public abstract DW()I
.end method

.method public abstract DW(I)Labcd/Vn;
.end method

.method public DW(Ljava/util/BitSet;)Labcd/Vn;
    .registers 4

    invoke-virtual {p0}, Labcd/Vn;->tp()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {p1, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    iget-object v1, p0, Labcd/Vn;->FH:Labcd/hs;

    invoke-virtual {p1, v0}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v0

    invoke-static {v1, p1, v0}, Labcd/Vn;->j6(Labcd/hs;Labcd/bs;Labcd/bs;)Labcd/mo;

    move-result-object p1

    return-object p1

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method public final EQ()Ljava/lang/String;
    .registers 4

    iget v0, p0, Labcd/Vn;->j6:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%04x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final FH()I
    .registers 3

    iget v0, p0, Labcd/Vn;->j6:I

    if-ltz v0, :cond_5

    return v0

    :cond_5
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

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/Vn;->j6(Labcd/cs;)Labcd/Vn;

    move-result-object p1

    return-object p1
.end method

.method public final Hw(Ljava/util/BitSet;)I
    .registers 7

    invoke-virtual {p0}, Labcd/Vn;->tp()Z

    move-result v0

    iget-object v1, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {v3, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->Hw()I

    move-result v3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    if-ge v0, v1, :cond_35

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v4, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {v4, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-virtual {v4}, Labcd/bs;->Hw()I

    move-result v4

    add-int/2addr v2, v4

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_35
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public Hw()Labcd/Vn;
    .registers 5

    iget-object v0, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {p0}, Labcd/Vn;->tp()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Labcd/cs;->j6(IZLjava/util/BitSet;)Labcd/cs;

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

    iget-object v0, p0, Labcd/Vn;->Hw:Labcd/cs;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    invoke-virtual {p0}, Labcd/Vn;->tp()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    :cond_10
    invoke-virtual {v0, p1}, Labcd/cs;->j6(Ljava/util/BitSet;)Labcd/cs;

    move-result-object v0

    invoke-virtual {p0}, Labcd/Vn;->tp()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {p1, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_1d
    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result p1

    if-nez p1, :cond_25

    const/4 p1, 0x0

    return-object p1

    :cond_25
    new-instance p1, Labcd/_n;

    iget-object v1, p0, Labcd/Vn;->FH:Labcd/hs;

    invoke-direct {p1, v1, v0}, Labcd/_n;-><init>(Labcd/hs;Labcd/cs;)V

    return-object p1
.end method

.method protected abstract j6()Ljava/lang/String;
.end method

.method public final j6(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p3}, Labcd/Vn;->j6(Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Vn;->EQ()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez p2, :cond_2b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_2c

    :cond_2b
    sub-int/2addr p2, v0

    :goto_2c
    const-string v1, ""

    invoke-static {p1, v0, v1, p3, p2}, Labcd/mu;->j6(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract j6(Z)Ljava/lang/String;
.end method

.method public final j6(I)V
    .registers 3

    if-ltz p1, :cond_5

    iput p1, p0, Labcd/Vn;->j6:I

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "address < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract j6(Labcd/Lt;)V
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Labcd/Vn;->EQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Labcd/Vn;->FH:Labcd/hs;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Labcd/Vn;->DW:Labcd/Xn;

    invoke-virtual {v2}, Labcd/Xn;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Labcd/Vn;->Hw:Labcd/cs;

    invoke-virtual {v2}, Labcd/Xt;->size()I

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Labcd/Vn;->Hw:Labcd/cs;

    const-string v3, ", "

    const/4 v4, 0x0

    const-string v5, " "

    invoke-virtual {v2, v5, v3, v4}, Labcd/Xt;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    invoke-virtual {p0}, Labcd/Vn;->j6()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_52

    if-eqz v2, :cond_4c

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
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
