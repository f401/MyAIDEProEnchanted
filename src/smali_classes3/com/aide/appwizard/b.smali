.class Lcom/aide/appwizard/b;
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
    .registers 5

    const-wide v0, 0x2870658b1e6f54d5L  # 6.658200683087362E-114

    const-wide v2, -0x42a3f33ad662a24fL  # -3.986128186550583E-13

    const-class v4, Lcom/aide/appwizard/b;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/b;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x5dcaefc8070c6c0L
    .end annotation

    const-wide v0, -0x76f96b199653270L  # -5.548817792877993E272

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/b;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-virtual {v2}, Lcom/aide/appwizard/AppWizardDesignActivity;->QX()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/aide/appwizard/AppWizardDesignActivity;->j6(Lcom/aide/appwizard/AppWizardDesignActivity;Z)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/b;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method
