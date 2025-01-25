.class final Labcd/nH$f;
.super Labcd/BE$c;

# interfaces
.implements Labcd/nH$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/nH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private Hw:Labcd/LG;


# direct methods
.method constructor <init>(Labcd/LG;Ljava/lang/String;Labcd/yE;)V
    .registers 5

    sget-object v0, Labcd/ME$a;->DW:Labcd/ME$a;

    invoke-direct {p0, v0, p2, p3}, Labcd/BE$c;-><init>(Labcd/ME$a;Ljava/lang/String;Labcd/yE;)V

    iput-object p1, p0, Labcd/nH$f;->Hw:Labcd/LG;

    return-void
.end method


# virtual methods
.method public VH()Labcd/LG;
    .registers 2

    iget-object v0, p0, Labcd/nH$f;->Hw:Labcd/LG;

    return-object v0
.end method

.method public j6(Labcd/BE;)Labcd/nH$c;
    .registers 6

    invoke-interface {p1}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v0, Labcd/nH$b;

    iget-object v1, p0, Labcd/nH$f;->Hw:Labcd/LG;

    invoke-virtual {p0}, Labcd/BE;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Labcd/BE;->DW()Labcd/yE;

    move-result-object v3

    invoke-interface {p1}, Labcd/ME;->FH()Labcd/yE;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Labcd/nH$b;-><init>(Labcd/LG;Ljava/lang/String;Labcd/yE;Labcd/yE;)V

    return-object v0

    :cond_1a
    new-instance p1, Labcd/nH$a;

    iget-object v0, p0, Labcd/nH$f;->Hw:Labcd/LG;

    invoke-virtual {p0}, Labcd/BE;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Labcd/BE;->DW()Labcd/yE;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Labcd/nH$a;-><init>(Labcd/LG;Ljava/lang/String;Labcd/yE;)V

    return-object p1
.end method
