.class final Lcom/aide/uidesigner/ha;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/ka;->u7(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V
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
        "Ljava/lang/Integer;",
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
.field final FH:Ljava/util/List;

.field final Hw:Lcom/aide/uidesigner/s;

.field final VH:Ljava/util/ArrayList;

.field final Zo:Landroid/app/Activity;

.field final v5:Lcom/aide/uidesigner/a;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/uidesigner/ha;

    const-wide v2, 0x1c796187b3007d70L    # 1.6419155400031285E-171

    const-wide v4, 0x1dd259b321f8af39L    # 4.979063602982139E-165

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 6

    iput-object p1, p0, Lcom/aide/uidesigner/ha;->FH:Ljava/util/List;

    iput-object p2, p0, Lcom/aide/uidesigner/ha;->Hw:Lcom/aide/uidesigner/s;

    iput-object p3, p0, Lcom/aide/uidesigner/ha;->v5:Lcom/aide/uidesigner/a;

    iput-object p4, p0, Lcom/aide/uidesigner/ha;->Zo:Landroid/app/Activity;

    iput-object p5, p0, Lcom/aide/uidesigner/ha;->VH:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/Integer;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x50a544a525b574f8L
    .end annotation

    const-wide v4, 0x2e576f7204fdccafL    # 1.8849176417852846E-85

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/ha;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2e576f7204fdccafL    # 1.8849176417852846E-85

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/uidesigner/ha;->FH:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/aide/uidesigner/ha;->Hw:Lcom/aide/uidesigner/s;

    iget-object v1, p0, Lcom/aide/uidesigner/ha;->v5:Lcom/aide/uidesigner/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "\u5176\u4ed6..."

    :goto_1
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/aide/uidesigner/ha;->Zo:Landroid/app/Activity;

    iget-object v1, p0, Lcom/aide/uidesigner/ha;->Hw:Lcom/aide/uidesigner/s;

    iget-object v2, p0, Lcom/aide/uidesigner/ha;->v5:Lcom/aide/uidesigner/a;

    const-string v3, "@drawable/"

    invoke-static {v0, v1, v2, v3}, Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/ha;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    .line 4294967295
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "\u6dfb\u52a0..."

    :goto_2
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aide/uidesigner/ha;->Zo:Landroid/app/Activity;

    iget-object v1, p0, Lcom/aide/uidesigner/ha;->Hw:Lcom/aide/uidesigner/s;

    iget-object v2, p0, Lcom/aide/uidesigner/ha;->v5:Lcom/aide/uidesigner/a;

    invoke-static {v0, v1, v2}, Lcom/aide/uidesigner/ka;->Hw(Landroid/app/Activity;Lcom/aide/uidesigner/s;Lcom/aide/uidesigner/a;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/aide/uidesigner/ha;->Hw:Lcom/aide/uidesigner/s;

    iget-object v2, p0, Lcom/aide/uidesigner/ha;->v5:Lcom/aide/uidesigner/a;

    iget-object v0, p0, Lcom/aide/uidesigner/ha;->VH:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 99
    :cond_5
    const-string v1, "other..."

    goto :goto_1

    :cond_6
    const-string v1, "add..."

    goto :goto_2
.end method

.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/ha;->j6(Ljava/lang/Integer;)V

    return-void
.end method
