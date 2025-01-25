.class Labcd/gG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/hG;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Labcd/fG;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Labcd/hG;

.field private final FH:Ljava/util/Iterator;

.field private j6:Labcd/fG;


# direct methods
.method constructor <init>(Labcd/hG;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, Labcd/gG;->DW:Labcd/hG;

    iput-object p2, p0, Labcd/gG;->FH:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Labcd/gG;->FH:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Labcd/fG;
    .registers 2

    iget-object v0, p0, Labcd/gG;->FH:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/fG;

    iput-object v0, p0, Labcd/gG;->j6:Labcd/fG;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/gG;->next()Labcd/fG;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    iget-object v0, p0, Labcd/gG;->DW:Labcd/hG;

    iget v1, v0, Labcd/hG;->j6:I

    iget-object v2, p0, Labcd/gG;->j6:Labcd/fG;

    iget v2, v2, Labcd/fG;->Hw:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Labcd/hG;->j6:I

    iget-object v0, p0, Labcd/gG;->FH:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
