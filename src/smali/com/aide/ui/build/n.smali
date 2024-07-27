.class Lcom/aide/ui/build/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/o;->run()V
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
.field final FH:Lcom/aide/ui/build/o;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/build/n;

    const-wide v2, 0xa1c6947f77ec70dL

    const-wide v4, -0x29dcc489706fe45fL    # -8.821840523568046E106

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/o;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/n;->FH:Lcom/aide/ui/build/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2518b3b2c1d52d70L
    .end annotation

    const-wide v2, 0x4eca63ac0f5fd730L    # 3.6426511955084304E71

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/n;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4eca63ac0f5fd730L    # 3.6426511955084304E71

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/n;->FH:Lcom/aide/ui/build/o;

    iget-object v0, v0, Lcom/aide/ui/build/o;->FH:Lcom/aide/ui/build/OutputConsoleActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/n;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
