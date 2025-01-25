.class Labcd/eQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gQ;->j6(ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/String;

.field final FH:Landroid/os/Bundle;

.field final Hw:Labcd/gQ;

.field final j6:I


# direct methods
.method constructor <init>(Labcd/gQ;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Labcd/eQ;->Hw:Labcd/gQ;

    iput p2, p0, Labcd/eQ;->j6:I

    iput-object p3, p0, Labcd/eQ;->DW:Ljava/lang/String;

    iput-object p4, p0, Labcd/eQ;->FH:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Labcd/eQ;->Hw:Labcd/gQ;

    invoke-static {v0}, Labcd/gQ;->j6(Labcd/gQ;)Ltv/ouya/console/api/k;

    move-result-object v0

    iget v1, p0, Labcd/eQ;->j6:I

    iget-object v2, p0, Labcd/eQ;->DW:Ljava/lang/String;

    iget-object v3, p0, Labcd/eQ;->FH:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Ltv/ouya/console/api/k;->j6(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
