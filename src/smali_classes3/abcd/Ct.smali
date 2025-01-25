.class Labcd/Ct;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/vt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Dt;->FH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/Dt;


# direct methods
.method constructor <init>(Labcd/Dt;)V
    .registers 2

    iput-object p1, p0, Labcd/Ct;->j6:Labcd/Dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j6(Labcd/vt;)V
    .registers 6

    invoke-virtual {p1}, Labcd/vt;->FH()Labcd/bs;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Labcd/bs;->Zo()Labcd/Vr;

    move-result-object v1

    iget-object v2, p0, Labcd/Ct;->j6:Labcd/Dt;

    invoke-static {v2}, Labcd/Dt;->j6(Labcd/Dt;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_26

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Labcd/Ct;->j6:Labcd/Dt;

    invoke-static {v3}, Labcd/Dt;->j6(Labcd/Dt;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    instance-of v0, p1, Labcd/mt;

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Labcd/vt;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    const/16 v1, 0x38

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Labcd/Ct;->j6:Labcd/Dt;

    invoke-static {v0}, Labcd/Dt;->DW(Labcd/Dt;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_3f
    check-cast p1, Labcd/mt;

    goto :goto_6b

    :cond_42
    invoke-static {}, Labcd/nt;->j6()Labcd/ls;

    move-result-object v0

    invoke-virtual {p1}, Labcd/vt;->gn()Labcd/Tr;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v1

    invoke-virtual {p1}, Labcd/vt;->tp()Labcd/cs;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Labcd/ls;->j6(Labcd/es;Labcd/cs;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Labcd/Ct;->j6:Labcd/Dt;

    invoke-static {v0}, Labcd/Dt;->FH(Labcd/Dt;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3f

    :cond_5f
    instance-of v0, p1, Labcd/ot;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Labcd/Ct;->j6:Labcd/Dt;

    invoke-static {v0}, Labcd/Dt;->Hw(Labcd/Dt;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast p1, Labcd/ot;

    :goto_6b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    return-void
.end method


# virtual methods
.method public DW(Labcd/mt;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Ct;->j6(Labcd/vt;)V

    return-void
.end method

.method public j6(Labcd/mt;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Ct;->j6(Labcd/vt;)V

    return-void
.end method

.method public j6(Labcd/ot;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Ct;->j6(Labcd/vt;)V

    return-void
.end method
