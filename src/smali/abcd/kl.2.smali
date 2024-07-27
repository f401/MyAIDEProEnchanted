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
    .registers 6

    const-class v0, Labcd/kl;

    const-wide v2, -0x1374667f15b9aa4bL    # -7.433101803211034E214

    const-wide v4, -0x36a56bd594427637L    # -2.3709057142025667E45

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, 0xf3190c38e9034c0L

    :try_start_0
    sget-boolean v0, Labcd/kl;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf3190c38e9034c0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->Hw()V

    iget-object v0, p0, Labcd/kl;->FH:Ljava/util/List;

    iget-object v1, p0, Labcd/kl;->Hw:Labcd/ml;

    iget-object v1, v1, Labcd/ml;->v5:Labcd/ol;

    invoke-virtual {v1, v0}, Labcd/ol;->j6(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/kl;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
