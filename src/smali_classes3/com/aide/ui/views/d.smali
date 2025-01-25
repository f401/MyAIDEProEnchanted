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
    .registers 5

    const-wide v0, 0x20bc34faa8da3f57L  # 5.385652283143974E-151

    const-wide v2, 0x22df4ebbd7f664cL

    const-class v4, Lcom/aide/ui/views/d;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, -0x1684b782b26f6a9L  # -6.350080822088511E301

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v2, v2, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getCustomEditorCommands()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_47

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Wl;

    iget-object v4, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v4, v4, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v4, v3}, Lcom/aide/ui/views/CodeEditText;->j6(Labcd/Wl;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/common/u;

    invoke-virtual {v5, p1}, Lcom/aide/common/u;->j6(Lcom/aide/common/u;)Z

    move-result v5

    if-eqz v5, :cond_34

    return-object v3

    :cond_47
    iget-object v2, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v2, v2, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->getBasicEditorCommands()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/Wl;

    iget-object v4, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v4, v4, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v4, v3}, Lcom/aide/ui/views/CodeEditText;->j6(Labcd/Wl;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_53

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/common/u;

    invoke-virtual {v5, p1}, Lcom/aide/common/u;->j6(Lcom/aide/common/u;)Z

    move-result v5
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_82

    if-eqz v5, :cond_6d

    return-object v3

    :cond_80
    const/4 p1, 0x0

    return-object p1

    :catchall_82
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/d;->DW:Z

    if-eqz v3, :cond_8a

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_8a
    goto :goto_8c

    :goto_8b
    throw v2

    :goto_8c
    goto :goto_8b
.end method


# virtual methods
.method public j6(Lcom/aide/common/u;)Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0xbfae71719f113c8L
    .end annotation

    const-wide v0, 0x5a604839d9b76b3bL  # 2.2043445297985014E127

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/views/d;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1}, Lcom/aide/common/u;->DW()I

    move-result v2

    const/16 v3, 0x60

    const/4 v4, 0x1

    if-eq v2, v3, :cond_57

    const/16 v3, 0x17

    if-ne v2, v3, :cond_1a

    goto :goto_57

    :cond_1a
    invoke-direct {p0, p1}, Lcom/aide/ui/views/d;->DW(Lcom/aide/common/u;)Labcd/Wl;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-interface {v2}, Labcd/Wl;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Labcd/Wl;->run()Z

    :cond_29
    return v4

    :cond_2a
    invoke-virtual {p1}, Lcom/aide/common/u;->FH()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v2, v2, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {p1}, Lcom/aide/common/u;->j6()C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/CodeEditText;->j6(C)V

    return v4

    :cond_3c
    invoke-virtual {p1}, Lcom/aide/common/u;->DW()I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_4e

    iget-object v2, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v2, v2, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/CodeEditText;->j6(C)V

    return v4

    :cond_4e
    iget-object v2, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v2, v2, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2, p1}, Lcom/aide/ui/views/CodeEditText;->j6(Lcom/aide/common/u;)Z

    move-result p1

    return p1

    :cond_57
    :goto_57
    iget-object v2, p0, Lcom/aide/ui/views/d;->FH:Lcom/aide/ui/views/CodeEditText$c;

    iget-object v2, v2, Lcom/aide/ui/views/CodeEditText$c;->PH:Lcom/aide/ui/views/CodeEditText;

    invoke-virtual {v2}, Lcom/aide/ui/views/CodeEditText;->Mr()V
    :try_end_5e
    .catchall {:try_start_5 .. :try_end_5e} :catchall_5f

    return v4

    :catchall_5f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/views/d;->DW:Z

    if-eqz v3, :cond_67

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_67
    throw v2
.end method
