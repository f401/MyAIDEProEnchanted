.class Lcom/aide/ui/ta;
.super Lcom/aide/common/sa;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static tp:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field final EQ:Lcom/aide/ui/MainActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x1b7def450e608340L

    const-wide v2, -0x3974fbffa96be9bdL  # -6.849275957694919E31

    const-class v4, Lcom/aide/ui/ta;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/MainActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/ui/ta;->EQ:Lcom/aide/ui/MainActivity;

    invoke-direct {p0, p2, p3}, Lcom/aide/common/sa;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x24c91d3cf02f1550L
    .end annotation

    const-wide v0, 0x68a5539599e76a13L  # 1.2454514764498264E196

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/ta;->u7:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->EQ()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->tp()V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/ta;->tp:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method
