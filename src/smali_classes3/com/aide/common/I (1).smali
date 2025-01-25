.class final Lcom/aide/common/I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final FH:Lcom/aide/common/ab;

.field final Hw:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x45bbebac5e17d6f9L  # 8.641006815532585E27

    const-wide v2, 0x5587b0e49749c5e4L  # 1.0612353171578533E104

    const-class v4, Lcom/aide/common/I;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/common/ab;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/common/I;->FH:Lcom/aide/common/ab;

    iput-object p2, p0, Lcom/aide/common/I;->Hw:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/aide/common/I;->j6(Ljava/util/List;)V

    return-void
.end method

.method public j6(Ljava/util/List;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x6924db1ce766914fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x158d79568ed48d19L  # 7.344321873365233E-205

    :try_start_5
    sget-boolean v2, Lcom/aide/common/I;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/aide/common/I;->FH:Lcom/aide/common/ab;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    goto :goto_63

    :cond_19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_64

    const-string v3, ""

    :goto_1f
    :try_start_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_46

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/aide/common/I;->Hw:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    :cond_5e
    iget-object v2, p0, Lcom/aide/common/I;->FH:Lcom/aide/common/ab;

    invoke-interface {v2, v3}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V
    :try_end_63
    .catchall {:try_start_1f .. :try_end_63} :catchall_64

    :goto_63
    return-void

    :catchall_64
    move-exception v2

    sget-boolean v3, Lcom/aide/common/I;->DW:Z

    if-eqz v3, :cond_6c

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    goto :goto_6e

    :goto_6d
    throw v2

    :goto_6e
    goto :goto_6d
.end method
