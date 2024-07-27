.class Labcd/oG;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/MF;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/qG;->j6(Ljava/lang/Iterable;Z)Labcd/MF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Ljava/util/Iterator;

.field private final FH:Labcd/ZD;

.field final j6:Labcd/qG;


# direct methods
.method constructor <init>(Labcd/qG;Ljava/util/Iterator;Labcd/ZD;)V
    .registers 4

    iput-object p1, p0, Labcd/oG;->j6:Labcd/qG;

    iput-object p2, p0, Labcd/oG;->DW:Ljava/util/Iterator;

    iput-object p3, p0, Labcd/oG;->FH:Labcd/ZD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 2

    iget-object v0, p0, Labcd/oG;->FH:Labcd/ZD;

    invoke-interface {v0}, Labcd/aE;->j6()V

    return-void
.end method

.method public next()Labcd/iG;
    .registers 5

    iget-object v0, p0, Labcd/oG;->DW:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/oG;->DW:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iG;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/oG;->FH:Labcd/ZD;

    invoke-interface {v0}, Labcd/ZD;->next()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/oG;->FH:Labcd/ZD;

    invoke-interface {v0}, Labcd/ZD;->DW()Labcd/yE;

    move-result-object v1

    iget-object v0, p0, Labcd/oG;->FH:Labcd/ZD;

    invoke-interface {v0}, Labcd/ZD;->FH()Labcd/FE;

    move-result-object v2

    iget-object v0, p0, Labcd/oG;->j6:Labcd/qG;

    iget-object v0, v0, Labcd/qG;->Hw:Labcd/AE;

    invoke-virtual {v0, v1}, Labcd/AE;->DW(Labcd/YD;)Labcd/AE$a;

    move-result-object v0

    check-cast v0, Labcd/iG;

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/oG;->j6:Labcd/qG;

    invoke-static {v0, v1, v2}, Labcd/qG;->j6(Labcd/qG;Labcd/YD;Labcd/FE;)Labcd/iG;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Labcd/dG;

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Labcd/FE;->j6()[B

    move-result-object v2

    move-object v1, v0

    check-cast v1, Labcd/dG;

    iget-object v3, p0, Labcd/oG;->j6:Labcd/qG;

    invoke-virtual {v1, v3, v2}, Labcd/dG;->j6(Labcd/qG;[B)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Labcd/lG;

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Labcd/FE;->j6()[B

    move-result-object v2

    move-object v1, v0

    check-cast v1, Labcd/lG;

    iget-object v3, p0, Labcd/oG;->j6:Labcd/qG;

    invoke-virtual {v1, v3, v2}, Labcd/lG;->j6(Labcd/qG;[B)V

    goto :goto_0

    :cond_4
    iget v1, v0, Labcd/iG;->EQ:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Labcd/iG;->EQ:I

    goto :goto_0
.end method
