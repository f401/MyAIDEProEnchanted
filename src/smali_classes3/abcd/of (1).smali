.class Labcd/of;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/pf;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab<",
        "Ljava/lang/String;",
        ">;"
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
.field final FH:Labcd/pf;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x3209ea158a4599d3L  # 1.2015227392767764E-67

    const-wide v2, 0xc34cd29eddba7a0L

    const-class v4, Labcd/of;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/pf;)V
    .registers 2

    iput-object p1, p0, Labcd/of;->FH:Labcd/pf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Labcd/of;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x4e0f3fee2570cfa7L
    .end annotation

    const-wide v0, 0x118dfdf0edb435edL  # 4.051334024699453E-224

    :try_start_5
    sget-boolean v2, Labcd/of;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->er()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Ji;->FH(Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Labcd/Zk;->j6(Ljava/util/List;Z)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    new-instance v9, Labcd/Tl;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v2, v9}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    return-void

    :catchall_3d
    move-exception v2

    sget-boolean v3, Labcd/of;->DW:Z

    if-eqz v3, :cond_45

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    throw v2
.end method
