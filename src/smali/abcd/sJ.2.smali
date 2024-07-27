.class Labcd/sJ;
.super Labcd/cJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/tJ;-><init>(Labcd/UE;Labcd/HJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/tJ;


# direct methods
.method constructor <init>(Labcd/tJ;)V
    .registers 2

    iput-object p1, p0, Labcd/sJ;->DW:Labcd/tJ;

    invoke-direct {p0}, Labcd/cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/HJ;Labcd/kI;Labcd/pK;I)Labcd/ZI;
    .registers 8

    new-instance v0, Labcd/tJ$a;

    iget-object v1, p0, Labcd/sJ;->DW:Labcd/tJ;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/tJ$a;-><init>(Labcd/tJ;Labcd/tJ$a;)V

    return-object v0
.end method
