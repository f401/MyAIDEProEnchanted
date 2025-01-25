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
        "Ljava/lang/Comparable<",
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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_37

    if-eqz p2, :cond_2f

    :try_start_7
    invoke-virtual {p3}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_b} :catch_26

    if-eqz v0, :cond_1e

    iput p1, p0, Labcd/co$b;->j6:I

    iput-object p2, p0, Labcd/co$b;->DW:Labcd/co$a;

    iput-object p3, p0, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {p3}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object p1

    invoke-static {p1}, Labcd/Ks;->DW(Labcd/Qs;)Labcd/Ks;

    move-result-object p1

    iput-object p1, p0, Labcd/co$b;->Hw:Labcd/Ks;

    return-void

    :cond_1e
    :try_start_1e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec.getLocalItem() == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_26
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_26} :catch_26

    :catch_26
    move-exception p1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "spec == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "disposition == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW(Labcd/co$b;)Z
    .registers 2

    iget-object p1, p1, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {p0, p1}, Labcd/co$b;->j6(Labcd/bs;)Z

    move-result p1

    return p1
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
    .registers 2

    check-cast p1, Labcd/co$b;

    invoke-virtual {p0, p1}, Labcd/co$b;->j6(Labcd/co$b;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/co$b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/co$b;

    invoke-virtual {p0, p1}, Labcd/co$b;->j6(Labcd/co$b;)I

    move-result p1

    if-nez p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public j3()Z
    .registers 3

    iget-object v0, p0, Labcd/co$b;->DW:Labcd/co$a;

    sget-object v1, Labcd/co$a;->j6:Labcd/co$a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public j6(Labcd/co$b;)I
    .registers 6

    iget v0, p0, Labcd/co$b;->j6:I

    iget v1, p1, Labcd/co$b;->j6:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x1

    if-le v0, v1, :cond_c

    return v3

    :cond_c
    invoke-virtual {p0}, Labcd/co$b;->j3()Z

    move-result v0

    invoke-virtual {p1}, Labcd/co$b;->j3()Z

    move-result v1

    if-eq v0, v1, :cond_1a

    if-eqz v0, :cond_19

    const/4 v2, 0x1

    :cond_19
    return v2

    :cond_1a
    iget-object v0, p0, Labcd/co$b;->FH:Labcd/bs;

    iget-object p1, p1, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {v0, p1}, Labcd/bs;->j6(Labcd/bs;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/co$a;)Labcd/co$b;
    .registers 5

    iget-object v0, p0, Labcd/co$b;->DW:Labcd/co$a;

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Labcd/co$b;

    iget v1, p0, Labcd/co$b;->j6:I

    iget-object v2, p0, Labcd/co$b;->FH:Labcd/bs;

    invoke-direct {v0, v1, p1, v2}, Labcd/co$b;-><init>(ILabcd/co$a;Labcd/bs;)V

    return-object v0
.end method

.method public j6(Labcd/bs;)Z
    .registers 3

    iget-object v0, p0, Labcd/co$b;->FH:Labcd/bs;

    invoke-virtual {v0, p1}, Labcd/bs;->DW(Labcd/bs;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Labcd/co$b;->j6:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Labcd/co$b;->DW:Labcd/co$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
