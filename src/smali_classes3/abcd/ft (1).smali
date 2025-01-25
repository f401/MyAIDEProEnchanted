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
    .registers 3

    iput-object p1, p0, Labcd/ft;->DW:Labcd/gt;

    iput-object p2, p0, Labcd/ft;->j6:Labcd/ls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Labcd/mt;)V
    .registers 9

    invoke-virtual {p1}, Labcd/mt;->gn()Labcd/Tr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Tr;->v5()Labcd/es;

    move-result-object v0

    invoke-virtual {p1}, Labcd/mt;->tp()Labcd/cs;

    move-result-object v1

    iget-object v2, p0, Labcd/ft;->DW:Labcd/gt;

    invoke-static {v2, p1}, Labcd/gt;->j6(Labcd/gt;Labcd/mt;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-void

    :cond_15
    invoke-virtual {v1}, Labcd/Xt;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1d

    return-void

    :cond_1d
    invoke-virtual {v0}, Labcd/es;->DW()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_58

    invoke-virtual {v1, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-static {v2}, Labcd/gt;->j6(Labcd/bs;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_43

    iget-object v2, p0, Labcd/ft;->DW:Labcd/gt;

    invoke-virtual {v1}, Labcd/cs;->er()Labcd/cs;

    move-result-object v1

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    invoke-static {v0}, Labcd/_r;->j6(I)I

    move-result v0

    :goto_3f
    invoke-static {v2, p1, v1, v0, v3}, Labcd/gt;->j6(Labcd/gt;Labcd/mt;Labcd/cs;ILabcd/ms;)V

    goto :goto_92

    :cond_43
    invoke-virtual {v1, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-static {v2}, Labcd/gt;->j6(Labcd/bs;)Z

    move-result v2

    if-eqz v2, :cond_92

    iget-object v2, p0, Labcd/ft;->DW:Labcd/gt;

    invoke-virtual {v1}, Labcd/cs;->yS()Labcd/cs;

    move-result-object v1

    invoke-virtual {v0}, Labcd/es;->Hw()I

    move-result v0

    goto :goto_3f

    :cond_58
    iget-object v2, p0, Labcd/ft;->j6:Labcd/ls;

    invoke-virtual {v1, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v1, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v6

    invoke-interface {v2, v0, v3, v6}, Labcd/ls;->j6(Labcd/es;Labcd/bs;Labcd/bs;)Z

    move-result v2

    if-eqz v2, :cond_6c

    :goto_68
    invoke-virtual {p1}, Labcd/mt;->rN()V

    goto :goto_92

    :cond_6c
    invoke-virtual {v0}, Labcd/es;->gn()Z

    move-result v2

    if-eqz v2, :cond_92

    iget-object v2, p0, Labcd/ft;->j6:Labcd/ls;

    invoke-virtual {v1, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v1, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v6

    invoke-interface {v2, v0, v3, v6}, Labcd/ls;->j6(Labcd/es;Labcd/bs;Labcd/bs;)Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-virtual {v1, v4}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v1, v5}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/cs;->j6(Labcd/bs;Labcd/bs;)Labcd/cs;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/mt;->j6(Labcd/cs;)V

    goto :goto_68

    :cond_92
    :goto_92
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
