.class public Lcom/aide/uidesigner/ProxyViewPaddings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static $ON_ENTER_TOGGLE:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static $ON_THROW_TOGGLE:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private padding:I
    .annotation runtime Labcd/ru;
        field = 0x11d1733c61d84fc0L
    .end annotation
.end field

.field private paddingBottom:I
    .annotation runtime Labcd/ru;
        field = 0x22b91a025427187dL
    .end annotation
.end field

.field private paddingEnd:I
    .annotation runtime Labcd/ru;
        field = -0xd1288ac870d414bL
    .end annotation
.end field

.field private paddingLeft:I
    .annotation runtime Labcd/ru;
        field = -0x2b8f95f75434d491L
    .end annotation
.end field

.field private paddingRight:I
    .annotation runtime Labcd/ru;
        field = -0x2aefded241e75024L
    .end annotation
.end field

.field private paddingStart:I
    .annotation runtime Labcd/ru;
        field = -0x29bcb5461acbfdf8L
    .end annotation
.end field

.field private paddingTop:I
    .annotation runtime Labcd/ru;
        field = -0xd15a12908747c65L
    .end annotation
.end field

.field private view:Landroid/view/View;
    .annotation runtime Labcd/ru;
        field = 0x81a0ba962880f20L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/uidesigner/ProxyViewPaddings;

    const-wide v1, 0x3386c776c5b9844L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x15663b5416aa22e4L

    :try_start_6
    sget-boolean v3, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v3, p1

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->view:Landroid/view/View;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method private updatePadding()V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x1a76bd768bd916a4L
    .end annotation

    const-wide v0, 0x38802727d849edbcL  # 1.5190162810492082E-36

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v2, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->padding:I

    if-lez v2, :cond_16

    iget-object v3, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->view:Landroid/view/View;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4e

    :cond_16
    iget v2, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingStart:I

    if-gtz v2, :cond_3b

    iget v2, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingEnd:I

    if-lez v2, :cond_1f

    goto :goto_3b

    :cond_1f
    iget v2, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingLeft:I

    if-gtz v2, :cond_2f

    iget v3, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingRight:I

    if-gtz v3, :cond_2f

    iget v3, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingTop:I

    if-gtz v3, :cond_2f

    iget v3, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingBottom:I

    if-lez v3, :cond_4e

    :cond_2f
    iget-object v3, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->view:Landroid/view/View;

    iget v4, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingTop:I

    iget v5, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingRight:I

    iget v6, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingBottom:I

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4e

    :cond_3b
    :goto_3b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_4e

    iget-object v2, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->view:Landroid/view/View;

    iget v3, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingStart:I

    iget v4, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingTop:I

    iget v5, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingEnd:I

    iget v6, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPaddingRelative(IIII)V
    :try_end_4e
    .catchall {:try_start_5 .. :try_end_4e} :catchall_4f

    :cond_4e
    :goto_4e
    return-void

    :catchall_4f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_57

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_57
    throw v2
.end method


# virtual methods
.method public setPadding(I)V
    .registers 6

    const-wide v0, -0x8cb55dc94ff0220L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->padding:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setPaddingBottom(I)V
    .registers 6

    const-wide v0, 0x14bb7a02f9ed56abL  # 8.357687612232634E-209

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingBottom:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setPaddingEnd(I)V
    .registers 6

    const-wide v0, 0x23ed4b5b9e350ef9L  # 1.259493928574128E-135

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingEnd:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setPaddingLeft(I)V
    .registers 6

    const-wide v0, -0x2904450798959fafL  # -1.0420146318216276E111

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingLeft:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setPaddingRight(I)V
    .registers 6

    const-wide v0, 0x432bcbbf66cb678L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingRight:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setPaddingStart(I)V
    .registers 6

    const-wide v0, -0xd8f25e520c586dcL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingStart:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public setPaddingTop(I)V
    .registers 6

    const-wide v0, -0xc5cd0b142ea8a5dL

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingTop:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1f

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1f
    throw v2
.end method
