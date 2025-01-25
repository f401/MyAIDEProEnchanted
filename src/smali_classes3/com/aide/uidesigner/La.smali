.class Lcom/aide/uidesigner/La;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/Ka$b;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
.field final FH:Ljava/lang/String;

.field final Hw:Lcom/aide/uidesigner/Ka$b;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xfe3dc1350ce96efL  # -1.0922092965528532E232

    const-wide v2, -0x8c4442042276ac8L

    const-class v4, Lcom/aide/uidesigner/La;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/Ka$b;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/La;->Hw:Lcom/aide/uidesigner/Ka$b;

    iput-object p2, p0, Lcom/aide/uidesigner/La;->FH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x1487b2ddb007d2dL
    .end annotation

    const-wide v0, 0x3fb56d6f45987dc8L  # 0.08370109032738704

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/La;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/La;->Hw:Lcom/aide/uidesigner/Ka$b;

    invoke-static {v2}, Lcom/aide/uidesigner/Ka$b;->j6(Lcom/aide/uidesigner/Ka$b;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    iget-object v3, p0, Lcom/aide/uidesigner/La;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/La;->DW:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method
