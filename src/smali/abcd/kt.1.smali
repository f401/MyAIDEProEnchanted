.class Labcd/kt;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/vt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/lt;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Ljava/util/HashSet;

.field final FH:Labcd/lt;

.field final j6:[Labcd/bs;


# direct methods
.method constructor <init>(Labcd/lt;[Labcd/bs;Ljava/util/HashSet;)V
    .registers 4

    iput-object p1, p0, Labcd/kt;->FH:Labcd/lt;

    iput-object p2, p0, Labcd/kt;->j6:[Labcd/bs;

    iput-object p3, p0, Labcd/kt;->DW:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Labcd/mt;)V
    .registers 7

    invoke-virtual {p1}, Labcd/mt;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/kt;->FH:Labcd/lt;

    invoke-static {v0, p1}, Labcd/lt;->j6(Labcd/lt;Labcd/mt;)I

    move-result v0

    iget-object v1, p0, Labcd/kt;->j6:[Labcd/bs;

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    :cond_2
    aget-object v2, v1, v0

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v3

    invoke-virtual {v2}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v1

    invoke-virtual {v3}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v0

    if-nez v1, :cond_3

    :goto_1
    iget-object v1, p0, Labcd/kt;->FH:Labcd/lt;

    invoke-static {v1}, Labcd/lt;->j6(Labcd/lt;)Labcd/yt;

    move-result-object v1

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v4

    invoke-virtual {v1, v4}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/vt;->j6(Labcd/Vr;)V

    new-instance v4, Labcd/jt;

    invoke-direct {v4, p0, v3, v2}, Labcd/jt;-><init>(Labcd/kt;Labcd/bs;Labcd/bs;)V

    iget-object v0, p0, Labcd/kt;->FH:Labcd/lt;

    invoke-static {v0}, Labcd/lt;->j6(Labcd/lt;)Labcd/yt;

    move-result-object v0

    invoke-virtual {v3}, Labcd/bs;->we()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0, v4}, Labcd/vt;->DW(Labcd/qt;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v0}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Labcd/kt;->DW:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public j6(Labcd/mt;)V
    .registers 2

    return-void
.end method

.method public j6(Labcd/ot;)V
    .registers 2

    return-void
.end method
