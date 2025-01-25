.class public Lcom/aide/ui/views/WrappingSlidingDrawer;
.super Landroid/widget/SlidingDrawer;


# annotations
.annotation runtime Labcd/xu;
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
.field private FH:Z
    .annotation runtime Labcd/ru;
        field = 0x33e7851883334839L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x17fb054e63efd8fdL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/WrappingSlidingDrawer;

    const-wide v1, -0x89a665721894d8dL  # -1.39297912084804E267

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "android"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/views/WrappingSlidingDrawer;->j6:Z

    if-eqz v1, :cond_f

    const-wide v1, -0x164620e9cbbe9100L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    invoke-direct {p0, p1, p2}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "orientation"

    const/4 v2, 0x1

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "topOffset"

    const/4 v4, 0x0

    invoke-interface {p2, v0, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/WrappingSlidingDrawer;->Hw:I

    if-ne v1, v2, :cond_25

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    iput-boolean v2, p0, Lcom/aide/ui/views/WrappingSlidingDrawer;->FH:Z
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_29

    return-void

    :catchall_29
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/WrappingSlidingDrawer;->DW:Z

    if-eqz v1, :cond_3a

    const-wide v2, -0x164620e9cbbe9100L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    const-string v0, "android"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/views/WrappingSlidingDrawer;->j6:Z

    if-eqz v1, :cond_16

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0x709f9c71c3b95a1L  # -4.765827147254495E274

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "orientation"

    const/4 v2, 0x1

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "topOffset"

    const/4 v4, 0x0

    invoke-interface {p2, v0, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/views/WrappingSlidingDrawer;->Hw:I

    if-ne v1, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, 0x0

    :goto_2d
    iput-boolean v2, p0, Lcom/aide/ui/views/WrappingSlidingDrawer;->FH:Z
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_30

    return-void

    :catchall_30
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/WrappingSlidingDrawer;->DW:Z

    if-eqz v1, :cond_46

    const-wide v2, -0x709f9c71c3b95a1L  # -4.765827147254495E274

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_46
    throw v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x1e7ad44f9c94270L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/WrappingSlidingDrawer;->j6:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v2, -0xd50aa6bda2dde28L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eqz v0, :cond_91

    if-eqz v2, :cond_91

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/SlidingDrawer;->getContent()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v4, p1, p2}, Landroid/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    iget-boolean v6, p0, Lcom/aide/ui/views/WrappingSlidingDrawer;->FH:Z

    if-eqz v6, :cond_63

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v3, v0

    iget v0, p0, Lcom/aide/ui/views/WrappingSlidingDrawer;->Hw:I

    sub-int/2addr v3, v0

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v5, p1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/aide/ui/views/WrappingSlidingDrawer;->Hw:I

    add-int/2addr v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-le v2, v1, :cond_8d

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_8d

    :cond_63
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/aide/ui/views/WrappingSlidingDrawer;->Hw:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v5, v0, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/aide/ui/views/WrappingSlidingDrawer;->Hw:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v0, v1

    add-int v1, v2, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v2, v0, :cond_8d

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_8d
    :goto_8d
    invoke-virtual {p0, v1, v0}, Landroid/widget/SlidingDrawer;->setMeasuredDimension(II)V

    return-void

    :cond_91
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_99
    .catchall {:try_start_0 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/WrappingSlidingDrawer;->DW:Z

    if-eqz v1, :cond_b2

    const-wide v2, -0xd50aa6bda2dde28L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b2
    throw v0
.end method
