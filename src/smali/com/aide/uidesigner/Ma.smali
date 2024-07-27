.class Lcom/aide/uidesigner/Ma;
.super Lcom/aide/common/n;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/Pa;->aM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static gn:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static u7:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field final tp:Lcom/aide/uidesigner/Pa;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/uidesigner/Ma;

    const-wide v2, -0x14e43586bd4fe1d1L    # -8.922361944275119E207

    const-wide v4, 0x15e655c8185cc8d0L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/Pa;Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/aide/uidesigner/Ma;->tp:Lcom/aide/uidesigner/Pa;

    invoke-direct {p0, p2, p3}, Lcom/aide/common/n;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2f3a0821c2bdd319L
    .end annotation

    const-wide v2, 0x2c86f0f6629a9818L    # 3.4369136746327353E-94

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/Ma;->gn:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c86f0f6629a9818L    # 3.4369136746327353E-94

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/Ma;->tp:Lcom/aide/uidesigner/Pa;

    invoke-static {v0}, Lcom/aide/uidesigner/Pa;->j6(Lcom/aide/uidesigner/Pa;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/Ma;->tp:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->tp()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/Ma;->tp:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v0}, Lcom/aide/uidesigner/Pa;->we()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/Ma;->u7:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method
