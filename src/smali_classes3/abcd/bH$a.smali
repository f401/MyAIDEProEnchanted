.class abstract Labcd/bH$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/bH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Labcd/bH$b;",
        ">;"
    }
.end annotation


# instance fields
.field protected DW:J

.field final FH:Labcd/bH;

.field protected final j6:Labcd/bH$b;


# direct methods
.method constructor <init>(Labcd/bH;)V
    .registers 4

    iput-object p1, p0, Labcd/bH$a;->FH:Labcd/bH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Labcd/bH$a;->j6()Labcd/bH$b;

    move-result-object p1

    iput-object p1, p0, Labcd/bH$a;->j6:Labcd/bH$b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Labcd/bH$a;->DW:J

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 6

    iget-wide v0, p0, Labcd/bH$a;->DW:J

    iget-object v2, p0, Labcd/bH$a;->FH:Labcd/bH;

    invoke-virtual {v2}, Labcd/bH;->j6()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract j6()Labcd/bH$b;
.end method

.method public abstract next()Labcd/bH$b;
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/bH$a;->next()Labcd/bH$b;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
