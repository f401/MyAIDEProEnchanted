.class Lcom/aide/appwizard/a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/G;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/AppWizardDesignActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final FH:Lcom/aide/appwizard/AppWizardDesignActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x2870658b1e6f54d5L  # 6.658200683087362E-114

    const-wide v2, -0x42a37903ab8b1fc0L  # -4.0539714161761566E-13

    const-class v4, Lcom/aide/appwizard/a;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/a;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2e241d28d57db020L
    .end annotation

    const-wide v0, 0x173a5cd4d1524480L  # 8.816809403803329E-197

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/a;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/a;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_16
    throw v2
.end method
