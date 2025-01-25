.class Labcd/kl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ml;->FH(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

.field final Hw:Labcd/ml;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1374667f15b9aa4bL  # -7.433101803211034E214

    const-wide v2, -0x36a56bd594427637L  # -2.3709057142025667E45

    const-class v4, Labcd/kl;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ml;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Labcd/kl;->Hw:Labcd/ml;

    iput-object p2, p0, Labcd/kl;->FH:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1fe6a9aa4219b48bL
    .end annotation

    const-wide v0, 0xf3190c38e9034c0L

    :try_start_5
    sget-boolean v2, Labcd/kl;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->Hw()V

    iget-object v2, p0, Labcd/kl;->FH:Ljava/util/List;

    iget-object v3, p0, Labcd/kl;->Hw:Labcd/ml;

    iget-object v3, v3, Labcd/ml;->v5:Labcd/ol;

    invoke-virtual {v3, v2}, Labcd/ol;->j6(Ljava/util/List;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Labcd/kl;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method
