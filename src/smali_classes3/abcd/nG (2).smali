.class Labcd/nG;
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

.field final j6:Labcd/qG;


# direct methods
.method constructor <init>(Labcd/qG;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Labcd/nG;->j6:Labcd/qG;

    iput-object p2, p0, Labcd/nG;->DW:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()V
    .registers 1

    return-void
.end method

.method public next()Labcd/iG;
    .registers 2

    iget-object v0, p0, Labcd/nG;->DW:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Labcd/nG;->DW:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iG;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method
