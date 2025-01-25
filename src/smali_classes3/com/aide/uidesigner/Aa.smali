.class final Lcom/aide/uidesigner/Aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/uidesigner/Ka$c;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/uidesigner/Ka$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x55d532859b3bbdb0L

    const-wide v2, 0x6a46236abac22751L  # 8.676254414296601E203

    const-class v4, Lcom/aide/uidesigner/Aa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/content/Context;)Landroid/view/View;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x5bf1795a4dea4ddL
    .end annotation

    const-wide v0, -0x6580b98c9f3a42ebL  # -4.710670063418651E-181

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Aa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v3, "Button"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setFocusable(Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    return-object v2

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Aa;->DW:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_23
    throw v2
.end method
