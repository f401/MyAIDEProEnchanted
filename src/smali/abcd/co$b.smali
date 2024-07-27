.class public Labcd/co$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Labcd/co$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/co$a;

.field private final FH:Labcd/bs;

.field private final Hw:Labcd/Ks;

.field private final j6:I


# direct methods
.method public constructor <init>(ILabcd/co$a;Labcd/bs;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p3}, Labcd/bs;->Zo()Labcd/Vr;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    iput p1, p0, Labcd/co$b;->j6:I

    iput-object p2, p0, Labcd/co$b;->DW:Labcd/co$a;

    iput-object p3, p0, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {p3}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-static {v0}, Labcd/Ks;->DW(Labcd/Qs;)Labcd/Ks;

    move-result-object v0

    iput-object v0, p0, Labcd/co$b;->Hw:Labcd/Ks;

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec.getLocalItem() == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "disposition == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public DW(Labcd/co$b;)Z
    .registers 3

    iget-object v0, p1, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {p0, v0}, Labcd/co$b;->j6(Labcd/bs;)Z

    move-result v0

    return v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/co$b;->j6:I

    return v0
.end method

.method public J8()Labcd/bs;
    .registers 2

    iget-object v0, p0, Labcd/co$b;->FH:Labcd/bs;

    return-object v0
.end method

.method public VH()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Vr;->Hw()Labcd/Js;

    move-result-object v0

    return-object v0
.end method

.method public Ws()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Vr;->Zo()Labcd/Js;

    move-result-object v0

    return-object v0
.end method

.method public Zo()Labcd/co$a;
    .registers 2

    iget-object v0, p0, Labcd/co$b;->DW:Labcd/co$a;

    return-object v0
.end method

.method public aM()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/co$b;->Hw:Labcd/Ks;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/co$b;

    invoke-virtual {p0, p1}, Labcd/co$b;->j6(Labcd/co$b;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/co$b;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Labcd/co$b;

    invoke-virtual {p0, p1}, Labcd/co$b;->j6(Labcd/co$b;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j3()Z
    .registers 3

    iget-object v0, p0, Labcd/co$b;->DW:Labcd/co$a;

    sget-object v1, Labcd/co$a;->j6:Labcd/co$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Labcd/co$b;)I
    .registers 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget v2, p0, Labcd/co$b;->j6:I

    iget v3, p1, Labcd/co$b;->j6:I

    if-ge v2, v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-gt v2, v3, :cond_0

    invoke-virtual {p0}, Labcd/co$b;->j3()Z

    move-result v2

    invoke-virtual {p1}, Labcd/co$b;->j3()Z

    move-result v3

    if-eq v2, v3, :cond_2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Labcd/co$b;->FH:Labcd/bs;

    iget-object v1, p1, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {v0, v1}, Labcd/bs;->j6(Labcd/bs;)I

    move-result v0

    goto :goto_0
.end method

.method public j6(Labcd/co$a;)Labcd/co$b;
    .registers 5

    iget-object v0, p0, Labcd/co$b;->DW:Labcd/co$a;

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Labcd/co$b;

    iget v1, p0, Labcd/co$b;->j6:I

    iget-object v2, p0, Labcd/co$b;->FH:Labcd/bs;

    invoke-direct {v0, v1, p1, v2}, Labcd/co$b;-><init>(ILabcd/co$a;Labcd/bs;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public j6(Labcd/bs;)Z
    .registers 3

    iget-object v0, p0, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {v0, p1}, Labcd/bs;->DW(Labcd/bs;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Labcd/co$b;->j6:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/co$b;->DW:Labcd/co$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public we()I
    .registers 2

    iget-object v0, p0, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    return v0
.end method
