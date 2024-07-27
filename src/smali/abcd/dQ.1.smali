.class Labcd/dQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gQ;->j6(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/gQ;

.field final j6:Ljava/lang/Object;


# direct methods
.method constructor <init>(Labcd/gQ;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Labcd/dQ;->DW:Labcd/gQ;

    iput-object p2, p0, Labcd/dQ;->j6:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Labcd/dQ;->DW:Labcd/gQ;

    invoke-static {v0}, Labcd/gQ;->j6(Labcd/gQ;)Ltv/ouya/console/api/k;

    move-result-object v0

    iget-object v1, p0, Labcd/dQ;->j6:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ltv/ouya/console/api/k;->j6(Ljava/lang/Object;)V

    return-void
.end method
