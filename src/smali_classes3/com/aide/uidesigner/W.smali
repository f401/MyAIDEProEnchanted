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
        "Lcom/aide/common/ab<",
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
    .registers 5

    const-wide v0, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    const-wide v2, -0x304145020d534e18L  # -1.3899771695866503E76

    const-class v4, Lcom/aide/uidesigner/W;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x5b39c65de66ddb90L  # 2.858608070253255E131

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/W;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const-string v2, "none"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/aide/uidesigner/W;->FH:Lcom/aide/uidesigner/s;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/aide/uidesigner/s;->setStyle(Ljava/lang/String;)V

    :cond_1a
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_4c

    if-eqz v2, :cond_23

    const-string v2, "其他..."

    goto :goto_25

    .line 99
    :cond_23
    const-string v2, "other..."

    .line 0
    :goto_25
    :try_start_25
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget-object v3, p0, Lcom/aide/uidesigner/W;->Hw:Landroid/app/Activity;

    iget-object v2, p0, Lcom/aide/uidesigner/W;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v2}, Lcom/aide/uidesigner/s;->getStyle()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/aide/uidesigner/U;

    invoke-direct {v8, p0}, Lcom/aide/uidesigner/U;-><init>(Lcom/aide/uidesigner/W;)V

    new-instance v9, Lcom/aide/uidesigner/V;

    invoke-direct {v9, p0}, Lcom/aide/uidesigner/V;-><init>(Lcom/aide/uidesigner/W;)V

    const-string v4, "Style"

    const/4 v5, 0x0

    const-string v6, "None"

    invoke-static/range {v3 .. v9}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V

    goto :goto_4b

    :cond_46
    iget-object v2, p0, Lcom/aide/uidesigner/W;->FH:Lcom/aide/uidesigner/s;

    invoke-virtual {v2, p1}, Lcom/aide/uidesigner/s;->setStyle(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_25 .. :try_end_4b} :catchall_4c

    :goto_4b
    return-void

    .line 99
    :catchall_4c
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/W;->DW:Z

    if-eqz v3, :cond_54

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_54
    throw v2
.end method
