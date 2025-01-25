.class public Lcom/aide/ui/browsers/DebugBrowser;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/aide/ui/browsers/a;


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
.field private FH:Lcom/aide/ui/debugger/DebugView;
    .annotation runtime Labcd/ru;
        field = 0x234a875213361ce0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/browsers/DebugBrowser;

    const-wide v1, -0x6e5df09c6385fd3cL  # -9.758289773859737E-224

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x2d8aecf806a5b6c0L  # -1.6769214695865098E89

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/browsers/DebugBrowser;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/DebugBrowser;->Hw()V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/browsers/DebugBrowser;->DW:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/DebugBrowser;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x178b61eb2cf25ae1L  # -1.5050582945905103E195

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/DebugBrowser;->Hw()V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/DebugBrowser;->DW:Z

    if-eqz v1, :cond_25

    const-wide v2, -0x178b61eb2cf25ae1L  # -1.5050582945905103E195

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v0
.end method

.method private Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1a7a81e33b364b17L
    .end annotation

    const-wide v0, -0x244e820284325b00L  # -4.966395054347301E133

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/DebugBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v2, Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aide/ui/debugger/DebugView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aide/ui/browsers/DebugBrowser;->FH:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_27

    return-void

    :catchall_27
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/DebugBrowser;->DW:Z

    if-eqz v3, :cond_2f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2f
    throw v2
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v0, 0xed66536696caf90L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/DebugBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/DebugBrowser;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x28ce41c50b7f020cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/DebugBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/browsers/DebugBrowser;->FH:Lcom/aide/ui/debugger/DebugView;

    invoke-virtual {v2}, Lcom/aide/ui/debugger/DebugView;->j6()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/DebugBrowser;->DW:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, -0xaa3decd4c535af8L  # -2.111840452297422E257

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/browsers/DebugBrowser;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    :cond_c
    return-void

    :catchall_d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/browsers/DebugBrowser;->DW:Z

    if-eqz v3, :cond_15

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_15
    throw v2
.end method
