.class public Labcd/Vr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
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
    .registers 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    goto :goto_0
.end method

.method public static j6(Labcd/Js;Labcd/Js;)Labcd/Vr;
    .registers 3

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/Vr;

    invoke-direct {v0, p0, p1}, Labcd/Vr;-><init>(Labcd/Js;Labcd/Js;)V

    goto :goto_0
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
    .registers 3

    check-cast p1, Labcd/Vr;

    invoke-virtual {p0, p1}, Labcd/Vr;->j6(Labcd/Vr;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/Vr;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/Vr;

    invoke-virtual {p0, p1}, Labcd/Vr;->j6(Labcd/Vr;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/Vr;->j6:Labcd/Js;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Labcd/Vr;->DW:Labcd/Js;

    if-nez v2, :cond_1

    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Labcd/Js;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Labcd/Js;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public j6(Labcd/Vr;)I
    .registers 4

    iget-object v0, p0, Labcd/Vr;->j6:Labcd/Js;

    iget-object v1, p1, Labcd/Vr;->j6:Labcd/Js;

    invoke-static {v0, v1}, Labcd/Vr;->DW(Labcd/Js;Labcd/Js;)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/Vr;->DW:Labcd/Js;

    iget-object v1, p1, Labcd/Vr;->DW:Labcd/Js;

    invoke-static {v0, v1}, Labcd/Vr;->DW(Labcd/Js;Labcd/Js;)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/Vr;->j6:Labcd/Js;

    if-eqz v0, :cond_0

    iget-object v1, p0, Labcd/Vr;->DW:Labcd/Js;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/Vr;->j6:Labcd/Js;

    const-string v1, ""

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/Vr;->DW:Labcd/Js;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Vr;->j6:Labcd/Js;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Vr;->DW:Labcd/Js;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Labcd/Js;->lg()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
