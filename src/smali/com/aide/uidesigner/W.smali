.class final Lcom/aide/uidesigner/W;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/ka;->DW(Landroid/app/Activity;Lcom/aide/uidesigner/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
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
.field final FH:Lcom/aide/uidesigner/s;

.field final Hw:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/uidesigner/W;

    const-wide v2, 0x1c796187b3007d70L    # 1.6419155400031285E-171

    const-wide v4, -0x304145020d534e18L    # -1.3899771695866503E76

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/s;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/uidesigner/W;->FH:Lcom/aide/uidesigner/s;

    iput-object p2, p0, Lcom/aide/uidesigner/W;->Hw:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/W;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x2005f502fe097400L
    .end annotation

    const-wide v8, 0x5b39c65de66ddb90L    # 2.858608070253255E131

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/W;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5b39c65de66ddb90L    # 2.858608070253255E131

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/W;->FH:Lcom/aide/uidesigner/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aide/uidesigner/s;->setStyle(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5176\u4ed6..."

    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/uidesigner/W;->Hw:Landroid/app/Activity;

    iget-object v1, p0, Lcom/aide/uidesigner/W;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v1}, Lcom/aide/uidesigner/s;->getStyle()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/aide/uidesigner/U;

    invoke-direct {v5, p0}, Lcom/aide/uidesigner/U;-><init>(Lcom/aide/uidesigner/W;)V

    new-instance v6, Lcom/aide/uidesigner/V;

    invoke-direct {v6, p0}, Lcom/aide/uidesigner/V;-><init>(Lcom/aide/uidesigner/W;)V

    const-string v1, "Style"

    const/4 v2, 0x0

    const-string v3, "None"

    invoke-static/range {v0 .. v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/aide/uidesigner/W;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v0, p1}, Lcom/aide/uidesigner/s;->setStyle(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/W;->DW:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    const-string v0, "other..."

    goto :goto_0
.end method
