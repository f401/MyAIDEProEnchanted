.class Lcom/aide/ui/views/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/KeyStrokeDetector$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/CodeEditText$c;
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
.field final FH:Lcom/aide/ui/views/CodeEditText$c;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/ui/views/d;

    const-wide v2, 0x20bc34faa8da3f57L    # 5.385652283143974E-151

    const-wide v4, 0x22df4ebbd7f664cL

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/views/CodeEditText$c;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private DW(Lcom/aide/common/u;)Labcd/Wl;
    .registers 8
    .annotation runtime Labcd/su;
        method = -0x28870324fdd72c0L
    .end annotation

    const-wide v4, -0x1684b782b26f6a9L    # -6.350080822088511E301

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/views/d;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1684b782b26f6a9L    # -6.350080822088511E301

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v0, v0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getCustomEditorCommands()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Wl;

    iget-object v1, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v1, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1, v0}, Lcom/aide/ui/views/CodeEditText;->j6(Labcd/Wl;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/common/u;

    invoke-virtual {v1, p1}, Lcom/aide/common/u;->j6(Lcom/aide/common/u;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v0, v0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getBasicEditorCommands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Wl;

    iget-object v1, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v1, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1, v0}, Lcom/aide/ui/views/CodeEditText;->j6(Labcd/Wl;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aide/common/u;

    invoke-virtual {v1, p1}, Lcom/aide/common/u;->j6(Lcom/aide/common/u;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/d;->DW:Z

    if-eqz v1, :cond_7

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v0
.end method


# virtual methods
.method public j6(Lcom/aide/common/u;)Z
    .registers 8
    .annotation runtime Labcd/su;
        method = -0xbfae71719f113c8L
    .end annotation

    const-wide v4, 0x5a604839d9b76b3bL    # 2.2043445297985014E127

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/views/d;->j6:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x5a604839d9b76b3bL    # 2.2043445297985014E127

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/aide/common/u;->DW()I

    move-result v1

    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v1, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v1}, Lcom/aide/ui/views/CodeEditText;->Mr()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/aide/ui/views/d;->DW(Lcom/aide/common/u;)Labcd/Wl;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Labcd/Wl;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Labcd/Wl;->run()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/views/d;->DW:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    :try_start_1
    invoke-virtual {p1}, Lcom/aide/common/u;->FH()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v1, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {p1}, Lcom/aide/common/u;->j6()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/CodeEditText;->j6(C)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/aide/common/u;->DW()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v1, v1, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/aide/ui/views/CodeEditText;->j6(C)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v0, v0, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v0, p1}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/common/u;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method
