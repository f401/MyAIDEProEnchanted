.class Labcd/fQ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gQ;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/gQ;


# direct methods
.method constructor <init>(Labcd/gQ;)V
    .registers 2

    iput-object p1, p0, Labcd/fQ;->j6:Labcd/gQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Labcd/fQ;->j6:Labcd/gQ;

    invoke-static {v0}, Labcd/gQ;->j6(Labcd/gQ;)Ltv/ouya/console/api/k;

    move-result-object v0

    invoke-interface {v0}, Ltv/ouya/console/api/k;->onCancel()V

    return-void
.end method
