.class Lcom/aide/appwizard/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/appwizard/AppWizardDesignActivity;->j3()V
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
    .registers 6

    const-class v0, Lcom/aide/appwizard/c;

    const-wide v2, 0x2870658b1e6f54d5L    # 6.658200683087362E-114

    const-wide v4, -0x42a46d7200fc24a0L    # -3.918284958976449E-13

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/c;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x32ff4b8a166800L
    .end annotation

    const-wide v2, 0x22261831dc06431fL    # 3.538803724743858E-144

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/c;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x22261831dc06431fL    # 3.538803724743858E-144

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/c;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-static {v0}, Lcom/aide/appwizard/AppWizardDesignActivity;->j6(Lcom/aide/appwizard/AppWizardDesignActivity;)Lcom/aide/appwizard/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/B;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/c;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
