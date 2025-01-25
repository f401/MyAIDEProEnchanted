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
    .registers 3

    const-class v0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;

    const-wide v1, -0x1f20ffdb6c71db91L  # -4.256251175715454E158

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/appwizard/runtime/AppWizardActivity;Landroid/support/v4/app/r;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x9dbd95969a272dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->gn:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x25ad10abbcd8eb40L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    iput-object p1, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/B;-><init>(Landroid/support/v4/app/r;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->u7:Z

    if-eqz v1, :cond_24

    const-wide v2, -0x25ad10abbcd8eb40L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v0
.end method


# virtual methods
.method public FH(I)Landroid/support/v4/app/Fragment;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf442dd9d1235471L
    .end annotation

    const-wide v0, -0x8f4da6cff45718L

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v2, v3}, Lcom/aide/appwizard/runtime/AppWizardActivity;->j6(Lcom/aide/appwizard/runtime/i$c;)Landroid/support/v4/app/Fragment;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->u7:Z

    if-eqz v3, :cond_2e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method public j6()I
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2232a1e49a59bc74L
    .end annotation

    const-wide v0, -0x587e1542e13403fL  # -8.756485402085672E281

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->v5()Lcom/aide/appwizard/runtime/i$d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$d;->Zo()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_2d
    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    return v0

    :catchall_3c
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->u7:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method public j6(I)Ljava/lang/CharSequence;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1ea429e3ddf39bf5L
    .end annotation

    const-wide v0, -0x2dfee78b6aff5ff0L  # -1.0627504701334288E87

    :try_start_5
    sget-boolean v2, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iget-object v2, p0, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->tp:Lcom/aide/appwizard/runtime/AppWizardActivity;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/AppWizardActivity;->gn()Lcom/aide/appwizard/runtime/i$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$b;->DW()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aide/appwizard/runtime/i$c;

    invoke-virtual {v2}, Lcom/aide/appwizard/runtime/i$c;->v5()Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    return-object p1

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/appwizard/runtime/AppWizardActivity$a;->u7:Z

    if-eqz v3, :cond_2e

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v2
.end method
