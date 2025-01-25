.class Lcom/aide/ui/htmluidesigner/g;
.super Landroid/view/animation/TranslateAnimation;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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


# instance fields
.field final FH:Landroid/view/View;

.field final Hw:Lcom/aide/ui/htmluidesigner/WebDesignActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x308f47b38f2dc5f5L  # -4.726645632267079E74

    const-wide v2, -0x33fe9568a4a055bcL

    const-class v4, Lcom/aide/ui/htmluidesigner/g;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;FFFFLandroid/view/View;)V
    .registers 7

    iput-object p1, p0, Lcom/aide/ui/htmluidesigner/g;->Hw:Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    iput-object p6, p0, Lcom/aide/ui/htmluidesigner/g;->FH:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x19a90c1c535307acL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/g;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    const-wide v1, 0xadb1b3ad3b7ef40L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/view/animation/TranslateAnimation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/g;->FH:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/g;->DW:Z

    if-eqz v1, :cond_2f

    const-wide v2, 0xadb1b3ad3b7ef40L

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v0
.end method
