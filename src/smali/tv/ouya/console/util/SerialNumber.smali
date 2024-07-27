.class public Ltv/ouya/console/util/SerialNumber;
.super Ljava/lang/Object;


# instance fields
.field private DW:Landroid/content/Context;

.field private j6:Labcd/iQ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/ouya/console/util/SerialNumber;->DW:Landroid/content/Context;

    invoke-static {}, Labcd/iQ;->j6()Labcd/iQ;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/util/SerialNumber;->j6:Labcd/iQ;

    return-void
.end method
