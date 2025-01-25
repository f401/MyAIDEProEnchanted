.class public Labcd/Vr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Labcd/Vr;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/Js;

.field private final j6:Labcd/Js;


# direct methods
.method private constructor <init>(Labcd/Js;Labcd/Js;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Vr;->j6:Labcd/Js;

    iput-object p2, p0, Labcd/Vr;->DW:Labcd/Js;

    return-void
.end method

.method private static DW(Labcd/Js;Labcd/Js;)I
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    if-nez p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    invoke-virtual {p0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result p0

    return p0
.end method

.method public static j6(Labcd/Js;Labcd/Js;)Labcd/Vr;
    .registers 3

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    new-instance v0, Labcd/Vr;

    invoke-direct {v0, p0, p1}, Labcd/Vr;-><init>(Labcd/Js;Labcd/Js;)V

    return-object v0
.end method


# virtual methods
.method public Hw()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Vr;->j6:Labcd/Js;

    return-object v0
.end method

.method public Zo()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Vr;->DW:Labcd/Js;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Vr;

    invoke-virtual {p0, p1}, Labcd/Vr;->j6(Labcd/Vr;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/Vr;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/Vr;

    invoke-virtual {p0, p1}, Labcd/Vr;->j6(Labcd/Vr;)I

    move-result p1

    if-nez p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Labcd/Vr;->j6:Labcd/Js;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Labcd/Js;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Labcd/Vr;->DW:Labcd/Js;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Labcd/Js;->hashCode()I

    move-result v1

    :goto_14
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public j6(Labcd/Vr;)I
    .registers 4

    iget-object v0, p0, Labcd/Vr;->j6:Labcd/Js;

    iget-object v1, p1, Labcd/Vr;->j6:Labcd/Js;

    invoke-static {v0, v1}, Labcd/Vr;->DW(Labcd/Js;Labcd/Js;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    iget-object v0, p0, Labcd/Vr;->DW:Labcd/Js;

    iget-object p1, p1, Labcd/Vr;->DW:Labcd/Js;

    invoke-static {v0, p1}, Labcd/Vr;->DW(Labcd/Js;Labcd/Js;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/Vr;->j6:Labcd/Js;

    if-eqz v0, :cond_d

    iget-object v1, p0, Labcd/Vr;->DW:Labcd/Js;

    if-nez v1, :cond_d

    invoke-virtual {v0}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const-string v1, ""

    if-nez v0, :cond_16

    iget-object v0, p0, Labcd/Vr;->DW:Labcd/Js;

    if-nez v0, :cond_16

    return-object v1

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Vr;->j6:Labcd/Js;

    if-nez v2, :cond_26

    move-object v2, v1

    goto :goto_2a

    :cond_26
    invoke-virtual {v2}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/Vr;->DW:Labcd/Js;

    if-nez v2, :cond_37

    goto :goto_3b

    :cond_37
    invoke-virtual {v2}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v1

    :goto_3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
