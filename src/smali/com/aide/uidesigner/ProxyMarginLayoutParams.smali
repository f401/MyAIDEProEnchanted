.class public Lcom/aide/uidesigner/ProxyMarginLayoutParams;
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
.field private params:Landroid/view/ViewGroup$MarginLayoutParams;
    .annotation runtime Labcd/ru;
        field = 0x11db60e940661a80L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x3c788634d78dab61L    # -2.11450813703951328E17

    const-class v0, Lcom/aide/uidesigner/ProxyMarginLayoutParams;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 10

    const-wide v6, 0x1cfc319a79f90f78L

    const/4 v5, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x1cfc319a79f90f78L

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    iput-object v2, p0, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->params:Landroid/view/ViewGroup$MarginLayoutParams;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v3, :cond_1

    invoke-static {v2, v6, v7, v5, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v2
.end method


# virtual methods
.method public setMargin(I)V
    .registers 6

    const-wide v2, -0xe7848452171e0d8L    # -7.722164725362548E238

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->$ON_ENTER_TOGGLE:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe7848452171e0d8L    # -7.722164725362548E238

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->params:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ProxyMarginLayoutParams;->$ON_THROW_TOGGLE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
