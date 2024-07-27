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
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/Wa$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x1ba4715548387498L

    const-class v0, Lcom/aide/common/Wa;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/Wa$b;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/Wa$b;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xfb43eb62ce02e18L    # -8.61803809177543E232

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/common/ma;-><init>()V

    iput-object p1, p0, Lcom/aide/common/Wa;->gn:Ljava/lang/String;

    iput-object p2, p0, Lcom/aide/common/Wa;->u7:Ljava/lang/String;

    iput-object p5, p0, Lcom/aide/common/Wa;->tp:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/aide/common/Wa;->EQ:Ljava/util/List;

    iput-object p4, p0, Lcom/aide/common/Wa;->we:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/Wa;->VH:Z

    if-eqz v0, :cond_1

    const-wide v2, -0xfb43eb62ce02e18L    # -8.61803809177543E232

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method static synthetic DW(Lcom/aide/common/Wa;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/aide/common/Wa;->we:Ljava/util/List;

    return-object v0
.end method

.method public static DW(Landroid/app/Activity;)V
    .registers 7

    const-wide v4, -0x2b477479c32ec2c0L    # -1.3421526584598974E100

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2b477479c32ec2c0L    # -1.3421526584598974E100

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "101304250883271700981"

    invoke-static {p0, v0}, Lcom/aide/common/Ha;->Hw(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "104927725094165066286"

    invoke-static {p0, v0}, Lcom/aide/common/Ha;->FH(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Wa;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public static DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 14

    const-wide v8, 0xea61e7a7d3b8bb4L    # 4.246000462653664E-238

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xea61e7a7d3b8bb4L    # 4.246000462653664E-238

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_googleplus:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/aide/ui/Ra;->dialog_community_ask:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/aide/common/Ua;

    invoke-direct {v4, p0}, Lcom/aide/common/Ua;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    new-instance v0, Lcom/aide/common/Wa$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/aide/ui/Ra;->trainer_skip_lesson:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u21b7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v0, v2, v1, p3, v4}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;Z)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/aide/common/Wa$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/aide/ui/Ra;->dialog_community_continue:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u226b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/aide/common/Wa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/Wa;->VH:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public static DW(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 15

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3554909d167c5e10L    # -5.1323453438054586E51

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_googleplus:I

    new-instance v2, Lcom/aide/common/Ia;

    invoke-direct {v2, p0, p2, p3}, Lcom/aide/common/Ia;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Google+"

    invoke-direct {v0, v1, v4, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_twitter:I

    new-instance v2, Lcom/aide/common/Ja;

    invoke-direct {v2, p0, p2, p3}, Lcom/aide/common/Ja;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Twitter"

    invoke-direct {v0, v1, v4, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_facebook:I

    new-instance v2, Lcom/aide/common/Ka;

    invoke-direct {v2, p0, p2, p3}, Lcom/aide/common/Ka;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Facebook"

    invoke-direct {v0, v1, v4, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/aide/ui/Ra;->dialog_community_continue:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u226b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/aide/common/Wa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/common/Wa;->VH:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x3554909d167c5e10L    # -5.1323453438054586E51

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static FH(Landroid/app/Activity;)V
    .registers 11

    const-wide v8, -0x1193c7758a90ea60L    # -8.160881687232759E223

    const/4 v6, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1193c7758a90ea60L    # -8.160881687232759E223

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_googleplus:I

    new-instance v2, Lcom/aide/common/Na;

    invoke-direct {v2, p0}, Lcom/aide/common/Na;-><init>(Landroid/app/Activity;)V

    const-string v4, "Google+"

    invoke-direct {v0, v1, v4, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_twitter:I

    new-instance v2, Lcom/aide/common/Oa;

    invoke-direct {v2, p0}, Lcom/aide/common/Oa;-><init>(Landroid/app/Activity;)V

    const-string v4, "Twitter"

    invoke-direct {v0, v1, v4, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_facebook:I

    new-instance v2, Lcom/aide/common/Pa;

    invoke-direct {v2, p0}, Lcom/aide/common/Pa;-><init>(Landroid/app/Activity;)V

    const-string v4, "Facebook"

    invoke-direct {v0, v1, v4, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_googleplus:I

    new-instance v2, Lcom/aide/common/Qa;

    invoke-direct {v2, p0}, Lcom/aide/common/Qa;-><init>(Landroid/app/Activity;)V

    const-string v5, "G+ Community"

    invoke-direct {v0, v1, v5, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_google_groups:I

    new-instance v2, Lcom/aide/common/Ra;

    invoke-direct {v2, p0}, Lcom/aide/common/Ra;-><init>(Landroid/app/Activity;)V

    const-string v5, "Google Group"

    invoke-direct {v0, v1, v5, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_email:I

    new-instance v2, Lcom/aide/common/Sa;

    invoke-direct {v2, p0}, Lcom/aide/common/Sa;-><init>(Landroid/app/Activity;)V

    const-string v5, "Email"

    invoke-direct {v0, v1, v5, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_market:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/aide/ui/Ra;->dialog_community_rate:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/aide/common/Ta;

    invoke-direct {v5, p0}, Lcom/aide/common/Ta;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1, v2, v5}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Lcom/aide/common/Wa$b;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/aide/ui/Ra;->dialog_community_more:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/aide/ui/Ra;->dialog_community_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/aide/ui/Ra;->dialog_community_message:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/aide/common/Wa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Wa;->VH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, v6, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic FH(Lcom/aide/common/Wa;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/aide/common/Wa;->J0:Z

    return v0
.end method

.method static synthetic j6(Lcom/aide/common/Wa;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/aide/common/Wa;->tp:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 13

    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-boolean v0, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1afa0753d5c80a9fL    # -4.451688039454701E178

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v6

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    aput-object p5, v2, v3

    invoke-static {v0, v1, v4, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/aide/common/Wa$b;

    sget v1, Lcom/aide/ui/R$drawable;->community_market:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/aide/ui/Ra;->dialog_community_rate:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/aide/common/Va;

    invoke-direct {v5, p0, p3, p4}, Lcom/aide/common/Va;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v5}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/aide/ui/Ra;->dialog_community_continue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u226b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/aide/common/Wa$b;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lcom/aide/common/Wa$b;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/aide/common/Wa;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/aide/common/Wa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/common/Wa;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/common/Wa;->J0:Z

    return p1
.end method


# virtual methods
.method protected j6(Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xfba14146093fae8L
    .end annotation

    const-wide v4, 0x12a18a085d865cf7L    # 6.21073068379989E-219

    :try_start_0
    sget-boolean v0, Lcom/aide/common/Wa;->Zo:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12a18a085d865cf7L    # 6.21073068379989E-219

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/aide/ui/Oa;->share_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/common/Wa;->gn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/aide/common/La;

    invoke-direct {v1, p0}, Lcom/aide/common/La;-><init>(Lcom/aide/common/Wa;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    sget v1, Lcom/aide/ui/Na;->shareDialogMessage:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aide/common/Wa;->u7:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/aide/ui/Na;->shareDialogList:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/aide/common/Wa$a;

    iget-object v3, p0, Lcom/aide/common/Wa;->EQ:Ljava/util/List;

    invoke-direct {v1, p0, p1, v3}, Lcom/aide/common/Wa$a;-><init>(Lcom/aide/common/Wa;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/aide/common/Ma;

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/aide/common/Ma;-><init>(Lcom/aide/common/Wa;Landroid/widget/ListView;Landroid/app/Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/common/Wa;->VH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
