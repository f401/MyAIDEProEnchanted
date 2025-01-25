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
    .registers 5

    const-wide v0, -0x14e43586bd4fe1d1L  # -8.922361944275119E207

    const-wide v2, 0x15e655c8185cc8d0L

    const-class v4, Lcom/aide/uidesigner/Ma;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x2c86f0f6629a9818L  # 3.4369136746327353E-94

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/Ma;->gn:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/Ma;->tp:Lcom/aide/uidesigner/Pa;

    invoke-static {v2}, Lcom/aide/uidesigner/Pa;->j6(Lcom/aide/uidesigner/Pa;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/aide/uidesigner/Ma;->tp:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Pa;->tp()Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/aide/uidesigner/Ma;->tp:Lcom/aide/uidesigner/Pa;

    invoke-virtual {v2}, Lcom/aide/uidesigner/Pa;->we()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/Ma;->u7:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method
