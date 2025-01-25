.class public final Labcd/Nr;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/cu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Nr$a;
    }
.end annotation


# instance fields
.field private final DW:Labcd/Ur;

.field private final FH:Labcd/au;

.field private final Hw:I

.field private final j6:I


# direct methods
.method public constructor <init>(ILabcd/Ur;Labcd/au;I)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_b5

    :try_start_5
    invoke-virtual {p2}, Labcd/hu;->Ws()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_8} :catch_ac

    invoke-virtual {p2}, Labcd/Xt;->size()I

    move-result v0

    if-eqz v0, :cond_a4

    add-int/lit8 v1, v0, -0x2

    :goto_10
    const/4 v2, 0x1

    if-ltz v1, :cond_45

    invoke-virtual {p2, v1}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v3

    invoke-virtual {v3}, Labcd/es;->DW()I

    move-result v3

    if-ne v3, v2, :cond_24

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "insns["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] is a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "branch or can throw"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_45
    sub-int/2addr v0, v2

    invoke-virtual {p2, v0}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v0

    if-eq v0, v2, :cond_9c

    :try_start_54
    invoke-virtual {p3}, Labcd/hu;->Ws()V
    :try_end_57
    .catch Ljava/lang/NullPointerException; {:try_start_54 .. :try_end_57} :catch_93

    const/4 v0, -0x1

    if-lt p4, v0, :cond_8b

    if-ltz p4, :cond_82

    invoke-virtual {p3, p4}, Labcd/au;->Hw(I)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_82

    :cond_63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "primarySuccessor "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not in successors "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_82
    :goto_82
    iput p1, p0, Labcd/Nr;->j6:I

    iput-object p2, p0, Labcd/Nr;->DW:Labcd/Ur;

    iput-object p3, p0, Labcd/Nr;->FH:Labcd/au;

    iput p4, p0, Labcd/Nr;->Hw:I

    return-void

    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "primarySuccessor < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_93
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "successors == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns does not end with a branch or throwing instruction"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "insns.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_ac
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "insns == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "label < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_be

    :goto_bd
    throw p1

    :goto_be
    goto :goto_bd
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/Nr;->j6:I

    return v0
.end method

.method public FH()Labcd/Tr;
    .registers 3

    iget-object v0, p0, Labcd/Nr;->DW:Labcd/Ur;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/Ur;->get(I)Labcd/Tr;

    move-result-object v0

    return-object v0
.end method

.method public Hw()Labcd/Ur;
    .registers 2

    iget-object v0, p0, Labcd/Nr;->DW:Labcd/Ur;

    return-object v0
.end method

.method public VH()I
    .registers 3

    iget-object v0, p0, Labcd/Nr;->FH:Labcd/au;

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Labcd/Nr;->FH:Labcd/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I

    move-result v0

    iget v1, p0, Labcd/Nr;->Hw:I

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Labcd/Nr;->FH:Labcd/au;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I

    move-result v0

    :cond_1b
    return v0

    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "block doesn\'t have exactly two successors"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Labcd/Nr;->Hw:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public gn()Labcd/au;
    .registers 2

    iget-object v0, p0, Labcd/Nr;->FH:Labcd/au;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Labcd/Nr;->DW:Labcd/Ur;

    invoke-virtual {v0}, Labcd/Ur;->rN()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->j6()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Nr;->j6:I

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u7()Z
    .registers 2

    iget-object v0, p0, Labcd/Nr;->DW:Labcd/Ur;

    invoke-virtual {v0}, Labcd/Ur;->rN()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object v0

    invoke-interface {v0}, Labcd/Ss;->size()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public v5()Labcd/Tr;
    .registers 2

    iget-object v0, p0, Labcd/Nr;->DW:Labcd/Ur;

    invoke-virtual {v0}, Labcd/Ur;->rN()Labcd/Tr;

    move-result-object v0

    return-object v0
.end method
