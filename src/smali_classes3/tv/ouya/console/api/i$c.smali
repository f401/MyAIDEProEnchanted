.class Ltv/ouya/console/api/i$c;
.super Ltv/ouya/console/api/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/ouya/console/api/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final FH:Ltv/ouya/console/api/i;


# direct methods
.method private constructor <init>(Ltv/ouya/console/api/i;Ltv/ouya/console/api/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltv/ouya/console/api/k<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltv/ouya/console/api/i$c;->FH:Ltv/ouya/console/api/i;

    const-string p1, "fetching receipts"

    invoke-direct {p0, p2, p1}, Ltv/ouya/console/api/o;-><init>(Ltv/ouya/console/api/k;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ltv/ouya/console/api/i;Ltv/ouya/console/api/k;Ltv/ouya/console/api/h;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ltv/ouya/console/api/i$c;-><init>(Ltv/ouya/console/api/i;Ltv/ouya/console/api/k;)V

    return-void
.end method


# virtual methods
.method j6()V
    .registers 5

    iget-object v0, p0, Ltv/ouya/console/api/i$c;->FH:Ltv/ouya/console/api/i;

    invoke-static {v0}, Ltv/ouya/console/api/i;->j6(Ltv/ouya/console/api/i;)Labcd/bQ;

    move-result-object v0

    iget-object v1, p0, Ltv/ouya/console/api/i$c;->FH:Ltv/ouya/console/api/i;

    invoke-static {v1}, Ltv/ouya/console/api/i;->DW(Ltv/ouya/console/api/i;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Labcd/hQ;

    iget-object v3, p0, Ltv/ouya/console/api/o;->j6:Ltv/ouya/console/api/k;

    invoke-direct {v2, v3}, Labcd/hQ;-><init>(Ltv/ouya/console/api/k;)V

    invoke-interface {v0, v1, v2}, Labcd/bQ;->j6(Ljava/lang/String;Labcd/cQ;)V

    return-void
.end method
