.class Lcom/aide/ui/va;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/MainActivity;->XX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final FH:Ljava/util/List;

.field final Hw:Lcom/aide/ui/MainActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1b7def450e608340L

    const-wide v2, 0xf9d0adeb8c4ef9dL

    const-class v4, Lcom/aide/ui/va;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/MainActivity;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/va;->Hw:Lcom/aide/ui/MainActivity;

    iput-object p2, p0, Lcom/aide/ui/va;->FH:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/aide/ui/va;->j6(Ljava/util/List;)V

    return-void
.end method

.method public j6(Ljava/util/List;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x5e6c061f48d8c679L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0x44f49b8f553499bcL  # 1.5570704513275715E24

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/va;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v4

    iget-object v5, p0, Lcom/aide/ui/va;->FH:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Labcd/Nk;->j6(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_35

    goto :goto_10

    :cond_34
    return-void

    :catchall_35
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/va;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    goto :goto_3f

    :goto_3e
    throw v2

    :goto_3f
    goto :goto_3e
.end method
