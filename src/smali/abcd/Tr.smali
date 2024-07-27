.class public abstract Labcd/Tr;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lu;


# instance fields
.field private final DW:Labcd/hs;

.field private final FH:Labcd/bs;

.field private final Hw:Labcd/cs;

.field private final j6:Labcd/es;


# direct methods
.method public constructor <init>(Labcd/es;Labcd/hs;Labcd/bs;Labcd/cs;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Labcd/Tr;->j6:Labcd/es;

    iput-object p2, p0, Labcd/Tr;->DW:Labcd/hs;

    iput-object p3, p0, Labcd/Tr;->FH:Labcd/bs;

    iput-object p4, p0, Labcd/Tr;->Hw:Labcd/cs;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sources == null"

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

.method private static j6(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract DW()Labcd/Ss;
.end method

.method protected final DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "Insn{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/Tr;->DW:Labcd/hs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/Tr;->j6:Labcd/es;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, " :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/Tr;->FH:Labcd/bs;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " <- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Labcd/Tr;->Hw:Labcd/cs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final Hw()Labcd/bs;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/Tr;->j6:Labcd/es;

    invoke-virtual {v1}, Labcd/es;->Hw()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Labcd/Tr;->Hw:Labcd/cs;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Labcd/Tr;->FH:Labcd/bs;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_1
.end method

.method public final VH()Labcd/bs;
    .registers 2

    iget-object v0, p0, Labcd/Tr;->FH:Labcd/bs;

    return-object v0
.end method

.method public final Zo()Labcd/hs;
    .registers 2

    iget-object v0, p0, Labcd/Tr;->DW:Labcd/hs;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/Tr;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Tr;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final gn()Labcd/cs;
    .registers 2

    iget-object v0, p0, Labcd/Tr;->Hw:Labcd/cs;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract j6(Labcd/Qs;)Labcd/Tr;
.end method

.method public abstract j6(Labcd/bs;Labcd/cs;)Labcd/Tr;
.end method

.method protected final j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x50

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v0, p0, Labcd/Tr;->DW:Labcd/hs;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/Tr;->j6:Labcd/es;

    invoke-virtual {v0}, Labcd/es;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p1, :cond_0

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Labcd/Tr;->FH:Labcd/bs;

    if-nez v0, :cond_2

    const-string v0, " ."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v0, " <-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/Tr;->Hw:Labcd/cs;

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v2

    if-nez v2, :cond_3

    const-string v0, " ."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Labcd/Tr;->FH:Labcd/bs;

    invoke-virtual {v0}, Labcd/bs;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Labcd/Tr;->Hw:Labcd/cs;

    invoke-virtual {v3, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/bs;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public abstract j6(Labcd/Tr$b;)V
.end method

.method public final j6()Z
    .registers 2

    iget-object v0, p0, Labcd/Tr;->j6:Labcd/es;

    invoke-virtual {v0}, Labcd/es;->j6()Z

    move-result v0

    return v0
.end method

.method public j6(Labcd/Tr;)Z
    .registers 4

    iget-object v0, p0, Labcd/Tr;->j6:Labcd/es;

    invoke-virtual {p1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/Tr;->DW:Labcd/hs;

    invoke-virtual {p1}, Labcd/Tr;->Zo()Labcd/hs;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/hs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Labcd/Tr;->FH:Labcd/bs;

    invoke-virtual {p1}, Labcd/Tr;->VH()Labcd/bs;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Tr;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/Tr;->Hw:Labcd/cs;

    invoke-virtual {p1}, Labcd/Tr;->gn()Labcd/cs;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Tr;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Tr;->DW()Labcd/Ss;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/Ps;->DW(Labcd/Ss;Labcd/Ss;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/Tr;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Tr;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u7()Labcd/Tr;
    .registers 1

    return-object p0
.end method

.method public final v5()Labcd/es;
    .registers 2

    iget-object v0, p0, Labcd/Tr;->j6:Labcd/es;

    return-object v0
.end method
