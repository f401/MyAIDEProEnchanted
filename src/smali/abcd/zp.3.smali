.class public abstract Labcd/zp;
.super Labcd/Sp;


# direct methods
.method public constructor <init>(Ljava/lang/String;Labcd/jp;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Labcd/Sp;-><init>(Ljava/lang/String;Labcd/jp;I)V

    return-void
.end method


# virtual methods
.method protected tp()V
    .registers 4

    invoke-virtual {p0}, Labcd/Kp;->Hw()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yp;

    invoke-virtual {v0, v1}, Labcd/up;->j6(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
