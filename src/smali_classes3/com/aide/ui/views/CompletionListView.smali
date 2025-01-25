.class public Lcom/aide/ui/views/CompletionListView;
.super Lcom/aide/ui/views/CustomKeysListView;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static Hw:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static v5:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private VH:Lcom/aide/common/KeyStrokeDetector$a;
    .annotation runtime Labcd/ru;
        field = 0x1c61af87dba71853L
    .end annotation
.end field

.field private Zo:Lcom/aide/common/KeyStrokeDetector;
    .annotation runtime Labcd/ru;
        field = 0x1b837c278caf4e33L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/views/CompletionListView;

    const-wide v1, 0x12f4f18643b749fL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0xe0c48b0278edcdbL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/views/CompletionListView;->Hw:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Lcom/aide/ui/views/CustomKeysListView;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/CompletionListView;->v5:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CompletionListView;->Hw:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x799f76e4d27a2ff4L  # -5.83006243786372E-278

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/aide/ui/views/CustomKeysListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CompletionListView;->v5:Z

    if-eqz v1, :cond_22

    const-wide v2, -0x799f76e4d27a2ff4L  # -5.83006243786372E-278

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
    sget-boolean v0, Lcom/aide/ui/views/CompletionListView;->Hw:Z

    if-eqz v0, :cond_14

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1678407aebb898d3L  # -2.2722517611943E200

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/aide/ui/views/CustomKeysListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CompletionListView;->v5:Z

    if-eqz v1, :cond_2e

    const-wide v2, -0x1678407aebb898d3L  # -2.2722517611943E200

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
.method public onCheckIsTextEditor()Z
    .registers 5

    const-wide v0, 0x4afb1ddc2ac55d60L  # 1.6232863674412113E53

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CompletionListView;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/views/CompletionListView;->Zo:Lcom/aide/common/KeyStrokeDetector;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :catchall_14
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CompletionListView;->v5:Z

    if-eqz v3, :cond_1c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 6

    const-wide v0, -0x709926b040cd4a9L  # -4.853194167244186E274

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CompletionListView;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/common/g;->Ws(Landroid/content/Context;)Z

    move-result v2

    const v3, 0x40000001  # 2.0000002f

    if-eqz v2, :cond_21

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, 0x20091

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_23

    :cond_21
    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :goto_23
    iget-object v2, p0, Lcom/aide/ui/views/CompletionListView;->Zo:Lcom/aide/common/KeyStrokeDetector;

    iget-object v3, p0, Lcom/aide/ui/views/CompletionListView;->VH:Lcom/aide/common/KeyStrokeDetector$a;

    invoke-virtual {v2, p0, v3}, Lcom/aide/common/KeyStrokeDetector;->j6(Landroid/view/View;Lcom/aide/common/KeyStrokeDetector$a;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-object p1

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CompletionListView;->v5:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CompletionListView;->Hw:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xd9da6dcc99b2b5L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/16 v0, 0x13

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x17

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x60

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_3a

    invoke-super {p0, p1, p2}, Lcom/aide/ui/views/CustomKeysListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3a
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CustomKeysListView;->j6(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return p1

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CompletionListView;->v5:Z

    if-eqz v1, :cond_54

    const-wide v2, 0xd9da6dcc99b2b5L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/CompletionListView;->Hw:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2d9c150ed530fb74L  # 5.514337087118702E-89

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/16 v0, 0x13

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x17

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x60

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x5d

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x7a

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_3a

    invoke-super {p0, p1, p2}, Lcom/aide/ui/views/CustomKeysListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3a
    invoke-virtual {p0, p1, p2}, Lcom/aide/ui/views/CustomKeysListView;->DW(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_3e
    .catchall {:try_start_0 .. :try_end_3e} :catchall_3f

    return p1

    :catchall_3f
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/CompletionListView;->v5:Z

    if-eqz v1, :cond_54

    const-wide v2, 0x2d9c150ed530fb74L  # 5.514337087118702E-89

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v0
.end method

.method public setKeyStrokeDetector(Lcom/aide/common/KeyStrokeDetector;)V
    .registers 6

    const-wide v0, -0x4d04d3960bd83660L  # -4.128443705115843E-63

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CompletionListView;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/views/CompletionListView;->Zo:Lcom/aide/common/KeyStrokeDetector;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CompletionListView;->v5:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public setKeyStrokeHandler(Lcom/aide/common/KeyStrokeDetector$a;)V
    .registers 6

    const-wide v0, 0x5063a253c92ad548L  # 1.8187779309533345E79

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/CompletionListView;->Hw:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/views/CompletionListView;->VH:Lcom/aide/common/KeyStrokeDetector$a;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/CompletionListView;->v5:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    throw v2
.end method
