.class public final Labcd/Lr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Labcd/Lr;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/ms;

.field private final j6:Labcd/Js;


# direct methods
.method public constructor <init>(Labcd/Js;Labcd/ms;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Labcd/Lr;->j6:Labcd/Js;

    iput-object p2, p0, Labcd/Lr;->DW:Labcd/ms;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public Hw()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Lr;->j6:Labcd/Js;

    return-object v0
.end method

.method public Zo()Labcd/ms;
    .registers 2

    iget-object v0, p0, Labcd/Lr;->DW:Labcd/ms;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Lr;

    invoke-virtual {p0, p1}, Labcd/Lr;->j6(Labcd/Lr;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Labcd/Lr;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/Lr;

    iget-object v0, p0, Labcd/Lr;->j6:Labcd/Js;

    iget-object v2, p1, Labcd/Lr;->j6:Labcd/Js;

    invoke-virtual {v0, v2}, Labcd/Js;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Labcd/Lr;->DW:Labcd/ms;

    iget-object p1, p1, Labcd/Lr;->DW:Labcd/ms;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Labcd/Lr;->j6:Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/Lr;->DW:Labcd/ms;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j6(Labcd/Lr;)I
    .registers 4

    iget-object v0, p0, Labcd/Lr;->j6:Labcd/Js;

    iget-object v1, p1, Labcd/Lr;->j6:Labcd/Js;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    iget-object v0, p0, Labcd/Lr;->DW:Labcd/ms;

    iget-object p1, p1, Labcd/Lr;->DW:Labcd/ms;

    invoke-virtual {v0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/Lr;->j6:Labcd/Js;

    invoke-virtual {v1}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Lr;->DW:Labcd/ms;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
