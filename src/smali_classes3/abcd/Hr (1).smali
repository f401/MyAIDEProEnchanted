.class public final Labcd/Hr;
.super Labcd/hu;

# interfaces
.implements Ljava/lang/Comparable;
.implements Labcd/lu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/hu;",
        "Ljava/lang/Comparable<",
        "Labcd/Hr;",
        ">;",
        "Labcd/lu;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/Ks;

.field private final FH:Labcd/Ir;

.field private final Hw:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Labcd/Js;",
            "Labcd/Lr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/Ks;Labcd/Ir;)V
    .registers 3

    invoke-direct {p0}, Labcd/hu;-><init>()V

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_13

    iput-object p1, p0, Labcd/Hr;->DW:Labcd/Ks;

    iput-object p2, p0, Labcd/Hr;->FH:Labcd/Ir;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Labcd/Hr;->Hw:Ljava/util/TreeMap;

    return-void

    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "visibility == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "type == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW(Labcd/Lr;)V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p1, :cond_f

    iget-object v0, p0, Labcd/Hr;->Hw:Ljava/util/TreeMap;

    invoke-virtual {p1}, Labcd/Lr;->Hw()Labcd/Js;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "pair == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public aM()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/Hr;->FH:Labcd/Ir;

    invoke-virtual {v1}, Labcd/Ir;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-annotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Hr;->DW:Labcd/Ks;

    invoke-virtual {v1}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Hr;->Hw:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Lr;

    if-eqz v2, :cond_3c

    const/4 v2, 0x0

    goto :goto_41

    :cond_3c
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_41
    invoke-virtual {v3}, Labcd/Lr;->Hw()Labcd/Js;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Labcd/Lr;->Zo()Labcd/ms;

    move-result-object v3

    invoke-interface {v3}, Labcd/lu;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_5d
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Hr;

    invoke-virtual {p0, p1}, Labcd/Hr;->j6(Labcd/Hr;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Labcd/Hr;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/Hr;

    iget-object v0, p0, Labcd/Hr;->DW:Labcd/Ks;

    iget-object v2, p1, Labcd/Hr;->DW:Labcd/Ks;

    invoke-virtual {v0, v2}, Labcd/Ks;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Labcd/Hr;->FH:Labcd/Ir;

    iget-object v2, p1, Labcd/Hr;->FH:Labcd/Ir;

    if-eq v0, v2, :cond_19

    goto :goto_22

    :cond_19
    iget-object v0, p0, Labcd/Hr;->Hw:Ljava/util/TreeMap;

    iget-object p1, p1, Labcd/Hr;->Hw:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_22
    :goto_22
    return v1
.end method

.method public getType()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/Hr;->DW:Labcd/Ks;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Labcd/Hr;->DW:Labcd/Ks;

    invoke-virtual {v0}, Labcd/Ks;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/Hr;->Hw:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/Hr;->FH:Labcd/Ir;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j6(Labcd/Hr;)I
    .registers 5

    iget-object v0, p0, Labcd/Hr;->DW:Labcd/Ks;

    iget-object v1, p1, Labcd/Hr;->DW:Labcd/Ks;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    iget-object v0, p0, Labcd/Hr;->FH:Labcd/Ir;

    iget-object v1, p1, Labcd/Hr;->FH:Labcd/Ir;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    :cond_16
    iget-object v0, p0, Labcd/Hr;->Hw:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p1, p1, Labcd/Hr;->Hw:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/Lr;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Lr;

    invoke-virtual {v1, v2}, Labcd/Lr;->j6(Labcd/Lr;)I

    move-result v1

    if-eqz v1, :cond_2a

    return v1

    :cond_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 p1, 0x1

    return p1

    :cond_51
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_59

    const/4 p1, -0x1

    return p1

    :cond_59
    const/4 p1, 0x0

    return p1
.end method

.method public j6(Labcd/Lr;)V
    .registers 4

    invoke-virtual {p0}, Labcd/hu;->J8()V

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Labcd/Lr;->Hw()Labcd/Js;

    move-result-object v0

    iget-object v1, p0, Labcd/Hr;->Hw:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    iget-object v1, p0, Labcd/Hr;->Hw:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name already added: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "pair == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lg()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/Lr;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/Hr;->Hw:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public rN()Labcd/Ir;
    .registers 2

    iget-object v0, p0, Labcd/Hr;->FH:Labcd/Ir;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/Hr;->aM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
