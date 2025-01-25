.class public final Labcd/Hs;
.super Labcd/ms;


# static fields
.field public static final j6:Labcd/Hs;


# instance fields
.field private final DW:Labcd/Js;

.field private final FH:Labcd/Js;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Labcd/Hs;

    new-instance v1, Labcd/Js;

    const-string v2, "TYPE"

    invoke-direct {v1, v2}, Labcd/Js;-><init>(Ljava/lang/String;)V

    new-instance v2, Labcd/Js;

    const-string v3, "Ljava/lang/Class;"

    invoke-direct {v2, v3}, Labcd/Js;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Labcd/Hs;-><init>(Labcd/Js;Labcd/Js;)V

    sput-object v0, Labcd/Hs;->j6:Labcd/Hs;

    return-void
.end method

.method public constructor <init>(Labcd/Js;Labcd/Js;)V
    .registers 3

    invoke-direct {p0}, Labcd/ms;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Labcd/Hs;->DW:Labcd/Js;

    iput-object p2, p0, Labcd/Hs;->FH:Labcd/Js;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "descriptor == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected DW(Labcd/ms;)I
    .registers 4

    check-cast p1, Labcd/Hs;

    iget-object v0, p0, Labcd/Hs;->DW:Labcd/Js;

    iget-object v1, p1, Labcd/Hs;->DW:Labcd/Js;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_d
    iget-object v0, p0, Labcd/Hs;->FH:Labcd/Js;

    iget-object p1, p1, Labcd/Hs;->FH:Labcd/Js;

    invoke-virtual {v0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result p1

    return p1
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public J8()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Hs;->DW:Labcd/Js;

    return-object v0
.end method

.method public VH()Labcd/Js;
    .registers 2

    iget-object v0, p0, Labcd/Hs;->FH:Labcd/Js;

    return-object v0
.end method

.method public final Ws()Z
    .registers 3

    iget-object v0, p0, Labcd/Hs;->DW:Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<clinit>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "nat"

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/Hs;->DW:Labcd/Js;

    invoke-virtual {v1}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Hs;->FH:Labcd/Js;

    invoke-virtual {v1}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Labcd/Hs;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Labcd/Hs;

    iget-object v0, p0, Labcd/Hs;->DW:Labcd/Js;

    iget-object v2, p1, Labcd/Hs;->DW:Labcd/Js;

    invoke-virtual {v0, v2}, Labcd/Js;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Labcd/Hs;->FH:Labcd/Js;

    iget-object p1, p1, Labcd/Hs;->FH:Labcd/Js;

    invoke-virtual {v0, p1}, Labcd/Js;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Labcd/Hs;->DW:Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/Hs;->FH:Labcd/Js;

    invoke-virtual {v1}, Labcd/Js;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final lg()Z
    .registers 3

    iget-object v0, p0, Labcd/Hs;->DW:Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nat{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Hs;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public we()Labcd/Qs;
    .registers 2

    iget-object v0, p0, Labcd/Hs;->FH:Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/Qs;->j6(Ljava/lang/String;)Labcd/Qs;

    move-result-object v0

    return-object v0
.end method
