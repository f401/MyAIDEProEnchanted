.class Labcd/PH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/QH;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Labcd/TH;",
        ">;"
    }
.end annotation


# instance fields
.field private DW:Labcd/TH;

.field final FH:Labcd/QH;

.field private final j6:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/ref/WeakReference<",
            "Labcd/TH;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Labcd/QH;)V
    .registers 2

    iput-object p1, p0, Labcd/PH;->FH:Labcd/QH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Labcd/TH;->DW()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Labcd/PH;->j6:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Labcd/PH;->DW:Labcd/TH;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    :goto_6
    iget-object v0, p0, Labcd/PH;->j6:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    iget-object v0, p0, Labcd/PH;->j6:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/TH;

    iput-object v0, p0, Labcd/PH;->DW:Labcd/TH;

    if-eqz v0, :cond_23

    return v1

    :cond_23
    iget-object v0, p0, Labcd/PH;->j6:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6
.end method

.method public next()Labcd/TH;
    .registers 3

    invoke-virtual {p0}, Labcd/PH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Labcd/PH;->DW:Labcd/TH;

    const/4 v1, 0x0

    iput-object v1, p0, Labcd/PH;->DW:Labcd/TH;

    return-object v0

    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/PH;->next()Labcd/TH;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
