.class Lcom/aide/appwizard/runtime/AppWizardActivity$a;
.super Landroid/support/v4/app/B;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/appwizard/runtime/AppWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static gn:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final tp:Lcom/aide/appwizard/runtime/AppWizardActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x1f20ffdb6c71db91L    # -4.256251175715454E158

    const-class v0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/appwizard/runtime/AppWizardActivity;Landroid/support/v4/app/r;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9dbd95969a272dL
    .end annotation

    const-wide v2, -0x25ad10abbcd8eb40L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x25ad10abbcd8eb40L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/B;-><init>(Landroid/support/v4/app/r;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->u7:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public FH(I)Landroid/support/v4/app/Fragment;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf442dd9d1235471L
    .end annotation

    const-wide v2, -0x8f4da6cff45718L

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8f4da6cff45718L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v1, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    iget-object v0, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v1, v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Lcom/aide/appwizard/runtime/i$c;)Landroid/support/v4/app/Fragment;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->u7:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2232a1e49a59bc74L
    .end annotation

    const-wide v2, -0x587e1542e13403fL    # -8.756485402085672E281

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x587e1542e13403fL    # -8.756485402085672E281

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$b;->v5()Lcom/aide/appwizard/runtime/i$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$d;->Zo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->u7:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public j6(I)Ljava/lang/CharSequence;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1ea429e3ddf39bf5L
    .end annotation

    const-wide v2, -0x2dfee78b6aff5ff0L    # -1.0627504701334288E87

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2dfee78b6aff5ff0L    # -1.0627504701334288E87

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v0}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->u7:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
