.class Labcd/ll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/ml;->DW(Ljava/lang/String;Ljava/util/List;)V
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
.field final FH:Ljava/lang/String;

.field final Hw:Ljava/util/List;

.field final v5:Labcd/ml;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Labcd/ll;

    const-wide v2, -0x1374667f15b9aa4bL    # -7.433101803211034E214

    const-wide v4, -0x36a5e30eb06e5ab8L    # -2.3293625319342418E45

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/ml;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Labcd/ll;->v5:Labcd/ml;

    iput-object p2, p0, Labcd/ll;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/ll;->Hw:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xc336dc086db8800L
    .end annotation

    const-wide v4, 0xf3d67828be9a65fL

    :try_start_0
    sget-boolean v0, Labcd/ll;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xf3d67828be9a65fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/ll;->FH:Ljava/lang/String;

    iget-object v1, p0, Labcd/ll;->Hw:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/aide/ui/aa;->j6(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->Hw(I)V

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Code Style settings have been updated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/ll;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
