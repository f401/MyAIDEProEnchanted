.class public Lcom/aide/common/Wa;
.super Lcom/aide/common/ma;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/common/Wa$b;
    }
.end annotation


# static fields
.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private EQ:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0xbd419dc0f24594fL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/common/Wa$b;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Z
    .annotation runtime Labcd/ru;
        field = 0x3dfec491ea6921f7L
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x123aa961dbd71788L
    .end annotation
.end field

.field private tp:Ljava/lang/Runnable;
    .annotation runtime Labcd/ru;
        field = 0x1318d15f157edf18L
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x2bf43f6f3867f6e1L
    .end annotation
.end field

.field private we:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0xbd4347c00145d10L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aide/common/Wa$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/Wa;

    const-wide v1, 0x1ba4715548387498L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x2e3cabb09cd2a98cL
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/aide/common/Wa$b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/aide/common/Wa$b;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v0, :cond_12

    const-wide v1, -0xfb43eb62ce02e18L  # -8.61803809177543E232

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p1, p0, Lcom/aide/common/Wa;->gn:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/common/Wa;->u7:Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/common/Wa;->tp:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/aide/common/Wa;->EQ:Ljava/util/List;

    iput-object p4, p0, Lcom/aide/common/Wa;->we:Ljava/util/List;
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Wa;->VH:Z

    if-eqz v1, :cond_34

    const-wide v2, -0xfb43eb62ce02e18L  # -8.61803809177543E232

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method static synthetic DW(Lcom/aide/common/Wa;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/Wa;->we:Ljava/util/List;

    return-object p0
.end method

.method public static DW(Landroid/app/Activity;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2b477479c32ec2c0L  # -1.3421526584598974E100

    :try_start_6
    sget-boolean v3, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "101304250883271700981"

    invoke-static {p0, v3}, Lcom/aide/common/Ha;->Hw(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1e

    :cond_19
    const-string v3, "104927725094165066286"

    invoke-static {p0, v3}, Lcom/aide/common/Ha;->FH(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_1f

    :goto_1e
    return-void

    :catchall_1f
    move-exception v3

    sget-boolean v4, Lcom/aide/common/Wa;->VH:Z

    if-eqz v4, :cond_27

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v3
.end method

.method public static DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v0, :cond_11

    const-wide v1, 0xea61e7a7d3b8bb4L  # 4.246000462653664E-238

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_googleplus:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/aide/ui/Ra;->dialog_community_ask:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/common/Ua;

    invoke-direct {v3, p0}, Lcom/aide/common/Ua;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    if-eqz p3, :cond_56

    new-instance v1, Lcom/aide/common/Wa$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/aide/ui/Ra;->trainer_skip_lesson:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ↷"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, p3, v3}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_56
    new-instance v1, Lcom/aide/common/Wa$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/aide/ui/Ra;->dialog_community_continue:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ≫"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/aide/common/Wa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_86
    .catchall {:try_start_0 .. :try_end_86} :catchall_87

    return-void

    :catchall_87
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Wa;->VH:Z

    if-eqz v1, :cond_9a

    const-wide v2, 0xea61e7a7d3b8bb4L  # 4.246000462653664E-238

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9a
    throw v0
.end method

.method public static DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 15

    const-string v0, "\""

    :try_start_2
    sget-boolean v1, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v1, :cond_14

    const-wide v2, -0x3554909d167c5e10L  # -5.1323453438054586E51

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v2 .. v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/aide/common/Wa$b;

    sget v2, Lcom/aide/ui/R$drawable;->community_googleplus:I

    new-instance v3, Lcom/aide/common/Ia;

    invoke-direct {v3, p0, p2, p3}, Lcom/aide/common/Ia;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Google+"

    invoke-direct {v1, v2, v5, v3}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aide/common/Wa$b;

    sget v2, Lcom/aide/ui/R$drawable;->community_twitter:I

    new-instance v3, Lcom/aide/common/Ja;

    invoke-direct {v3, p0, p2, p3}, Lcom/aide/common/Ja;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Twitter"

    invoke-direct {v1, v2, v5, v3}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aide/common/Wa$b;

    sget v2, Lcom/aide/ui/R$drawable;->community_facebook:I

    new-instance v3, Lcom/aide/common/Ka;

    invoke-direct {v3, p0, p2, p3}, Lcom/aide/common/Ka;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Facebook"

    invoke-direct {v1, v2, v5, v3}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aide/common/Wa$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/aide/ui/Ra;->dialog_community_continue:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ≫"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/aide/common/Wa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/aide/common/Wa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {p0, v7}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_8e
    .catchall {:try_start_2 .. :try_end_8e} :catchall_8f

    return-void

    :catchall_8f
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Wa;->VH:Z

    if-eqz v1, :cond_a3

    const-wide v2, -0x3554909d167c5e10L  # -5.1323453438054586E51

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a3
    throw v0
.end method

.method public static FH(Landroid/app/Activity;)V
    .registers 11

    const/4 v0, 0x0

    const-wide v1, -0x1193c7758a90ea60L  # -8.160881687232759E223

    :try_start_6
    sget-boolean v3, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/aide/common/Wa$b;

    sget v4, Lcom/aide/ui/R$drawable;->community_googleplus:I

    new-instance v5, Lcom/aide/common/Na;

    invoke-direct {v5, p0}, Lcom/aide/common/Na;-><init>(Landroid/app/Activity;)V

    const-string v6, "Google+"

    invoke-direct {v3, v4, v6, v5}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/aide/common/Wa$b;

    sget v4, Lcom/aide/ui/R$drawable;->community_twitter:I

    new-instance v5, Lcom/aide/common/Oa;

    invoke-direct {v5, p0}, Lcom/aide/common/Oa;-><init>(Landroid/app/Activity;)V

    const-string v6, "Twitter"

    invoke-direct {v3, v4, v6, v5}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/aide/common/Wa$b;

    sget v4, Lcom/aide/ui/R$drawable;->community_facebook:I

    new-instance v5, Lcom/aide/common/Pa;

    invoke-direct {v5, p0}, Lcom/aide/common/Pa;-><init>(Landroid/app/Activity;)V

    const-string v6, "Facebook"

    invoke-direct {v3, v4, v6, v5}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Lcom/aide/common/Wa$b;

    sget v4, Lcom/aide/ui/R$drawable;->community_googleplus:I

    new-instance v5, Lcom/aide/common/Qa;

    invoke-direct {v5, p0}, Lcom/aide/common/Qa;-><init>(Landroid/app/Activity;)V

    const-string v6, "G+ Community"

    invoke-direct {v3, v4, v6, v5}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/aide/common/Wa$b;

    sget v4, Lcom/aide/ui/R$drawable;->community_google_groups:I

    new-instance v5, Lcom/aide/common/Ra;

    invoke-direct {v5, p0}, Lcom/aide/common/Ra;-><init>(Landroid/app/Activity;)V

    const-string v6, "Google Group"

    invoke-direct {v3, v4, v6, v5}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/aide/common/Wa$b;

    sget v4, Lcom/aide/ui/R$drawable;->community_email:I

    new-instance v5, Lcom/aide/common/Sa;

    invoke-direct {v5, p0}, Lcom/aide/common/Sa;-><init>(Landroid/app/Activity;)V

    const-string v6, "Email"

    invoke-direct {v3, v4, v6, v5}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v3

    if-nez v3, :cond_9c

    new-instance v3, Lcom/aide/common/Wa$b;

    sget v4, Lcom/aide/ui/R$drawable;->community_market:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/aide/ui/Ra;->dialog_community_rate:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/common/Ta;

    invoke-direct {v6, p0}, Lcom/aide/common/Ta;-><init>(Landroid/app/Activity;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9c
    new-instance v3, Lcom/aide/common/Wa$b;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/aide/ui/Ra;->dialog_community_more:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/aide/common/Wa;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/aide/ui/Ra;->dialog_community_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/aide/ui/Ra;->dialog_community_message:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/aide/common/Wa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {p0, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_cd
    .catchall {:try_start_6 .. :try_end_cd} :catchall_ce

    return-void

    :catchall_ce
    move-exception v3

    sget-boolean v4, Lcom/aide/common/Wa;->VH:Z

    if-eqz v4, :cond_d6

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d6
    throw v3
.end method

.method static synthetic FH(Lcom/aide/common/Wa;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/common/Wa;->J0:Z

    return p0
.end method

.method static synthetic j6(Lcom/aide/common/Wa;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/aide/common/Wa;->tp:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 18

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p4

    sget-boolean v3, Lcom/aide/common/Wa;->Zo:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_26

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object p1, v3, v5

    const/4 v5, 0x2

    aput-object p2, v3, v5

    const/4 v5, 0x3

    aput-object v1, v3, v5

    const/4 v5, 0x4

    aput-object v2, v3, v5

    const/4 v5, 0x5

    aput-object p5, v3, v5

    const-wide v5, -0x1afa0753d5c80a9fL  # -4.451688039454701E178

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_26
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/aide/common/Wa$b;

    sget v5, Lcom/aide/ui/R$drawable;->community_market:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/aide/ui/Ra;->dialog_community_rate:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/aide/common/Va;

    invoke-direct {v7, p0, p3, v2}, Lcom/aide/common/Va;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v5, v6, v7}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/aide/ui/Ra;->dialog_community_continue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ≫"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/aide/common/Wa$b;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/aide/common/Wa;

    const/4 v10, 0x0

    move-object v6, v1

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/aide/common/Wa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {p0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/common/Wa;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/common/Wa;->J0:Z

    return p1
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0xfba14146093fae8L
    .end annotation

    const-wide v0, 0x12a18a085d865cf7L  # 6.21073068379989E-219

    :try_start_5
    sget-boolean v2, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/aide/ui/Oa;->share_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/aide/common/Wa;->gn:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v4, Lcom/aide/common/La;

    invoke-direct {v4, p0}, Lcom/aide/common/La;-><init>(Lcom/aide/common/Wa;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    sget v4, Lcom/aide/ui/Na;->shareDialogMessage:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/aide/common/Wa;->u7:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/aide/ui/Na;->shareDialogList:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    new-instance v4, Lcom/aide/common/Wa$a;

    iget-object v5, p0, Lcom/aide/common/Wa;->EQ:Ljava/util/List;

    invoke-direct {v4, p0, p1, v5}, Lcom/aide/common/Wa$a;-><init>(Lcom/aide/common/Wa;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v4, Lcom/aide/common/Ma;

    invoke-direct {v4, p0, v2, p1, v3}, Lcom/aide/common/Ma;-><init>(Lcom/aide/common/Wa;Landroid/widget/ListView;Landroid/app/Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_62
    .catchall {:try_start_5 .. :try_end_62} :catchall_63

    return-object v3

    :catchall_63
    move-exception v2

    sget-boolean v3, Lcom/aide/common/Wa;->VH:Z

    if-eqz v3, :cond_6b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    throw v2
.end method
