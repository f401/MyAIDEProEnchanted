.class final Lcom/aide/uidesigner/Da;
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

    const-wide v2, 0x6a46fb66535e7bddL  # 9.006902702293877E203

    const-class v4, Lcom/aide/uidesigner/Da;

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
        method = -0x1aec393e561d800L
    .end annotation

    const-wide v0, -0x5ebb5a721860a813L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Da;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v3, 0x1080038

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-object v2

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Da;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    throw v2
.end method
