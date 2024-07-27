.class Lcom/aide/ui/preferences/KeyBindingsView$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/preferences/KeyBindingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
.field public FH:Labcd/Wl;
    .annotation runtime Labcd/ru;
        field = -0x2db42d79ea5d59edL
    .end annotation
.end field

.field public Hw:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x9eeb402584822f7L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aide/common/u;",
            ">;"
        }
    .end annotation
.end field

.field final VH:Lcom/aide/ui/preferences/KeyBindingsView;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public Zo:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2a020529d0702044L
    .end annotation
.end field

.field public v5:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x1e5c3b57fa2be6a3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x32ae18fa89ed9833L    # 1.428967713149072E-64

    const-class v0, Lcom/aide/ui/preferences/KeyBindingsView$b;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/aide/ui/preferences/KeyBindingsView;Labcd/Wl;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x6c718a2f6ae6c560L
    .end annotation

    const-wide v2, 0x73f434530dea109L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/KeyBindingsView$b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x73f434530dea109L

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/preferences/KeyBindingsView$b;->VH:Lcom/aide/ui/preferences/KeyBindingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/aide/ui/preferences/KeyBindingsView$b;->FH:Labcd/Wl;

    invoke-interface {p2}, Labcd/Wl;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/preferences/KeyBindingsView$b;->v5:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->j3()Labcd/Bk;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Bk;->j6(Labcd/Wl;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/preferences/KeyBindingsView$b;->Hw:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/aide/ui/preferences/KeyBindingsView$b;->Zo:Ljava/lang/String;

    iget-object v0, p0, Lcom/aide/ui/preferences/KeyBindingsView$b;->Hw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/common/u;

    iget-object v5, p0, Lcom/aide/ui/preferences/KeyBindingsView$b;->Zo:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/aide/ui/preferences/KeyBindingsView$b;->Zo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/aide/ui/preferences/KeyBindingsView$b;->Zo:Ljava/lang/String;

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/aide/ui/preferences/KeyBindingsView$b;->Zo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/aide/common/u;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/preferences/KeyBindingsView$b;->Zo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/preferences/KeyBindingsView$b;->DW:Z

    if-eqz v0, :cond_2

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    return-void
.end method
