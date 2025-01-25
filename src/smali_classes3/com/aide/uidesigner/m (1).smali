.class Lcom/aide/uidesigner/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/XmlLayoutDesignActivity;->onCreate(Landroid/os/Bundle;)V
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

.field final Hw:Landroid/view/animation/TranslateAnimation;

.field final v5:Lcom/aide/uidesigner/XmlLayoutDesignActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x26532fe3199dbf1fL  # -9.523483305966733E123

    const-wide v2, 0x145ee7be9c3d9445L

    const-class v4, Lcom/aide/uidesigner/m;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/uidesigner/m;->v5:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    iput-object p2, p0, Lcom/aide/uidesigner/m;->FH:Landroid/view/View;

    iput-object p3, p0, Lcom/aide/uidesigner/m;->Hw:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x11504d0fb9a79394L
    .end annotation

    const-wide v0, -0x1f68eaa1d6f35e33L  # -1.9807917158915907E157

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/m;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/m;->v5:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-virtual {v2}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6()V

    iget-object v2, p0, Lcom/aide/uidesigner/m;->FH:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/aide/uidesigner/m;->FH:Landroid/view/View;

    iget-object v3, p0, Lcom/aide/uidesigner/m;->Hw:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/m;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method
