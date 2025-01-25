.class public Lcom/aide/ui/views/CustomKeysListView;
.super Landroid/widget/ListView;


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
.field private FH:Lcom/aide/ui/views/CustomKeysListView$a;
    .annotation runtime Labcd/ru;
        field = 0x15709dd07b1ed524L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/CustomKeysListView;

    const-wide v1, -0x3f5f8f5353caf60L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x21b756b080530748L  # -1.5397318774962917E146

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/CustomKeysListView;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/CustomKeysListView;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CustomKeysListView;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x58c9d5422c1735fL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CustomKeysListView;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x58c9d5422c1735fL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CustomKeysListView;->j6:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x4a14d859e72d81cL

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CustomKeysListView;->DW:Z

    if-eqz v1, :cond_2e

    const-wide v2, 0x4a14d859e72d81cL

    const/4 v4, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    throw v0
.end method


# virtual methods
.method public DW(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CustomKeysListView;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1454730d4a1f8e78L  # -4.5287433408161683E210

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CustomKeysListView;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x1454730d4a1f8e78L  # -4.5287433408161683E210

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public j6(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CustomKeysListView;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x11ee6a18959b8aa9L  # -1.5891799555062948E222

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CustomKeysListView;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x11ee6a18959b8aa9L  # -1.5891799555062948E222

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CustomKeysListView;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0xcaa87bf0387dfdbL  # -3.752867841475301E247

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/views/CustomKeysListView;->FH:Lcom/aide/ui/views/CustomKeysListView$a;

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1, p2}, Lcom/aide/ui/views/CustomKeysListView$a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return p1

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CustomKeysListView;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, -0xcaa87bf0387dfdbL  # -3.752867841475301E247

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CustomKeysListView;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x72c7ed1d53e5edc0L  # 8.168470459737309E244

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/views/CustomKeysListView;->FH:Lcom/aide/ui/views/CustomKeysListView$a;

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1, p2}, Lcom/aide/ui/views/CustomKeysListView$a;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return p1

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CustomKeysListView;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, 0x72c7ed1d53e5edc0L  # 8.168470459737309E244

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method protected onMeasure(II)V
    .registers 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CustomKeysListView;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2fe09f0c62fb0e78L  # 4.485756233612445E-78

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {p0}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 p1, 0x0

    return p1

    :cond_19
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return p1

    :catchall_1e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CustomKeysListView;->DW:Z

    if-eqz v1, :cond_33

    const-wide v2, 0x2fe09f0c62fb0e78L  # 4.485756233612445E-78

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method public setOnKeyEventListener(Lcom/aide/ui/views/CustomKeysListView$a;)V
    .registers 6

    const-wide v0, -0x53d095623885dacL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CustomKeysListView;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/views/CustomKeysListView;->FH:Lcom/aide/ui/views/CustomKeysListView$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CustomKeysListView;->DW:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method
