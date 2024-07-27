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
    .registers 4

    const-wide v2, 0x3386c776c5b9844L

    const-class v0, Lcom/aide/uidesigner/ProxyViewPaddings;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 10

    const-wide v6, -0x15663b5416aa22e4L

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x15663b5416aa22e4L

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    iput-object v2, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->view:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v6, v7, v5, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v2
.end method

.method private updatePadding()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x1a76bd768bd916a4L
    .end annotation

    const-wide v6, 0x38802727d849edbcL    # 1.5190162810492082E-36

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x38802727d849edbcL    # 1.5190162810492082E-36

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->padding:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->view:Landroid/view/View;

    iget v1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->padding:I

    iget v2, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->padding:I

    iget v3, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->padding:I

    iget v4, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->padding:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingStart:I

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingEnd:I

    if-lez v0, :cond_5

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->view:Landroid/view/View;

    iget v1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingStart:I

    iget v2, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingTop:I

    iget v3, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingEnd:I

    iget v4, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_1
    iget v0, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingLeft:I

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingRight:I

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingTop:I

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingBottom:I

    if-lez v0, :cond_1

    :cond_6
    iget-object v0, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->view:Landroid/view/View;

    iget v1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingLeft:I

    iget v2, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingTop:I

    iget v3, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingRight:I

    iget v4, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public setPadding(I)V
    .registers 6

    const-wide v2, -0x8cb55dc94ff0220L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x8cb55dc94ff0220L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->padding:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setPaddingBottom(I)V
    .registers 6

    const-wide v2, 0x14bb7a02f9ed56abL    # 8.357687612232634E-209

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14bb7a02f9ed56abL    # 8.357687612232634E-209

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingBottom:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setPaddingEnd(I)V
    .registers 6

    const-wide v2, 0x23ed4b5b9e350ef9L    # 1.259493928574128E-135

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x23ed4b5b9e350ef9L    # 1.259493928574128E-135

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingEnd:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setPaddingLeft(I)V
    .registers 6

    const-wide v2, -0x2904450798959fafL    # -1.0420146318216276E111

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2904450798959fafL    # -1.0420146318216276E111

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingLeft:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setPaddingRight(I)V
    .registers 6

    const-wide v2, 0x432bcbbf66cb678L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x432bcbbf66cb678L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingRight:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setPaddingStart(I)V
    .registers 6

    const-wide v2, -0xd8f25e520c586dcL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xd8f25e520c586dcL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingStart:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public setPaddingTop(I)V
    .registers 6

    const-wide v2, -0xc5cd0b142ea8a5dL

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc5cd0b142ea8a5dL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iput p1, p0, Lcom/aide/uidesigner/ProxyViewPaddings;->paddingTop:I

    invoke-direct {p0}, Lcom/aide/uidesigner/ProxyViewPaddings;->updatePadding()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyViewPaddings;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
