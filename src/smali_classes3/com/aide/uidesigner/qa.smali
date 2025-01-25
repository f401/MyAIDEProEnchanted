.class final Lcom/aide/uidesigner/qa;
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

    const-wide v2, 0xfb00bd5a71b2e5L

    const-class v4, Lcom/aide/uidesigner/qa;

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
        method = 0x280fd0caa3bf885L
    .end annotation

    const-wide v0, 0x531c05d2230d4d27L  # 2.2833329927861244E92

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/qa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "Small Text"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x1010042

    invoke-static {v2, v3}, Lcom/aide/uidesigner/Ka;->j6(Landroid/widget/TextView;I)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-object v2

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/qa;->DW:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method
