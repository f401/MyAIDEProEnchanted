.class public final Labcd/ps;
.super Labcd/ms;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/ps$a;
    }
.end annotation


# instance fields
.field private final j6:Labcd/ps$a;


# direct methods
.method public constructor <init>(Labcd/ps$a;)V
    .registers 3

    invoke-direct {p0}, Labcd/ms;-><init>()V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Labcd/hu;->Ws()V

    iput-object p1, p0, Labcd/ps;->j6:Labcd/ps$a;

    return-void

    :cond_b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "list == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected DW(Labcd/ms;)I
    .registers 3

    iget-object v0, p0, Labcd/ps;->j6:Labcd/ps$a;

    check-cast p1, Labcd/ps;

    iget-object p1, p1, Labcd/ps;->j6:Labcd/ps$a;

    invoke-virtual {v0, p1}, Labcd/ps$a;->j6(Labcd/ps$a;)I

    move-result p1

    return p1
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public VH()Labcd/ps$a;
    .registers 2

    iget-object v0, p0, Labcd/ps;->j6:Labcd/ps$a;

    return-object v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "array"

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/ps;->j6:Labcd/ps$a;

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    invoke-virtual {v0, v3, v1, v2}, Labcd/Xt;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/ps;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Labcd/ps;->j6:Labcd/ps$a;

    check-cast p1, Labcd/ps;

    iget-object p1, p1, Labcd/ps;->j6:Labcd/ps$a;

    invoke-virtual {v0, p1}, Labcd/Xt;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/ps;->j6:Labcd/ps$a;

    invoke-virtual {v0}, Labcd/Xt;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Labcd/ps;->j6:Labcd/ps$a;

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "array{"

    invoke-virtual {v0, v3, v1, v2}, Labcd/Xt;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
