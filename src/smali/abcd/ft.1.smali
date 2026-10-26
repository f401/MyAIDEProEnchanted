.class Labcd/ft;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/vt$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/gt;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/gt;

.field final j6:Labcd/ls;


# direct methods
.method constructor <init>(Labcd/gt;Labcd/ls;)V
    .locals 0

    iput-object p1, p0, Labcd/ft;->DW:Labcd/gt;

    iput-object p2, p0, Labcd/ft;->j6:Labcd/ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Labcd/mt;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Labcd/mt;->gn()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v2

    invoke-virtual {p1}, Labcd/mt;->tp()Labcd/cs;

    move-result-object v0

    iget-object v1, p0, Labcd/ft;->DW:Labcd/gt;

    invoke-static {v1, p1}, Labcd/gt;->j6(Labcd/gt;Labcd/mt;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-virtual {v2}, Labcd/es;->DW()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    invoke-virtual {v0, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-static {v1}, Labcd/gt;->j6(Labcd/bs;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Labcd/ft;->DW:Labcd/gt;

    invoke-virtual {v0}, Labcd/cs;->er()Labcd/cs;

    move-result-object v0

    invoke-virtual {v2}, Labcd/es;->Hw()I

    move-result v2

    invoke-static {v2}, Labcd/_r;->j6(I)I

    move-result v2

    :goto_1
    const/4 v3, 0x0

    invoke-static {v1, p1, v0, v2, v3}, Labcd/gt;->j6(Labcd/gt;Labcd/mt;Labcd/cs;ILabcd/ms;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v6}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-static {v1}, Labcd/gt;->j6(Labcd/bs;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/ft;->DW:Labcd/gt;

    invoke-virtual {v0}, Labcd/cs;->yS()Labcd/cs;

    move-result-object v0

    invoke-virtual {v2}, Labcd/es;->Hw()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Labcd/ft;->j6:Labcd/ls;

    invoke-virtual {v0, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v0, v6}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Labcd/ls;->j6(Labcd/es;Labcd/bs;Labcd/bs;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    invoke-virtual {p1}, Labcd/mt;->rN()V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Labcd/es;->gn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Labcd/ft;->j6:Labcd/ls;

    invoke-virtual {v0, v6}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v0, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Labcd/ls;->j6(Labcd/es;Labcd/bs;Labcd/bs;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v6}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-virtual {v0, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/cs;->j6(Labcd/bs;Labcd/bs;)Labcd/cs;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/mt;->j6(Labcd/cs;)V

    goto :goto_2
.end method

.method public j6(Labcd/mt;)V
    .locals 0

    return-void
.end method

.method public j6(Labcd/ot;)V
    .locals 0

    return-void
.end method
