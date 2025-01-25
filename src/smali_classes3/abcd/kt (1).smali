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

    if-eq v0, v1, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Labcd/kt;->FH:Labcd/lt;

    invoke-static {v0, p1}, Labcd/lt;->j6(Labcd/lt;Labcd/mt;)I

    move-result v0

    iget-object v1, p0, Labcd/kt;->j6:[Labcd/bs;

    aget-object v2, v1, v0

    if-nez v2, :cond_1f

    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object p1

    aput-object p1, v1, v0

    goto :goto_75

    :cond_1f
    invoke-virtual {p1}, Labcd/vt;->u7()Labcd/bs;

    move-result-object v0

    invoke-virtual {v2}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v1

    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v3

    if-nez v1, :cond_2f

    move-object v1, v3

    goto :goto_38

    :cond_2f
    if-nez v3, :cond_32

    goto :goto_38

    :cond_32
    invoke-virtual {v1, v3}, Labcd/Vr;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    :goto_38
    iget-object v3, p0, Labcd/kt;->FH:Labcd/lt;

    invoke-static {v3}, Labcd/lt;->j6(Labcd/lt;)Labcd/yt;

    move-result-object v3

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v4

    invoke-virtual {v3, v4}, Labcd/yt;->FH(I)Labcd/vt;

    move-result-object v3

    invoke-virtual {v3, v1}, Labcd/vt;->j6(Labcd/Vr;)V

    new-instance v1, Labcd/jt;

    invoke-direct {v1, p0, v0, v2}, Labcd/jt;-><init>(Labcd/kt;Labcd/bs;Labcd/bs;)V

    iget-object v2, p0, Labcd/kt;->FH:Labcd/lt;

    invoke-static {v2}, Labcd/lt;->j6(Labcd/lt;)Labcd/yt;

    move-result-object v2

    invoke-virtual {v0}, Labcd/bs;->we()I

    move-result v0

    invoke-virtual {v2, v0}, Labcd/yt;->Hw(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_62
    if-ltz v2, :cond_70

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/vt;

    invoke-virtual {v3, v1}, Labcd/vt;->DW(Labcd/qt;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_62

    :cond_70
    iget-object v0, p0, Labcd/kt;->DW:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_75
    :goto_75
    return-void
.end method

.method public j6(Labcd/mt;)V
    .registers 2

    return-void
.end method

.method public j6(Labcd/ot;)V
    .registers 2

    return-void
.end method
