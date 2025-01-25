.class Lcom/aide/appwizard/d;
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

    const-wide v2, -0x42a4e7a92b57a6b3L  # -3.850441733453754E-13

    const-class v4, Lcom/aide/appwizard/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/appwizard/AppWizardDesignActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/appwizard/d;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x53c79dedbcaf827L
    .end annotation

    const-wide v0, -0x43cd8b5bc2ff14d0L  # -1.0004817654410134E-18

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/d;->FH:Lcom/aide/appwizard/AppWizardDesignActivity;

    invoke-static {v2}, Lcom/aide/appwizard/AppWizardDesignActivity;->DW(Lcom/aide/appwizard/AppWizardDesignActivity;)Lcom/aide/common/UndoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/common/UndoManager;->Hw()V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/d;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method
