.class Labcd/GE;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/ZD;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/IE;->DW(Ljava/lang/Iterable;Z)Labcd/ZD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LZD<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final DW:Labcd/IE;

.field private final FH:Ljava/util/Iterator;

.field private j6:Labcd/yE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Labcd/IE;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Labcd/GE;->DW:Labcd/IE;

    iput-object p2, p0, Labcd/GE;->FH:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/GE;->j6:Labcd/yE;

    return-object v0
.end method

.method public FH()Labcd/FE;
    .registers 4

    iget-object v0, p0, Labcd/GE;->DW:Labcd/IE;

    iget-object v1, p0, Labcd/GE;->j6:Labcd/yE;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    return-object v0
.end method

.method public j6()V
    .registers 1

    return-void
.end method

.method public next()Z
    .registers 2

    iget-object v0, p0, Labcd/GE;->FH:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Labcd/GE;->FH:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    iput-object v0, p0, Labcd/GE;->j6:Labcd/yE;

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method
