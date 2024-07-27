.class public abstract Labcd/Bn;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/tn;


# instance fields
.field private final DW:I

.field private final FH:Labcd/Hs;

.field private final Hw:Labcd/pn;

.field private final j6:Labcd/Ks;


# direct methods
.method public constructor <init>(Labcd/Ks;ILabcd/Hs;Labcd/pn;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Labcd/Bn;->j6:Labcd/Ks;

    iput p2, p0, Labcd/Bn;->DW:I

    iput-object p3, p0, Labcd/Bn;->FH:Labcd/Hs;

    iput-object p4, p0, Labcd/Bn;->Hw:Labcd/pn;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "nat == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "definingClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final DW()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/Bn;->j6:Labcd/Ks;

    return-object v0
.end method

.method public final FH()Labcd/Hs;
    .registers 2

    iget-object v0, p0, Labcd/Bn;->FH:Labcd/Hs;

    return-object v0
.end method

.method public final Hw()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Bn;->FH:Labcd/Hs;

    invoke-virtual {v0}, Labcd/Hs;->VH()Labcd/Js;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributes()Labcd/pn;
    .registers 2

    iget-object v0, p0, Labcd/Bn;->Hw:Labcd/pn;

    return-object v0
.end method

.method public final getName()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Bn;->FH:Labcd/Hs;

    invoke-virtual {v0}, Labcd/Hs;->J8()Labcd/Js;

    move-result-object v0

    return-object v0
.end method

.method public final j6()I
    .registers 2

    iget v0, p0, Labcd/Bn;->DW:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Labcd/Bn;->FH:Labcd/Hs;

    invoke-virtual {v1}, Labcd/Hs;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
