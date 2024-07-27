.class public Lcom/aide/ui/views/DialogMenu$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/DialogMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
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
.field private EQ:I
    .annotation runtime Labcd/ru;
        field = 0x8774d2c52628117L
    .end annotation
.end field

.field private FH:Ljava/lang/CharSequence;
    .annotation runtime Labcd/ru;
        field = -0x219b4580991c3f30L
    .end annotation
.end field

.field private Hw:I
    .annotation runtime Labcd/ru;
        field = -0x2ac7d545462f38e0L
    .end annotation
.end field

.field private VH:Landroid/graphics/drawable/Drawable;
    .annotation runtime Labcd/ru;
        field = -0x12c3dca72a7783b3L
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = -0x243833b6db837170L
    .end annotation
.end field

.field private gn:Landroid/view/SubMenu;
    .annotation runtime Labcd/ru;
        field = -0x16ecacbdf1f076c5L
    .end annotation
.end field

.field private tp:Z
    .annotation runtime Labcd/ru;
        field = 0x323a07baa3667830L
    .end annotation
.end field

.field private u7:Z
    .annotation runtime Labcd/ru;
        field = 0x337394fe316876bbL
    .end annotation
.end field

.field private v5:I
    .annotation runtime Labcd/ru;
        field = 0x255901233e77ea44L
    .end annotation
.end field

.field final we:Lcom/aide/ui/views/DialogMenu;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x5744c1f8842b9663L

    const-class v0, Lcom/aide/ui/views/DialogMenu$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/views/DialogMenu;I)V
    .registers 11

    const-wide v2, 0x207cb288e3f68d8L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, 0x207cb288e3f68d8L

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/DialogMenu$a;->we:Lcom/aide/ui/views/DialogMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/aide/ui/views/DialogMenu;->j6()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/DialogMenu$a;->FH:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Lcom/aide/ui/views/DialogMenu;IIII)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p5}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x8ebbee05eb18835L

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/DialogMenu$a;->we:Lcom/aide/ui/views/DialogMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/aide/ui/views/DialogMenu$a;->v5:I

    iput p3, p0, Lcom/aide/ui/views/DialogMenu$a;->Hw:I

    iput p4, p0, Lcom/aide/ui/views/DialogMenu$a;->Zo:I

    invoke-virtual {p1}, Lcom/aide/ui/views/DialogMenu;->j6()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/DialogMenu$a;->FH:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, 0x8ebbee05eb18835L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p5}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Lcom/aide/ui/views/DialogMenu;IIILjava/lang/CharSequence;)V
    .registers 16

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x2bbab8ac36fbb1edL    # -9.090172237002958E97

    const/4 v2, 0x0

    move-object v3, p1

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/DialogMenu$a;->we:Lcom/aide/ui/views/DialogMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/aide/ui/views/DialogMenu$a;->v5:I

    iput p3, p0, Lcom/aide/ui/views/DialogMenu$a;->Hw:I

    iput p4, p0, Lcom/aide/ui/views/DialogMenu$a;->Zo:I

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/DialogMenu$a;->FH:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v0, :cond_1

    const-wide v2, -0x2bbab8ac36fbb1edL    # -9.090172237002958E97

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p4}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public constructor <init>(Lcom/aide/ui/views/DialogMenu;Ljava/lang/CharSequence;)V
    .registers 10

    const-wide v2, -0x98567f1d71d4dfcL    # -5.23382679772118E262

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x98567f1d71d4dfcL    # -5.23382679772118E262

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/DialogMenu$a;->we:Lcom/aide/ui/views/DialogMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/DialogMenu$a;->FH:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 5

    const-wide v2, -0x2d8650bc95774a0L    # -7.537981937547385E294

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d8650bc95774a0L    # -7.537981937547385E294

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public expandActionView()Z
    .registers 5

    const-wide v2, 0x1685c5565913ec2bL    # 3.555234519336216E-200

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1685c5565913ec2bL    # 3.555234519336216E-200

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 5

    const-wide v2, -0x553c40ee74590f4bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x553c40ee74590f4bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 5

    const-wide v2, -0x19553c7d3a0f066fL    # -3.6390977115194526E186

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19553c7d3a0f066fL    # -3.6390977115194526E186

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getAlphabeticShortcut()C
    .registers 5

    const-wide v2, -0x2344095e28eff5d7L    # -5.2031710871152294E138

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2344095e28eff5d7L    # -5.2031710871152294E138

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getGroupId()I
    .registers 5

    const-wide v2, 0x10f0b667d0ba5778L    # 4.409255441108267E-227

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10f0b667d0ba5778L    # 4.409255441108267E-227

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/DialogMenu$a;->v5:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 5

    const-wide v2, 0x2c8e95fc76afd443L    # 4.582182648080493E-94

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c8e95fc76afd443L    # 4.582182648080493E-94

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/DialogMenu$a;->VH:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 5

    const-wide v2, -0x23294e64476870e0L    # -1.689059309927166E139

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x23294e64476870e0L    # -1.689059309927166E139

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getItemId()I
    .registers 5

    const-wide v2, -0x1efaa7b53eb92788L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1efaa7b53eb92788L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/DialogMenu$a;->Hw:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 5

    const-wide v2, 0x31c7f712ec0e2837L    # 6.944657561731377E-69

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x31c7f712ec0e2837L    # 6.944657561731377E-69

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getNumericShortcut()C
    .registers 5

    const-wide v2, 0x15c8dc69afc48c85L    # 9.911772423146714E-204

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x15c8dc69afc48c85L    # 9.911772423146714E-204

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getOrder()I
    .registers 5

    const-wide v2, -0x248edd55abbf7560L    # -3.04069351722148E132

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x248edd55abbf7560L    # -3.04069351722148E132

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/views/DialogMenu$a;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 5

    const-wide v2, -0x373453cb4c3c695fL    # -4.821260681023701E42

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x373453cb4c3c695fL    # -4.821260681023701E42

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/DialogMenu$a;->gn:Landroid/view/SubMenu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 5

    const-wide v2, -0x216057e18ed0b5d4L    # -6.3247553682804684E147

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x216057e18ed0b5d4L    # -6.3247553682804684E147

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/DialogMenu$a;->FH:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 5

    const-wide v2, -0x38ae5c8014a41577L    # -3.663408567088949E35

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x38ae5c8014a41577L    # -3.663408567088949E35

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, ""

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public hasSubMenu()Z
    .registers 5

    const-wide v2, -0x2119d63ebee00fefL    # -1.416962890707599E149

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2119d63ebee00fefL    # -1.416962890707599E149

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/DialogMenu$a;->gn:Landroid/view/SubMenu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public isActionViewExpanded()Z
    .registers 5

    const-wide v2, -0x3788a94118b608b4L    # -1.2706878838910429E41

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3788a94118b608b4L    # -1.2706878838910429E41

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public isCheckable()Z
    .registers 5

    const-wide v2, 0x11763eb93ab1075cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x11763eb93ab1075cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public isChecked()Z
    .registers 5

    const-wide v2, 0x116f4c709638bb17L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x116f4c709638bb17L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public isEnabled()Z
    .registers 5

    const-wide v2, 0x1427cbfcc11c4065L    # 1.413748256729521E-211

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1427cbfcc11c4065L    # 1.413748256729521E-211

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/DialogMenu$a;->u7:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public isVisible()Z
    .registers 5

    const-wide v2, 0x12cadf5f23ab8554L    # 3.806290741332037E-218

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12cadf5f23ab8554L    # 3.806290741332037E-218

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/views/DialogMenu$a;->tp:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/view/SubMenu;)V
    .registers 6

    const-wide v2, -0xf83a2d1113d5b40L    # -7.045699057758696E233

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf83a2d1113d5b40L    # -7.045699057758696E233

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/DialogMenu$a;->gn:Landroid/view/SubMenu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, 0x4cd7d770a0b8b26fL    # 1.5324765406853163E62

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4cd7d770a0b8b26fL    # 1.5324765406853163E62

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0xd728a08ecaec3b0L    # -6.286241549481849E243

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd728a08ecaec3b0L    # -6.286241549481849E243

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0x1c3c618853737e0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c3c618853737e0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 8

    const-wide v4, 0xb65808badf9400L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, 0xb65808badf9400L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0x12339954c71c950fL    # -8.02049620478927E220

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x12339954c71c950fL    # -8.02049620478927E220

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0x157bdfccb230268cL    # -1.262001429121825E205

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x157bdfccb230268cL    # -1.262001429121825E205

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, 0x18b2a7dfab63ea38L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x18b2a7dfab63ea38L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/views/DialogMenu$a;->u7:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0x3ba99ce3a221d4cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ba99ce3a221d4cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/ui/views/DialogMenu$a;->EQ:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0x57183af68d1d72fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x57183af68d1d72fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/views/DialogMenu$a;->VH:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0xdff845e420540a0L    # -1.3738557508736016E241

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xdff845e420540a0L    # -1.3738557508736016E241

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 8

    const-wide v4, -0x225317fbb9908214L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    const-wide v2, -0x225317fbb9908214L

    invoke-static {v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0x302db0d0dc94b320L    # -3.312615011837104E76

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x302db0d0dc94b320L    # -3.312615011837104E76

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, 0x35f6238af6ed7f7L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x35f6238af6ed7f7L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 10

    const-wide v2, 0x1e22540a3d0cc83cL    # 1.591380760147724E-163

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p2}, Ljava/lang/Character;-><init>(C)V

    const-wide v4, 0x1e22540a3d0cc83cL    # 1.591380760147724E-163

    invoke-static {v4, v5, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, p1}, Ljava/lang/Character;-><init>(C)V

    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, p2}, Ljava/lang/Character;-><init>(C)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public setShowAsAction(I)V
    .registers 6

    const-wide v2, -0x14168267773b1910L    # -6.704203308757514E211

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14168267773b1910L    # -6.704203308757514E211

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0x16c579ad48b3858fL    # -7.930994166062623E198

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16c579ad48b3858fL    # -7.930994166062623E198

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0x63ff36d55bc2ebbL    # -2.844965731576723E278

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x63ff36d55bc2ebbL    # -2.844965731576723E278

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/DialogMenu$a;->we:Lcom/aide/ui/views/DialogMenu;

    invoke-virtual {v0}, Lcom/aide/ui/views/DialogMenu;->j6()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/DialogMenu$a;->FH:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0xd5f864b269a26d1L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd5f864b269a26d1L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/views/DialogMenu$a;->FH:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, -0xb8245781cee3ecL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb8245781cee3ecL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 6

    const-wide v2, 0xba4c198eca19ccdL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/DialogMenu$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xba4c198eca19ccdL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/views/DialogMenu$a;->tp:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/DialogMenu$a;->DW:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
