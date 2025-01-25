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

    move-result-object v0

    const/4 v1, 0x0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/yp;

    invoke-virtual {v2, v1}, Labcd/up;->j6(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method
