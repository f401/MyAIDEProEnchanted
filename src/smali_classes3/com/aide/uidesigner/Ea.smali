.class final Lcom/aide/uidesigner/Ea;
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

    const-wide v2, 0x6a4767642009a680L  # 9.172226854778784E203

    const-class v4, Lcom/aide/uidesigner/Ea;

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
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x39a628f39197b15L
    .end annotation

    const-wide v0, 0xd8c8a41dfe50c5cL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Ea;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/widget/Button;

    const/4 v3, 0x0

    const v4, 0x101032f

    invoke-direct {v2, p1, v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v3, "Bar Button"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setFocusable(Z)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-object v2

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Ea;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method
