.class Labcd/HE;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/_D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/IE;->j6(Ljava/lang/Iterable;Z)Labcd/_D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "L_D",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private DW:J

.field final FH:Labcd/IE;

.field private final Hw:Ljava/util/Iterator;

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

    iput-object p1, p0, Labcd/HE;->FH:Labcd/IE;

    iput-object p2, p0, Labcd/HE;->Hw:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()Labcd/yE;
    .registers 2

    iget-object v0, p0, Labcd/HE;->j6:Labcd/yE;

    return-object v0
.end method

.method public Hw()Labcd/yE;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Labcd/HE;->j6:Labcd/yE;

    return-object v0
.end method

.method public j6()V
    .registers 1

    return-void
.end method

.method public next()Z
    .registers 4

    iget-object v0, p0, Labcd/HE;->Hw:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/HE;->Hw:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    iput-object v0, p0, Labcd/HE;->j6:Labcd/yE;

    iget-object v0, p0, Labcd/HE;->FH:Labcd/IE;

    iget-object v1, p0, Labcd/HE;->j6:Labcd/yE;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Labcd/IE;->DW(Labcd/YD;I)J

    move-result-wide v0

    iput-wide v0, p0, Labcd/HE;->DW:J

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v5()J
    .registers 3

    iget-wide v0, p0, Labcd/HE;->DW:J

    return-wide v0
.end method
